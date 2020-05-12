PImage prevFrame;         // Previous frame storing

void setupMotion()
{
  // Create an empty image the same size as the video
  prevFrame = createImage(width, height,RGB);
}

class interaction
{
  float threshold = 25;
 
  int Mx = 0;
  int My = 0;
  int mPointX = 0;
  int mPointY = 0;
  int rsp = 25;

  void prevFrame()  // Save previous frame for motion detection!!
  {
    prevFrame.copy(cam,0,0,cam.width,cam.height,0,0,cam.width,cam.height);
    prevFrame.updatePixels();
    loadPixels();
    cam.loadPixels();
    prevFrame.loadPixels();
  }

  void currFrame()
  {
    
    int ave = 0;
  
    // Begin loop to walk through every pixel
    for (int x = 0; x < cam.width; x ++ ) 
    {
      for (int y = 0; y < cam.height; y ++ ) 
      {
        int loc = x + y*cam.width;            
        color current = cam.pixels[loc];      
        color previous = prevFrame.pixels[loc]; 
     
        float r1 = red(current); float g1 = green(current); float b1 = blue(current);
        float r2 = red(previous); float g2 = green(previous); float b2 = blue(previous);
        float diff = dist(r1,g1,b1,r2,g2,b2);
      
        if (diff > threshold) 
        {
          pixels[loc] = cam.pixels[loc];
          Mx += x;
          My += y;
          ave++;
        } 
      
        else 
        {
          pixels[loc] = cam.pixels[loc];
        }
      }
    }

    if(ave != 0)
    {
      Mx = Mx/ave;
      My = My/ave;
    }
  
    if (Mx > mPointX + rsp/2 && Mx > 50)
      mPointX+= rsp;
    else if (Mx < mPointX - rsp/2 && Mx > 50)
      mPointX-= rsp;
  
    if (My > mPointY + rsp/2 && My > 50)
      mPointY+= rsp;
    else if (My < mPointY - rsp/2 && My > 50)
      mPointY-= rsp;
  
    updatePixels();
  }

  float MotionX()
  {
    return mPointX;
    //return Mx;
  }

  float MotionY()
  {
    return mPointY;
        //return My;
  }
}