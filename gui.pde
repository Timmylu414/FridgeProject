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
  appc.background(230);
} //_CODE_:window1:762598:

public void imgButton2_click1(GImageButton source, GEvent event) { //_CODE_:imgButton2:910573:
} //_CODE_:imgButton2:910573:

public void healthinessSlider_change1(GSlider source, GEvent event) { //_CODE_:Healthiness:423901:
  h = Healthiness.getValueI();
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
    pause.setText("play");
  } else {
    loop();
    pressed = true;
    pause.setText("pause");
  }
} //_CODE_:pause:337762:

public void button2_click1(GButton source, GEvent event) { //_CODE_:reset:467462:
  reset();
  loop();
} //_CODE_:reset:467462:

public void screenshot_click1(GButton source, GEvent event) { //_CODE_:screenshot:297306:
} //_CODE_:screenshot:297306:

public void name_change1(GTextField source, GEvent event) { //_CODE_:name:610640:
} //_CODE_:name:610640:

public void minus_click1(GImageButton source, GEvent event) { //_CODE_:speedMinus:409139:
  if (fr>3) {
    fr -= 2;
  }
} //_CODE_:speedMinus:409139:

public void plus_click1(GImageButton source, GEvent event) { //_CODE_:speedPlus:718535:
  fr += 2;
} //_CODE_:speedPlus:718535:

public void smallClick(GImageButton source, GEvent event) { //_CODE_:small:707027:
  fridgeSize = "small";
  reset();
} //_CODE_:small:707027:

public void mediumClick(GImageButton source, GEvent event) { //_CODE_:medium:851739:
  fridgeSize = "medium";
  reset();
} //_CODE_:medium:851739:

public void largeClick(GImageButton source, GEvent event) { //_CODE_:large:281302:
  fridgeSize = "large";
  reset();
} //_CODE_:large:281302:

public void imgButton6_click1(GImageButton source, GEvent event) { //_CODE_:fridgeLogo:386248:
} //_CODE_:fridgeLogo:386248:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:Self_Control:986613:
  println("Self_Control - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Self_Control:986613:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 450, 350, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  imgButton2 = new GImageButton(window1, 0, -44, 450, 56, new String[] { "blackBKG.jpg", "blackBKG.jpg", "blackBKG.jpg" } );
  imgButton2.addEventHandler(this, "imgButton2_click1");
  Healthiness = new GSlider(window1, 336, 63, 100, 47, 10.0);
  Healthiness.setShowValue(true);
  Healthiness.setLimits(5, 0, 10);
  Healthiness.setNbrTicks(10);
  Healthiness.setStickToTicks(true);
  Healthiness.setShowTicks(true);
  Healthiness.setNumberFormat(G4P.INTEGER, 0);
  Healthiness.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  Healthiness.setOpaque(false);
  Healthiness.addEventHandler(this, "healthinessSlider_change1");
  Shopping_Frequency = new GSlider(window1, 216, 64, 100, 43, 10.0);
  Shopping_Frequency.setShowValue(true);
  Shopping_Frequency.setLimits(5, 0, 10);
  Shopping_Frequency.setNbrTicks(10);
  Shopping_Frequency.setStickToTicks(true);
  Shopping_Frequency.setShowTicks(true);
  Shopping_Frequency.setNumberFormat(G4P.INTEGER, 0);
  Shopping_Frequency.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  Shopping_Frequency.setOpaque(false);
  Shopping_Frequency.addEventHandler(this, "shopFreq_change1");
  Spoil_Rate = new GSlider(window1, 217, 152, 100, 58, 10.0);
  Spoil_Rate.setShowValue(true);
  Spoil_Rate.setLimits(5, 0, 10);
  Spoil_Rate.setNbrTicks(10);
  Spoil_Rate.setStickToTicks(true);
  Spoil_Rate.setShowTicks(true);
  Spoil_Rate.setNumberFormat(G4P.INTEGER, 0);
  Spoil_Rate.setOpaque(false);
  Spoil_Rate.addEventHandler(this, "spoilRateSlider_change1");
  pause = new GButton(window1, 227, 241, 80, 30);
  pause.setText("pause");
  pause.setLocalColorScheme(GCScheme.RED_SCHEME);
  pause.addEventHandler(this, "button1_click1");
  reset = new GButton(window1, 348, 243, 80, 30);
  reset.setText("reset");
  reset.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  reset.addEventHandler(this, "button2_click1");
  screenshot = new GButton(window1, 476, -43, 80, 30);
  screenshot.setText("screenshot");
  screenshot.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  screenshot.addEventHandler(this, "screenshot_click1");
  name = new GTextField(window1, 82, 58, 106, 30, G4P.SCROLLBARS_NONE);
  name.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  name.setOpaque(true);
  name.addEventHandler(this, "name_change1");
  speedMinus = new GImageButton(window1, 128, 262, 49, 42, new String[] { "minus.png", "minus.png", "minus.png" } );
  speedMinus.addEventHandler(this, "minus_click1");
  speedPlus = new GImageButton(window1, 38, 262, 41, 40, new String[] { "plus.jpg", "plus.jpg", "plus.jpg" } );
  speedPlus.addEventHandler(this, "plus_click1");
  togGroup1 = new GToggleGroup();
  togGroup2 = new GToggleGroup();
  label5 = new GLabel(window1, 65, 125, 80, 20);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("Fridge Size");
  label5.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label5.setOpaque(false);
  label7 = new GLabel(window1, 82, 27, 95, 26);
  label7.setText("Name");
  label7.setOpaque(false);
  small = new GImageButton(window1, 41, 166, 25, 22, new String[] { "small.png", "small.png", "small.png" } );
  small.addEventHandler(this, "smallClick");
  medium = new GImageButton(window1, 91, 165, 29, 23, new String[] { "med.png", "med.png", "med.png" } );
  medium.addEventHandler(this, "mediumClick");
  large = new GImageButton(window1, 153, 166, 20, 20, new String[] { "Large.png", "Large.png", "Large.png" } );
  large.addEventHandler(this, "largeClick");
  fridgeLogo = new GImageButton(window1, -3, 11, 83, 77, new String[] { "Screen Shot 2022-12-11 at 4.09.06 AM.png", "Screen Shot 2022-12-11 at 4.09.06 AM.png", "Screen Shot 2022-12-11 at 4.09.06 AM.png" } );
  fridgeLogo.addEventHandler(this, "imgButton6_click1");
  Self_Control = new GSlider(window1, 336, 154, 100, 55, 10.0);
  Self_Control.setShowValue(true);
  Self_Control.setLimits(5, 0, 10);
  Self_Control.setNbrTicks(10);
  Self_Control.setStickToTicks(true);
  Self_Control.setShowTicks(true);
  Self_Control.setNumberFormat(G4P.INTEGER, 0);
  Self_Control.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  Self_Control.setOpaque(false);
  Self_Control.addEventHandler(this, "slider1_change1");
  Speed = new GLabel(window1, 66, 221, 80, 20);
  Speed.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Speed.setText("Speed");
  Speed.setOpaque(false);
  sF = new GLabel(window1, 222, 31, 80, 20);
  sF.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  sF.setText("Shopping Frequency");
  sF.setOpaque(false);
  healthiness = new GLabel(window1, 340, 31, 80, 20);
  healthiness.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  healthiness.setText("Healthiness");
  healthiness.setOpaque(false);
  sP = new GLabel(window1, 223, 120, 80, 20);
  sP.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  sP.setText("Spoil Rate");
  sP.setOpaque(false);
  sC = new GLabel(window1, 345, 122, 80, 20);
  sC.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  sC.setText("Self Control");
  sC.setOpaque(false);
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
GLabel label7; 
GImageButton small; 
GImageButton medium; 
GImageButton large; 
GImageButton fridgeLogo; 
GSlider Self_Control; 
GLabel Speed; 
GLabel sF; 
GLabel healthiness; 
GLabel sP; 
GLabel sC; 
