//Global Variables
color ink, black=0;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
Boolean draw=false;

void setup() {
  size (1920, 1080);
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
  //
  ink = black;
  drawingDiameter = width*1/100;
}

void draw() {
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  if (draw == true) {
    fill(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void mousePressed() {
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    println("drawing surface");
    if (draw == false) {
      draw = true;
    }
    else {
      draw = false;
    }
  }
}
