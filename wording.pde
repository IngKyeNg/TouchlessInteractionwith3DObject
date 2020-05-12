PFont f;

void setupWord()
{
  f = loadFont( "ArialMT-48.vlw" );
}

class word
{
  void labelText()
  {
    fill(0,0,255);        // Specify font color
    text("vena cava", -150, 0);
    text("aorta", 60, -60);
  }

  void pointer()
  {
    fill(0);
  
    // aorta
    pushMatrix();
    translate(25,-50);
    rotateZ(20);
    box(1.5, 60, 1.5);
    popMatrix();
  
    // vena cava
    pushMatrix();
    fill(0);
    translate(-50,0);
    rotateZ(20);
    box(1.5, 60, 1.5);
    popMatrix();
  }
}


