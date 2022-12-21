
typedef enum {
  
#if defined(USE_CHANGER_ENCODER)
  ENCODER_DEC = 1,
  ENCODER_INC,
#else
  NONE_4_NOW, // forces 0 to get shift as 1
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

// globals
bool _playing = false;
uint8_t _selected_track = 0;

void uCtrlSetup() {
  // uCtrl initial setup
  // drivers and handlers
  
  //
  // OLED setup
  // Please check you oled model to correctly init him
  //
  uCtrl.initOled(&u8g2);
#if defined(USE_PROTOBOARD) || defined(ARDUINO_ARCH_AVR)
  uCtrl.oled->flipDisplay(1); 
#endif
  uCtrl.oled->print("booting", 4, 1);
  uCtrl.oled->print("please wait...", 5, 1); 

  //
  // DIN Module
  //
  uCtrl.oled->print(">init din...", 8, 1);  
#if defined(USE_PUSH_8) || defined(USE_PUSH_24) || defined(USE_PUSH_32)
  uCtrl.initDin(&SPI, PUSH_LATCH_PIN);
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

#if defined(USE_PROTOBOARD)
  // little hack to make the shift protoboard work, ground our gnd button pin 2 to avoid floating noises around...
  pinMode(2, OUTPUT);
  digitalWrite(2, LOW);
#endif

  //
  // DOUT Module
  //
  uCtrl.oled->print(">init dout...", 8, 1);
  
#if defined(USE_LED_8) || defined(USE_LED_24)
  uCtrl.initDout(&SPI, LED_LATCH_PIN);
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
#if defined(USE_POT_8) || defined (USE_POT_16)
  uCtrl.initAin(POT_CTRL_PIN1, POT_CTRL_PIN2, POT_CTRL_PIN3);
  uCtrl.ain->plug(POT_MUX_COMM1);
  #if defined (USE_POT_16)
  uCtrl.ain->plug(POT_MUX_COMM2);
  #endif
#elif defined(USE_CHANGER_POT)
  uCtrl.initAin();
  uCtrl.ain->plug(CHANGER_POT_PIN);
  #if defined(USE_PROTOBOARD)
    // our aciduino v2 protoboard can only connect with vcc and gnd swaped, lets inform that to uctrl ain driver
    uCtrl.ain->invertRead(true);
    // little hack to make the pot on aciduino protoboard work, ground our gnd pot pin 22 to avoid floating noises around...
    pinMode(22, OUTPUT);
    digitalWrite(22, LOW);
  #endif
#endif

  //
  // Capacitive Touch Module
  //
#if defined(USE_TOUCH_32)
  uCtrl.oled->print(">init ctouch...", 8, 1);
  uCtrl.initCapTouch(TOUCH_CTRL_PIN1, TOUCH_CTRL_PIN2, TOUCH_CTRL_PIN3, TOUCH_CTRL_PIN4);
  //uCtrl.touch->setThreshold(45);
  uCtrl.touch->setThreshold(41);
  //uCtrl.touch->setThreshold(38);
  uCtrl.touch->plug(TOUCH_MUX_COMM1);
  uCtrl.touch->plug(TOUCH_MUX_COMM2);
#endif

  //
  // SdCard Module
  //
  //uCtrl.initSdCard(&SPI, 7); 
  
  //
  // Page Module for UI
  //
  uCtrl.initPage();
  welcome_page_init();
  step_sequencer_page_init();
  generative_page_init();
  live_page_init();
  // component UI interface setup
#if defined(USE_CHANGER_ENCODER)
  uCtrl.page->setNavComponentCtrl(SHIFT_BUTTON, UP_BUTTON, DOWN_BUTTON, PREVIOUS_BUTTON, NEXT_BUTTON, PAGE_BUTTON_1, PAGE_BUTTON_2, GENERIC_BUTTON_1, GENERIC_BUTTON_2, ENCODER_DEC, ENCODER_INC);
#elif defined(USE_CHANGER_POT)
  uCtrl.page->setNavComponentCtrl(SHIFT_BUTTON, UP_BUTTON, DOWN_BUTTON, PREVIOUS_BUTTON, NEXT_BUTTON, PAGE_BUTTON_1, PAGE_BUTTON_2, GENERIC_BUTTON_1, GENERIC_BUTTON_2);
  uCtrl.page->setNavPot(1);
#endif
  // shift button callback setup
  // slave/master tempo set
  uCtrl.page->setShiftCtrlAction(PAGE_BUTTON_1, tempoSetup);
  // play/stop tempo
  uCtrl.page->setShiftCtrlAction(PAGE_BUTTON_2, playStop);
  // previous track
  uCtrl.page->setShiftCtrlAction(GENERIC_BUTTON_1, previousTrack);
  // next track
  uCtrl.page->setShiftCtrlAction(GENERIC_BUTTON_2, nextTrack);
  // bottom bar for f1 and f2 functions draw function
  uCtrl.page->setFunctionDrawCallback(functionDrawCallback);

  //
  uCtrl.init();

  // get all leds off
  uCtrl.dout->writeAll(LOW);
  
  // 
  uCtrl.page->setPage(1);
}

/* mega shiled and uCtrl16
 *  
  uCtrl.oled->print(">init ram...", 8, 1);  
  //
  // External RAM Module
  //
  //uCtrl.initRam(LC1024_SPI, 48); // 
  //uCtrl.initRam(LC1024_BITBANG, 48, 42, 43, 44); //
  uCtrl.initRam(&SPI, 48);

  uCtrl.oled->print(">init sdcard...", 8, 1);  
  //
  // SdCard Module
  //
  //uCtrl.initSdCard(SOFT_SPI, 7, 40, 38, 39); // 
  //uCtrl.initSdC(NATIVE_SPI, 7); // 
  uCtrl.initSdCard(&SPI, 7);  
  //uCtrl.initSdCard(1, 7);  // spi1
  //uCtrl.initSdCard(1, 24); // spi3

  uCtrl.oled->print(">init ain...", 8, 1);  
  //
  // AIN Module
  //
  //uCtrl.initAin(SINGLE, A4); // initing of a single digital port on D2
  //uCtrl.initAin(MUX_4051, 8, 10, 12); // initing of a 8 digital input ports via shift register 165 on A0
  uCtrl.initAin(0, 45, 47, 49);
  //uCtrl.ain->plug(0, A0);
  uCtrl.ain->plug(0, A1);

  uCtrl.oled->print(">init din...", 8, 1);  
  //
  // DIN Module
  //
  uCtrl.initDin(&SPI, 9);
  uCtrl.din->plug(1);

  uCtrl.oled->print(">init dout...", 8, 1);  
  //
  // DOUT Module
  //
  uCtrl.initDout(&SPI, 8);
  uCtrl.dout->plug(1);
  
  //uCtrl.dout->write(13, HIGH);
  // Turn off all leds of connected PUSH8 modules
  // write and auto flush data
  uCtrl.dout->writeAll(LOW, 0);

  uCtrl.oled->print(">init midi...", 8, 1);  
  //
  // MIDI Module
  //
  uCtrl.initMidi();
  // initing midi port 1
  uCtrl.midi->plug(&MIDI1); // MIDI PORT 1: USB MIDI
  // initing midi port 2
  uCtrl.midi->plug(&MIDI2); // MIDI PORT 2: SERIAL TTY MIDI
  // 2
  uCtrl.midi->plug(&MIDI3); // MIDI PORT 3: UART MIDI 1
  // 3
  uCtrl.midi->plug(&MIDI4); // MIDI PORT 4: UART MIDI 2
  uCtrl.midi->setMidiInputCallback(midiInputHandler);
  uCtrl.midi->setMidiOutputCallback(midiOutputHandler);
*/