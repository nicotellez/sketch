/*

*/
String message = "tickle";
float x, y; // X and Y coordinates of text
float hr, vr;  // horizontal and vertical radius of the text
PFont font,font2;
void setup() {
  size(640, 360);
  
  // Create the font
  font=loadFont("GillSansMT-Bold-76.vlw");
  font2=loadFont("GillSansMT-Italic-76.vlw");
  textFont(font, 76);
  textAlign(CENTER, CENTER);
  hr = textWidth(message) / 2;
  vr = (textAscent() + textDescent()) / 2;
  noStroke();
  x = width / 2;
  y = height / 2;
}

void draw() {
  // Instead of clearing the background, fade it by drawing
  // a semi-transparent rectangle on top
  fill(204, 120);
  rect(0, 0, width, height);
  // If the cursor is over the text, change the position
  if (abs(mouseX - x) < hr && abs(mouseY - y) < vr) 
  {
    background(155, 228, 255);
    textFont(font2, 76);
    fill(45, 151, 245);
    x += random(-5, 5);
    y += random(-5, 5);
    text("Frío", x, y);
  }else{
  background(255, 204, 0);
  fill(220, 20, 84);
  textFont(font, 76);
  text("Cálido", x, y);
  }
}
