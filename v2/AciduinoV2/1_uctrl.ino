typedef enum {
#if defined(USE_CHANGER_ENCODER)
  ENCODER_DEC,
  ENCODER_INC,
#endif
  // the basic minimun ui buttons (9 total)
  SHIFT_BUTTON,
  PAGE_BUTTON_1,
  PAGE_BUTTON_2,
  GENERIC_BUTTON_1,
  GENERIC_BUTTON_2,
  NEXT_BUTTON,
  UP_BUTTON,
  DOWN_BUTTON, 
  PREVIOUS_BUTTON,
#if defined(USE_TRANSPORT_BUTTON)
  TRANSPORT_BUTTON_1,
#endif

#if defined(USE_PUSH_8) || defined(USE_PUSH_24) || defined(USE_PUSH_32) || defined(USE_TOUCH_32)
  // first extension 8 group
  SELECTOR_BUTTON_1,
  SELECTOR_BUTTON_2,
  SELECTOR_BUTTON_3,
  SELECTOR_BUTTON_4,
  SELECTOR_BUTTON_5,
  SELECTOR_BUTTON_6,
  SELECTOR_BUTTON_7,
  SELECTOR_BUTTON_8,
#endif

#if defined(USE_PUSH_24) || defined(USE_PUSH_32) || defined(USE_TOUCH_32)
  // second extension 8 group
  STEP_BUTTON_1,
  STEP_BUTTON_2,
  STEP_BUTTON_3,
  STEP_BUTTON_4,
  STEP_BUTTON_5,
  STEP_BUTTON_6,
  STEP_BUTTON_7,
  STEP_BUTTON_8,

  // third extension 8 group
  STEP_BUTTON_9,
  STEP_BUTTON_10,
  STEP_BUTTON_11,
  STEP_BUTTON_12,
  STEP_BUTTON_13,
  STEP_BUTTON_14,
  STEP_BUTTON_15,
  STEP_BUTTON_16,
#endif

} BUTTONS_INTERFACE_CONTROLS;

typedef enum {
#if defined(USE_BPM_LED)
  BPM_LED,
#endif

#if defined(USE_LED_8) || defined(USE_LED_24)
  // first extension 8 group leds
  SELECTOR_LED_1,
  SELECTOR_LED_2,
  SELECTOR_LED_3,
  SELECTOR_LED_4,
  SELECTOR_LED_5,
  SELECTOR_LED_6,
  SELECTOR_LED_7,
  SELECTOR_LED_8,
#endif

#if defined(USE_LED_24)
  // second extension 8 group
  STEP_LED_1,
  STEP_LED_2,
  STEP_LED_3,
  STEP_LED_4,
  STEP_LED_5,
  STEP_LED_6,
  STEP_LED_7,
  STEP_LED_8,

  // third extension 8 group
  STEP_LED_9,
  STEP_LED_10,
  STEP_LED_11,
  STEP_LED_12,
  STEP_LED_13,
  STEP_LED_14,
  STEP_LED_15,
  STEP_LED_16,
#endif

} LED_INTERFACE_CONTROLS;

#if defined (USE_POT_8) || defined (USE_POT_16) || defined (USE_POT_MICRO)
#define LEARN_ENABLED
#endif

// esp32 ble midi connection status
uint8_t _ble_midi_connected = 0;

void uCtrlSetup() {
  //
  // OLED setup
  //
  uCtrl.initOled(&u8g2);
#if defined(FLIP_DISPLAY)
  uCtrl.oled->flipDisplay(1);
#endif
  uCtrl.oled->print("booting", 4, 1);
  uCtrl.oled->print("please wait...", 5, 1);

  //
  // Storage setup
  //
  uCtrl.oled->print(">init storage...", 8, 1);
  uCtrl.initStorage();
  //uCtrl.initStorage(&STORAGE_SPI, 7);

  //
  // DIN Module
  //
  uCtrl.oled->print(">init din...", 8, 1);
#if defined(USE_PUSH_8) || defined(USE_PUSH_24) || defined(USE_PUSH_32)
  // going with shiftregister and SPI?
  uCtrl.initDin(&PUSH_SPI, PUSH_LATCH_PIN);
#else
  uCtrl.initDin();
#endif

#if defined(USE_CHANGER_ENCODER)
  // dec
  uCtrl.din->plug(NAV_ENCODER_DEC_PIN);
  // inc
  uCtrl.din->plug(NAV_ENCODER_INC_PIN);
#endif

  // shift button
  uCtrl.din->plug(NAV_SHIFT_PIN);

  // the default aciduino schema implements all the
  // basic navigation for full usage without any CI
  // only the usage of 32 buttons will disables
  // the direct microcontroler port connect to main interface
#if !defined(USE_PUSH_32) && !defined(USE_TOUCH_32)
  // follow the register order of BUTTONS_INTERFACE_CONTROLS enum
  // page button 1
  uCtrl.din->plug(NAV_FUNCTION1_PIN);
  // page button 2
  uCtrl.din->plug(NAV_FUNCTION2_PIN);
  // decrementer button
  uCtrl.din->plug(NAV_GENERAL1_PIN);
  // incrementer button
  uCtrl.din->plug(NAV_GENERAL2_PIN);
  // next
  uCtrl.din->plug(NAV_RIGHT_PIN);
  // up
  uCtrl.din->plug(NAV_UP_PIN);
  // down
  uCtrl.din->plug(NAV_DOWN_PIN);
  // previous
  uCtrl.din->plug(NAV_LEFT_PIN);
#if defined(USE_TRANSPORT_BUTTON)
  // transport
  uCtrl.din->plug(TRANSPORT_BUTTON_1_PIN);
#endif

#endif

// any shiftregister to plug?
#if defined(USE_PUSH_8)
  uCtrl.din->plugSR(1);
#elif defined(USE_PUSH_24)
  uCtrl.din->plugSR(3);
#elif defined(USE_PUSH_32)
  uCtrl.din->plugSR(4);
#endif

#if defined(USE_CHANGER_ENCODER)
  // encoders setup
  // in pair order always! and pairs starting with odd ids
  uCtrl.din->encoder(ENCODER_DEC, ENCODER_INC);
#endif

// little hack to make the shift protoboard work, ground our gnd button pin -2 related to button pin to avoid floating noises around...
#if defined(USE_TEENSY_PROTOBOARD_HACKS)
  pinMode(NAV_SHIFT_PIN-2, OUTPUT);
  digitalWrite(NAV_SHIFT_PIN-2, LOW);
#if defined(USE_TRANSPORT_BUTTON)
  // in case transport button
  pinMode(TRANSPORT_BUTTON_1_PIN-2, OUTPUT);
  digitalWrite(TRANSPORT_BUTTON_1_PIN-2, LOW);
#endif
#endif

  //
  // DOUT Module
  //
  uCtrl.oled->print(">init dout...", 8, 1);

#if defined(USE_LED_8) || defined(USE_LED_24)
  uCtrl.initDout(&LED_SPI, LED_LATCH_PIN);
#else
  uCtrl.initDout();
#endif

#if defined(USE_BPM_LED)
  // builtin led for BPM led
  uCtrl.dout->plug(USE_BPM_LED);
#endif

#if defined(USE_LED_8)
  uCtrl.dout->plugSR(1);
#elif defined(USE_LED_24)
  uCtrl.dout->plugSR(3);
#endif

  //
  // AIN Module
  //
  uCtrl.oled->print(">init ain...", 8, 1);
#if defined(USE_POT_8) || defined(USE_POT_16)

  uCtrl.initAin(POT_CTRL_PIN1, POT_CTRL_PIN2, POT_CTRL_PIN3);

#if defined(USE_CHANGER_POT)
  uCtrl.ain->plug(CHANGER_POT_PIN);
#endif
  uCtrl.ain->plugMux(POT_MUX_COMM1);
#if defined(USE_POT_16)
  uCtrl.ain->plugMux(POT_MUX_COMM2);
#endif

  // get a global entry point for our midi pot controllers
  uCtrl.ain->setCallback(midiControllerHandle);

// else > no POT on mux
#else

  uCtrl.initAin();

#if defined(USE_CHANGER_POT)
  uCtrl.ain->plug(CHANGER_POT_PIN);
#endif

#if defined(USE_POT_MICRO)

#if defined(POT_MICRO_1_PIN)
  uCtrl.ain->plug(POT_MICRO_1_PIN);
#endif
#if defined(POT_MICRO_2_PIN)
  uCtrl.ain->plug(POT_MICRO_2_PIN);
#endif
#if defined(POT_MICRO_3_PIN)
  uCtrl.ain->plug(POT_MICRO_3_PIN);
#endif
#if defined(POT_MICRO_4_PIN)
  uCtrl.ain->plug(POT_MICRO_4_PIN);
#endif
#if defined(POT_MICRO_5_PIN)
  uCtrl.ain->plug(POT_MICRO_5_PIN);
#endif
#if defined(POT_MICRO_6_PIN)
  uCtrl.ain->plug(POT_MICRO_6_PIN);
#endif
#if defined(POT_MICRO_7_PIN)
  uCtrl.ain->plug(POT_MICRO_7_PIN);
#endif
#if defined(POT_MICRO_8_PIN)
  uCtrl.ain->plug(POT_MICRO_8_PIN);
#endif


  // get a global entry point for our midi pot controllers
  uCtrl.ain->setCallback(midiControllerHandle);
#endif

#if defined(INVERT_POT_READ)
  // our aciduino v2 protoboard can only connect with vcc and gnd swaped, lets inform that to uctrl ain driver
  uCtrl.ain->invertRead(true);
#endif

#if defined(USE_TEENSY_PROTOBOARD_HACKS)
  // little hack to make the pot on aciduino protoboard work, ground our gnd pot pin 22 to avoid floating noises around...
  pinMode(22, OUTPUT);
  digitalWrite(22, LOW);
#endif
  // raise the average reads for pot for better stability
  uCtrl.ain->setAvgReads(8);

#endif // if defined(USE_POT_8) || defined(USE_POT_16) > else

  //
  // Capacitive Touch Module
  //
#if defined(USE_TOUCH_32)
  uCtrl.oled->print(">init ctouch...", 8, 1);
  uCtrl.initCapTouch(TOUCH_CTRL_PIN1, TOUCH_CTRL_PIN2, TOUCH_CTRL_PIN3, TOUCH_CTRL_PIN4);
  uCtrl.touch->setThreshold(TOUCH_TRESHOLD);
  uCtrl.touch->plug(TOUCH_MUX_COMM1);
  uCtrl.touch->plug(TOUCH_MUX_COMM2);
#endif

  //
  // MIDI Module
  //
  uCtrl.oled->print(">init midi...", 8, 1);
  uCtrl.initMidi();

  // ESP32 related
#if defined(CONFIG_TINYUSB_ENABLED) && (defined(ARDUINO_ARCH_ESP32) || defined(ESP32))
  // initing esp32nativeusbmidi
  espNativeUsbMidi.begin();
  // initing USB device
  USB.productName("aciduinov2");
  USB.begin();
#endif
#if defined(USE_BT_MIDI_ESP32) && defined(CONFIG_BT_ENABLED) && (defined(ARDUINO_ARCH_ESP32) || defined(ESP32))

  BLEMIDI2.setHandleConnected([]() {
    //uCtrl.dout->write(BPM_LED, HIGH, 0);
    _ble_midi_connected = 1;
  });
  
  BLEMIDI2.setHandleDisconnected([]() {
    //uCtrl.dout->write(BPM_LED, LOW, 0);
    _ble_midi_connected = 0;
  });
#endif

  // Plugin MIDI interfaces to handle
#if defined(USE_MIDI1)
  uCtrl.midi->plug(&MIDI1);
  #if defined(USE_SERIAL_MIDI_115200)
  // forces MidiInterface back to 115200
  Serial.begin(115200);
  #endif
#endif
#if defined(USE_MIDI2)
  uCtrl.midi->plug(&MIDI2);
#endif
#if defined(USE_MIDI3)
  uCtrl.midi->plug(&MIDI3);
#endif
#if defined(USE_MIDI4)
  uCtrl.midi->plug(&MIDI4);
#endif
  uCtrl.midi->setMidiInputCallback(midiInputHandler);
  // uCtrl realtime deals
  // process midi at 250 microseconds speed
  uCtrl.setOn250usCallback(midiHandleSync);
  // process midi input at 1ms speed
  uCtrl.setOn1msCallback(midiHandle);

  //
  // SdCard Module
  //
  //uCtrl.initSdCard(&SPI, 7);

  //
  // Page Module for UI
  //
  uCtrl.initPage(5);
  // syst | seqr | gene | ptrn | midi
  system_page_init();
  step_sequencer_page_init();
  generative_page_init();
  pattern_page_init();
  midi_page_init();
  // component UI interface setup
#if defined(USE_CHANGER_ENCODER)
  uCtrl.page->setNavComponentCtrl(SHIFT_BUTTON, UP_BUTTON, DOWN_BUTTON, PREVIOUS_BUTTON, NEXT_BUTTON, PAGE_BUTTON_1, PAGE_BUTTON_2, GENERIC_BUTTON_1, GENERIC_BUTTON_2, ENCODER_DEC, ENCODER_INC);
#else
  uCtrl.page->setNavComponentCtrl(SHIFT_BUTTON, UP_BUTTON, DOWN_BUTTON, PREVIOUS_BUTTON, NEXT_BUTTON, PAGE_BUTTON_1, PAGE_BUTTON_2, GENERIC_BUTTON_1, GENERIC_BUTTON_2);
#endif
#if defined(USE_CHANGER_POT)
  uCtrl.page->setNavPot(0); // id=0, first registred ain pin via plug() call
#endif
  // hook button callback setup
  // previous track
  uCtrl.page->setShiftCtrlAction(GENERIC_BUTTON_1, previousTrack);
  // next track
  uCtrl.page->setShiftCtrlAction(GENERIC_BUTTON_2, nextTrack);

  // transport play/stop and shifted rec on/off
#if defined(USE_TRANSPORT_BUTTON)
  uCtrl.page->setCtrlAction(TRANSPORT_BUTTON_1, playStop);
  uCtrl.page->setShiftCtrlAction(TRANSPORT_BUTTON_1, recToggle);
#elif defined(USE_PUSH_8) || defined(USE_PUSH_16) || defined(USE_PUSH_32)
  uCtrl.page->setCtrlAction(SELECTOR_BUTTON_8, playStop);
  uCtrl.page->setShiftCtrlAction(SELECTOR_BUTTON_8, recToggle);
#endif

  // bottom bar for f1 and f2 functions draw function
  uCtrl.page->setFunctionDrawCallback(functionDrawCallback);

  // init uCtrl modules and memory
  uCtrl.init();

  // get all leds off
  uCtrl.dout->writeAll(LOW);

  // default page to call at init
  uCtrl.page->setPage(0);
}
