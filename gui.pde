/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:762598:
  appc.background(255);
} //_CODE_:window1:762598:

public void imgButton2_click1(GImageButton source, GEvent event) { //_CODE_:imgButton2:910573:
} //_CODE_:imgButton2:910573:

public void healthinessSlider_change1(GSlider source, GEvent event) { //_CODE_:Healthiness:423901:
  healthiness = Healthiness.getValueI();
  reset();
} //_CODE_:Healthiness:423901:

public void shopFreq_change1(GSlider source, GEvent event) { //_CODE_:Shopping_Frequency:469290:
  shoppingFrequency = Shopping_Frequency.getValueI();
  reset();
} //_CODE_:Shopping_Frequency:469290:

public void spoilRateSlider_change1(GSlider source, GEvent event) { //_CODE_:Spoil_Rate:377247:
  spoilRate = Spoil_Rate.getValueI();
  reset();
} //_CODE_:Spoil_Rate:377247:

public void button1_click1(GButton source, GEvent event) { //_CODE_:pause:337762:
  if (pressed == true) {
    noLoop();
    pressed = false;
    pause.setText("play");  //changes button to say "play" if program is paused
  } else {
    loop();
    pressed = true;
    pause.setText("pause");  //changes button to say "pause" if program is played
  }
} //_CODE_:pause:337762:

public void button2_click1(GButton source, GEvent event) { //_CODE_:reset:467462:
  reset();
  Healthiness.setValue(6);
  Shopping_Frequency.setValue(6);
  Spoil_Rate.setValue(6);
  Self_Control.setValue(15);
  loop();
} //_CODE_:reset:467462:

public void screenshot_click1(GButton source, GEvent event) { //_CODE_:screenshot:297306:
} //_CODE_:screenshot:297306:

public void name_change1(GTextField source, GEvent event) { //_CODE_:name:610640:
  fridgeName = name.getText() + "'s Fridge";
} //_CODE_:name:610640:

public void minus_click1(GImageButton source, GEvent event) { //_CODE_:speedMinus:409139:
  if (fr>1) {  //ensuring frame rate doesnt go to 0, which causes bugs
    fr -= 1;
    reset();
  }
} //_CODE_:speedMinus:409139:

public void plus_click1(GImageButton source, GEvent event) { //_CODE_:speedPlus:718535:
  fr += 1;
  reset();
} //_CODE_:speedPlus:718535:

public void smallClick(GImageButton source, GEvent event) { //_CODE_:small:707027:
  fridgeSize = "small";
  reset();
} //_CODE_:small:707027:

public void largeClick(GImageButton source, GEvent event) { //_CODE_:large:281302:
  fridgeSize = "large";
  reset();
} //_CODE_:large:281302:

public void imgButton6_click1(GImageButton source, GEvent event) { //_CODE_:fridgeLogo:386248:
} //_CODE_:fridgeLogo:386248:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:Self_Control:986613:
  selfControl = Self_Control.getValueI();
  reset();
} //_CODE_:Self_Control:986613:

public void exitclick1(GButton source, GEvent event) { //_CODE_:exitButton:382271:
  exit();
} //_CODE_:exitButton:382271:

public void mediumClick(GImageButton source, GEvent event) { //_CODE_:medium:781231:
  fridgeSize = "medium";
  reset();
} //_CODE_:medium:781231:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  G4P.setDisplayFont("Arial", G4P.PLAIN, 16);
  G4P.setInputFont("Arial", G4P.PLAIN, 18);
  G4P.setSliderFont("Arial", G4P.PLAIN, 14);
  surface.setTitle("FridgeFit");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 480, 400, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  imgButton2 = new GImageButton(window1, 0, -44, 514, 68, new String[] { "blackBKG.jpg", "blackBKG.jpg", "blackBKG.jpg" } );
  imgButton2.addEventHandler(this, "imgButton2_click1");
  Healthiness = new GSlider(window1, 327, 168, 130, 70, 10.0);
  Healthiness.setShowValue(true);
  Healthiness.setShowLimits(true);
  Healthiness.setLimits(6, 0, 10);
  Healthiness.setNbrTicks(10);
  Healthiness.setNumberFormat(G4P.INTEGER, 0);
  Healthiness.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  Healthiness.setOpaque(false);
  Healthiness.addEventHandler(this, "healthinessSlider_change1");
  Shopping_Frequency = new GSlider(window1, 166, 169, 130, 72, 10.0);
  Shopping_Frequency.setShowValue(true);
  Shopping_Frequency.setShowLimits(true);
  Shopping_Frequency.setLimits(6, 0, 10);
  Shopping_Frequency.setNbrTicks(10);
  Shopping_Frequency.setNumberFormat(G4P.INTEGER, 0);
  Shopping_Frequency.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  Shopping_Frequency.setOpaque(false);
  Shopping_Frequency.addEventHandler(this, "shopFreq_change1");
  Spoil_Rate = new GSlider(window1, 164, 298, 130, 70, 10.0);
  Spoil_Rate.setShowValue(true);
  Spoil_Rate.setShowLimits(true);
  Spoil_Rate.setLimits(6, 0, 10);
  Spoil_Rate.setNbrTicks(10);
  Spoil_Rate.setNumberFormat(G4P.INTEGER, 0);
  Spoil_Rate.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  Spoil_Rate.setOpaque(false);
  Spoil_Rate.addEventHandler(this, "spoilRateSlider_change1");
  pause = new GButton(window1, 15, 140, 120, 30);
  pause.setText("pause");
  pause.setLocalColorScheme(GCScheme.RED_SCHEME);
  pause.addEventHandler(this, "button1_click1");
  reset = new GButton(window1, 15, 190, 120, 30);
  reset.setText("reset");
  reset.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  reset.addEventHandler(this, "button2_click1");
  screenshot = new GButton(window1, 476, -43, 80, 30);
  screenshot.setText("screenshot");
  screenshot.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  screenshot.addEventHandler(this, "screenshot_click1");
  name = new GTextField(window1, 81, 63, 106, 37, G4P.SCROLLBARS_NONE);
  name.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  name.setOpaque(true);
  name.addEventHandler(this, "name_change1");
  speedMinus = new GImageButton(window1, 23, 332, 49, 42, new String[] { "minus.png", "minus.png", "minus.png" } );
  speedMinus.addEventHandler(this, "minus_click1");
  speedPlus = new GImageButton(window1, 82, 335, 41, 40, new String[] { "plus.jpg", "plus.jpg", "plus.jpg" } );
  speedPlus.addEventHandler(this, "plus_click1");
  togGroup1 = new GToggleGroup();
  togGroup2 = new GToggleGroup();
  label5 = new GLabel(window1, 296, 44, 95, 28);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("Fridge Size");
  label5.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label5.setOpaque(false);
  small = new GImageButton(window1, 280, 76, 30, 30, new String[] { "small.png", "small.png", "small.png" } );
  small.addEventHandler(this, "smallClick");
  large = new GImageButton(window1, 379, 75, 30, 30, new String[] { "Large.png", "Large.png", "Large.png" } );
  large.addEventHandler(this, "largeClick");
  fridgeLogo = new GImageButton(window1, -1, 24, 83, 77, new String[] { "Screen Shot 2022-12-11 at 4.09.06 AM.png", "Screen Shot 2022-12-11 at 4.09.06 AM.png", "Screen Shot 2022-12-11 at 4.09.06 AM.png" } );
  fridgeLogo.addEventHandler(this, "imgButton6_click1");
  Self_Control = new GSlider(window1, 325, 297, 130, 70, 10.0);
  Self_Control.setShowValue(true);
  Self_Control.setShowLimits(true);
  Self_Control.setLimits(15, 0, 30);
  Self_Control.setNbrTicks(10);
  Self_Control.setNumberFormat(G4P.INTEGER, 0);
  Self_Control.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  Self_Control.setOpaque(false);
  Self_Control.addEventHandler(this, "slider1_change1");
  Speed = new GLabel(window1, 35, 293, 80, 30);
  Speed.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Speed.setText("Speed");
  Speed.setOpaque(false);
  sF = new GLabel(window1, 182, 142, 93, 40);
  sF.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  sF.setText("Shopping Frequency");
  sF.setOpaque(false);
  HealthinessSlider = new GLabel(window1, 348, 141, 90, 30);
  HealthinessSlider.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  HealthinessSlider.setText("Healthiness");
  HealthinessSlider.setOpaque(false);
  sP = new GLabel(window1, 186, 280, 80, 20);
  sP.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  sP.setText("Spoil Rate");
  sP.setOpaque(false);
  sC = new GLabel(window1, 340, 281, 95, 20);
  sC.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  sC.setText("Self Control");
  sC.setOpaque(false);
  exitButton = new GButton(window1, 15, 240, 120, 30);
  exitButton.setText("Exit");
  exitButton.addEventHandler(this, "exitclick1");
  medium = new GImageButton(window1, 327, 73, 35, 35, new String[] { "med.png", "med.png", "med.png" } );
  medium.addEventHandler(this, "mediumClick");
  label1 = new GLabel(window1, 81, 40, 80, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Name");
  label1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label1.setOpaque(true);
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GImageButton imgButton2; 
GSlider Healthiness; 
GSlider Shopping_Frequency; 
GSlider Spoil_Rate; 
GButton pause; 
GButton reset; 
GButton screenshot; 
GTextField name; 
GImageButton speedMinus; 
GImageButton speedPlus; 
GToggleGroup togGroup1; 
GToggleGroup togGroup2; 
GLabel label5; 
GImageButton small; 
GImageButton large; 
GImageButton fridgeLogo; 
GSlider Self_Control; 
GLabel Speed; 
GLabel sF; 
GLabel HealthinessSlider; 
GLabel sP; 
GLabel sC; 
GButton exitButton; 
GImageButton medium; 
GLabel label1; 
