//Global Variables
color ink, black=0, white=#FFFFFF;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
float colorButtonX, colorButtonY, colorButtonWidth, colorButtonHeight;
float colorButtonX2, colorButtonY2, colorButtonWidth2, colorButtonHeight2;
float colorButtonX3, colorButtonY3, colorButtonWidth3, colorButtonHeight3;
float colorButtonX4, colorButtonY4, colorButtonWidth4, colorButtonHeight4;
float colorButtonX5, colorButtonY5, colorButtonWidth5, colorButtonHeight5;
Boolean drawLine=false, drawEllipse=false, drawRect=false;

void setup() {
  size (1920, 1080);
  drawingSurfaceX = width*1/4;
  drawingSurfaceY = height*1/6;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*12/16;
  //
  colorButtonX = width*1/32;
  colorButtonY = height*2/6;
  colorButtonWidth = width*4/32;
  colorButtonHeight = height*3/32;
  colorButtonX2 = width*1/32;
  colorButtonY2 = height*3/6;
  colorButtonWidth2 = width*4/32;
  colorButtonHeight2 = height*3/32;
  colorButtonX3 = width*1/32;
  colorButtonY3 = height*4/6;
  colorButtonWidth3 = width*4/32;
  colorButtonHeight3 = height*3/32;
  colorButtonX4 = width*1/32;
  colorButtonY4 = height*5/6;
  colorButtonWidth4 = width*4/32;
  colorButtonHeight4 = height*3/32;
  colorButtonX5 = width*1/32;
  colorButtonY5 = height*1/6;
  colorButtonWidth5 = width*4/32;
  colorButtonHeight5 = height*3/32;
  //
  ink = black;
  drawingDiameter = width*1/100;
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}

void draw() {
  if (drawLine == true && mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    fill(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  if (drawEllipse == true && mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    fill(ink);
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }
  if (drawRect == true && mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    fill(ink);
    rect(mouseX, mouseY, drawingDiameter,drawingDiameter );
  }
  fill(white);
  rect(colorButtonX, colorButtonY, colorButtonWidth, colorButtonHeight);
  rect(colorButtonX2, colorButtonY2, colorButtonWidth2, colorButtonHeight2);
  rect(colorButtonX3, colorButtonY3, colorButtonWidth3, colorButtonHeight3);
  rect(colorButtonX4, colorButtonY4, colorButtonWidth4, colorButtonHeight4);
  rect(colorButtonX5, colorButtonY5, colorButtonWidth5, colorButtonHeight5);
}

void mousePressed() {
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    println("drawing surface");
    if (drawLine == false) {
      drawLine = true;
    }
    else {
      drawLine = false;
    }
  }
}

void mouseReleased() {
  drawLine = false;
  drawEllipse = false;
  drawRect = false;
}
