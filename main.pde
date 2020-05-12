import g4p_controls.*;

import java.awt.Font;
import java.awt.*;

import processing.opengl.*;     // for OPENGL rendering
import codeanticode.gsvideo.*;  // for webcam video stream

GSCapture cam;
word w;
interaction it;

// boolean for option
boolean trans = true;
boolean rot = false;
boolean sca = false;

// variables for transformation
float transHeartX = 0;
float transHeartY = 0;
float rotHeart = 0;
float scaHeart = 1;

float heartBeat = 0.5;
boolean beat = true;

float translateX = 0;
float translateY = 0;

void setup() 
{
  size(640, 480, OPENGL); // the sketch will resize correctly

  cam = new GSCapture(this, width, height); // initializing the webcam capture at a specific resolution (correct/possible settings depends on YOUR webcam)
  cam.start(); // start capturing

  setupAR();     // Initialise augmented reality
  setupMotion(); // Initialise motionDetection
  setupModel();  // Initialise objLoader
  setupWord();   // Initialise twxt format
  
  w = new word();
  it = new interaction();
  
  createGUI();
  customGUI();
  noStroke();
  smooth();
}

void draw() 
{
  
  lights(); // Turn on some lights
  background(cam); // A background call is needed for correct display of the marker results
  image(cam, 0, 0, width, height); // Display the image (from web cam) at the width and height of the sketch window
  
  // get the four marker coordinates into an array of 2D PVectors
  PVector[] pos2d = nya.getMarkerVertex2D(0);
    
  // if there is a cam image coming in...
  if (cam.available()) 
  {
    it.prevFrame();  // Save previous frame
    cam.read();   // Read the cam image
    
    it.currFrame();
    
    // create a copy of the cam image at the resolution of the AR detection (otherwise nya.detect will throw an assertion error!)
    PImage cSmall = cam.get();
    cSmall.resize(arWidth, arHeight);
    nya.detect(cSmall); // detect markers in the image
    
    translateX = pos2d[0].x;
    translateY = pos2d[0].y;
       
    pushMatrix();
    drawHeart(); // draw virtual heart on the detected markers (3D)
    popMatrix();    
  }
}

// this function draws correctly placed 3D objects on top of detected markers
void drawHeart() 
{
  // if the marker does exist (MCG marker)
  if ((nya.isExistMarker(0))) 
  {
    
    // get the Matrix for this marker and use it (through setMatrix)
    setMatrix(nya.getMarkerMatrix(0));
    
    // turn things upside down to work intuitively for Processing users
    rotateX(1);
    scale(1, -1);
    scale(1.5);
    
    //println(it.MotionX());
    //println(it.MotionY());
    println(height/2);
    
    if((it.MotionX()-325==50)&&(it.MotionY()-250==50))
    {
      rotation.isSelected();
    }
    
    // apply translation
    if(trans)
    {
      transHeartX = it.MotionX()-(width/2);
      transHeartY = it.MotionY()-(height/2);
      
      xPose.setText(str(transHeartX));
      yPose.setText(str(transHeartY));  
    }
    
    // apply rotation
    if(rot)
    {
      if((it.MotionX()>=(width/2)-25)&&(it.MotionX()<=(width/2)+25))
        rotHeart+=0;
    
      else if(it.MotionX()<(width/2)-25)
        rotHeart+=0.1;
     
       else if(it.MotionX()>(width/2)+25)
         rotHeart-=0.1;
         
       rotV.setText(str(round(rotHeart*100.0f)/100.0f)); 
    }
    
    // apply scaling
    if(sca)
    {
      if((it.MotionX()>=(width/2)-25)&&(it.MotionX()<=(width/2)+25))
        scaHeart+=0;
    
      else if(it.MotionX()<(width/2)-25)
        scaHeart+=0.01;
     
       else if(it.MotionX()>(width/2)+25)
         scaHeart-=0.01;
       
       scaV.setText(str(round(scaHeart*100.0f)/100.0f));  
    }
    
    translate(transHeartX,transHeartY);
    rotateY(rotHeart);
    scale(scaHeart);
    
    if(checkbox1.isSelected()==true)
    {
      scale(heartBeat);
    }
    // draw the virtual heart
    drawModel();
    
    if(beat)
    {
      heartBeat+=0.1;
      if(heartBeat>=1.0)
        beat=false;
    }
    
    else
    {
      heartBeat-=0.1;
      if(heartBeat<=0.5);
        beat=true;
    }
    if(checkbox2.isSelected()==true)
    {   
      w.labelText();
      w.pointer();
    }
  }
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI()
{
  transformation.setFont(new Font("Tahoma", Font.PLAIN, 14));
  panel1.setFont(new Font("Tahoma", Font.PLAIN, 14));
  panel2.setFont(new Font("Tahoma", Font.PLAIN, 14));
  panel3.setFont(new Font("Tahoma", Font.PLAIN, 14));
  checkbox1.setFont(new Font("TimesNewRoman", Font.PLAIN, 16));
  checkbox2.setFont(new Font("TimesNewRoman", Font.PLAIN, 16));
  translation.setFont(new Font("Tahoma", Font.PLAIN, 14));
  rotation.setFont(new Font("Tahoma", Font.PLAIN, 14));
  scaling.setFont(new Font("Tahoma", Font.PLAIN, 14));
  exit.setFont(new Font("Tahoma", Font.PLAIN, 20));
  label1.setFont(new Font("TimesNewRoman", Font.PLAIN, 16));
  label2.setFont(new Font("TimesNewRoman", Font.PLAIN, 16));
  xPose.setFont(new Font("TimesNewRoman", Font.PLAIN, 16));
  yPose.setFont(new Font("TimesNewRoman", Font.PLAIN, 16));
  scaV.setFont(new Font("TimesNewRoman", Font.PLAIN, 16));
  label9.setFont(new Font("TimesNewRoman", Font.PLAIN, 16));
  rotV.setFont(new Font("TimesNewRoman", Font.PLAIN, 16));
  label7.setFont(new Font("TimesNewRoman", Font.PLAIN, 16));
  label3.setFont(new Font("Ravie", Font.PLAIN, 12));
  label6.setFont(new Font("Ravie", Font.PLAIN, 14));
}


