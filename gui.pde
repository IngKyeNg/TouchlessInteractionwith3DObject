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

synchronized public void win_Menu(GWinApplet appc, GWinData data) { //_CODE_:Menu:620117:
  appc.background(0);
} //_CODE_:Menu:620117:

public void buttonExit_click(GButton source, GEvent event) { //_CODE_:exit:297967:
  println("button1 - GButton event occured " + System.currentTimeMillis()%10000000 );
  exit();
} //_CODE_:exit:297967:

public void imgButton1_click1(GImageButton source, GEvent event) { //_CODE_:imgButton1:318426:
  println("imgButton1 - GImageButton event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:imgButton1:318426:

public void tranformationPanel_Click1(GPanel source, GEvent event) { //_CODE_:transformation:540412:
  println("transformation - GPanel event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:transformation:540412:

public void rotation_clicked(GOption source, GEvent event) { //_CODE_:rotation:479767:
  println("option3 - GOption event occured " + System.currentTimeMillis()%10000000 );
  trans=false;
  rot=true;
  sca=false;
} //_CODE_:rotation:479767:

public void translation_clicked(GOption source, GEvent event) { //_CODE_:translation:326300:
  println("translation - GOption event occured " + System.currentTimeMillis()%10000000 );
  trans=true;
  rot=false;
  sca=false;
} //_CODE_:translation:326300:

public void scaling_clicked(GOption source, GEvent event) { //_CODE_:scaling:778504:
  println("scaling - GOption event occured " + System.currentTimeMillis()%10000000 );
  trans=false;
  rot=false;
  sca=true;
} //_CODE_:scaling:778504:

public void checkbox1_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox1:301023:
  println("checkbox1 - GCheckbox event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:checkbox1:301023:

public void checkbox2_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox2:305487:
  println("checkbox2 - GCheckbox event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:checkbox2:305487:

synchronized public void win_data(GWinApplet appc, GWinData data) { //_CODE_:data:259578:
  appc.background(0);
} //_CODE_:data:259578:

public void panel1_Click1(GPanel source, GEvent event) { //_CODE_:panel1:838387:
  println("panel1 - GPanel event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:panel1:838387:

public void panel3_Click1(GPanel source, GEvent event) { //_CODE_:panel3:723860:
  println("panel2 - GPanel event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:panel3:723860:

public void panel2_Click1(GPanel source, GEvent event) { //_CODE_:panel2:832979:
  println("panel2 - GPanel event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:panel2:832979:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.GOLD_SCHEME);
  G4P.setCursor(HAND);
  if(frame != null)
    frame.setTitle("Heart Visualisation");
  Menu = new GWindow(this, "Menu", 400, 210, 200, 480, false, JAVA2D);
  Menu.setActionOnClose(G4P.EXIT_APP);
  Menu.addDrawHandler(this, "win_Menu");
  exit = new GButton(Menu.papplet, 76, 286, 67, 31);
  exit.setText("Exit");
  exit.setTextBold();
  exit.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  exit.addEventHandler(this, "buttonExit_click");
  imgButton1 = new GImageButton(Menu.papplet, 30, 380, 140, 80, new String[] { "MCG logo.jpg", "MCG logo.jpg", "MCG logo.jpg" } );
  imgButton1.addEventHandler(this, "imgButton1_click1");
  transformation = new GPanel(Menu.papplet, 25, 20, 150, 150, "Tranformation Panel");
  transformation.setCollapsible(false);
  transformation.setDraggable(false);
  transformation.setText("Tranformation Panel");
  transformation.setTextBold();
  transformation.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  transformation.setOpaque(true);
  transformation.addEventHandler(this, "tranformationPanel_Click1");
  togGroup1 = new GToggleGroup();
  rotation = new GOption(Menu.papplet, 5, 60, 120, 20);
  rotation.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  rotation.setText("Rotate");
  rotation.setTextBold();
  rotation.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  rotation.setOpaque(false);
  rotation.addEventHandler(this, "rotation_clicked");
  translation = new GOption(Menu.papplet, 5, 20, 120, 20);
  translation.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  translation.setText("Translate");
  translation.setTextBold();
  translation.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  translation.setOpaque(false);
  translation.addEventHandler(this, "translation_clicked");
  scaling = new GOption(Menu.papplet, 5, 40, 120, 20);
  scaling.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  scaling.setText("Scale");
  scaling.setTextBold();
  scaling.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  scaling.setOpaque(false);
  scaling.addEventHandler(this, "scaling_clicked");
  togGroup1.addControl(rotation);
  transformation.addControl(rotation);
  togGroup1.addControl(translation);
  translation.setSelected(true);
  transformation.addControl(translation);
  togGroup1.addControl(scaling);
  transformation.addControl(scaling);
  checkbox1 = new GCheckbox(Menu.papplet, 5, 100, 120, 20);
  checkbox1.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox1.setText("Animation");
  checkbox1.setTextBold();
  checkbox1.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  checkbox1.setOpaque(false);
  checkbox1.addEventHandler(this, "checkbox1_clicked1");
  checkbox2 = new GCheckbox(Menu.papplet, 5, 120, 120, 20);
  checkbox2.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox2.setText("Label");
  checkbox2.setTextBold();
  checkbox2.setOpaque(false);
  checkbox2.addEventHandler(this, "checkbox2_clicked1");
  transformation.addControl(checkbox1);
  transformation.addControl(checkbox2);
  data = new GWindow(this, "Information", 1250, 210, 230, 480, false, JAVA2D);
  data.setActionOnClose(G4P.EXIT_APP);
  data.addDrawHandler(this, "win_data");
  label3 = new GLabel(data.papplet, 15, 380, 200, 20);
  label3.setText("Brought to you by");
  label3.setTextBold();
  label3.setOpaque(false);
  label6 = new GLabel(data.papplet, 70, 410, 100, 40);
  label6.setText("NIK MCG'13/14");
  label6.setTextItalic();
  label6.setOpaque(false);
  panel1 = new GPanel(data.papplet, 20, 20, 180, 100, "Translate to:");
  panel1.setDraggable(false);
  panel1.setText("Translate to:");
  panel1.setTextBold();
  panel1.setOpaque(true);
  panel1.addEventHandler(this, "panel1_Click1");
  label1 = new GLabel(data.papplet, 10, 30, 60, 20);
  label1.setText("xPose");
  label1.setTextBold();
  label1.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  label1.setOpaque(true);
  label2 = new GLabel(data.papplet, 10, 60, 60, 20);
  label2.setText("yPose");
  label2.setTextBold();
  label2.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  label2.setOpaque(true);
  xPose = new GLabel(data.papplet, 80, 30, 80, 20);
  xPose.setText("0.00");
  xPose.setTextBold();
  xPose.setLocalColorScheme(GCScheme.RED_SCHEME);
  xPose.setOpaque(true);
  yPose = new GLabel(data.papplet, 80, 60, 80, 20);
  yPose.setText("0.00");
  yPose.setTextBold();
  yPose.setLocalColorScheme(GCScheme.RED_SCHEME);
  yPose.setOpaque(true);
  panel1.addControl(label1);
  panel1.addControl(label2);
  panel1.addControl(xPose);
  panel1.addControl(yPose);
  panel3 = new GPanel(data.papplet, 20, 240, 180, 60, "Scale by (Value)");
  panel3.setText("Scale by (Value)");
  panel3.setTextBold();
  panel3.setOpaque(true);
  panel3.addEventHandler(this, "panel3_Click1");
  scaV = new GLabel(data.papplet, 80, 30, 80, 20);
  scaV.setText("0.00");
  scaV.setTextBold();
  scaV.setLocalColorScheme(GCScheme.RED_SCHEME);
  scaV.setOpaque(true);
  label9 = new GLabel(data.papplet, 10, 30, 60, 20);
  label9.setText("Scale:");
  label9.setTextBold();
  label9.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  label9.setOpaque(true);
  panel3.addControl(scaV);
  panel3.addControl(label9);
  panel2 = new GPanel(data.papplet, 20, 150, 180, 60, "Rotate by (Value)");
  panel2.setText("Rotate by (Value)");
  panel2.setTextBold();
  panel2.setOpaque(true);
  panel2.addEventHandler(this, "panel2_Click1");
  label7 = new GLabel(data.papplet, 10, 30, 60, 20);
  label7.setText("Rotate:");
  label7.setTextBold();
  label7.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  label7.setOpaque(true);
  rotV = new GLabel(data.papplet, 80, 30, 80, 20);
  rotV.setText("0.00");
  rotV.setTextBold();
  rotV.setLocalColorScheme(GCScheme.RED_SCHEME);
  rotV.setOpaque(true);
  panel2.addControl(label7);
  panel2.addControl(rotV);
}

// Variable declarations 
// autogenerated do not edit
GWindow Menu;
GButton exit; 
GImageButton imgButton1; 
GPanel transformation; 
GToggleGroup togGroup1; 
GOption rotation; 
GOption translation; 
GOption scaling; 
GCheckbox checkbox1; 
GCheckbox checkbox2; 
GWindow data;
GLabel label3; 
GLabel label6; 
GPanel panel1; 
GLabel label1; 
GLabel label2; 
GLabel xPose; 
GLabel yPose; 
GPanel panel3; 
GLabel scaV; 
GLabel label9; 
GPanel panel2; 
GLabel label7; 
GLabel rotV; 

