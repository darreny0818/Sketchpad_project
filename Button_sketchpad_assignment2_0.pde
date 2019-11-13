float colourbutton = 500;
float thicknessbutton = 500;
float thickness = 20;
float transparent = 0;
color linecolour = 0;
float ind = 1;

int stitchy = 0;
PImage stitch;

void setup () {
  
  size(800, 600);
  background(255);
  stitch = loadImage("stitch.gif");
  imageMode(CENTER);
  
}
void draw  () {
  
  if (stitchy == 0 && mousePressed && mouseX > 160) { //squiggly line
    stroke (linecolour, transparent);
    fill(linecolour);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  if (stitchy == 1 && mousePressed && mouseX > 160) {
    image(stitch, mouseX, mouseY, thickness*20, thickness*20);
  }
  
  //tool bar
  stroke (0);
  strokeWeight(1);
  fill(#908A8A);
  rect(0, 0, 160, 600);
  
  //bars
  strokeWeight (3);
  line(45, 275, 45, 500);
  line(105, 275, 105, 500);
  
  if (dist(45, thicknessbutton, mouseX, mouseY) < 15) {
   strokeWeight(4);
   stroke(#C6C0C0);
 } else {
   strokeWeight(1);
   stroke(0);
 }
 
 fill(255);
  ellipse(45, thicknessbutton, 30, 30);
 
 if (dist(105, colourbutton, mouseX, mouseY) < 15) {
   strokeWeight(4);
   stroke(#C6C0C0);
 } else {
   strokeWeight(1);
   stroke(0);
 }
  
  //sliders
  fill(255);
  ellipse(105, colourbutton, 30, 30);
 
  if (mouseX>30 && mouseX <120 && mouseY>540 && mouseY <580) {
   strokeWeight(4);
   stroke(#E1F7F7);
 } else {
   strokeWeight(1);
   stroke(0);
 }
  
  //clear button
  fill(255);
  rect(30, 540, 90, 40);
  
  stroke(0);
  strokeWeight(1);
  rect(40, 225, 70, 30);
  //indicator
  fill(linecolour, transparent);
  ellipse(75, 240, ind, ind);
  
  //colourbuttons
   
if (dist(25, 75, mouseX, mouseY) < 15) {
   strokeWeight(4);
   stroke(#FCA6D4);
 } else {
   strokeWeight(1);
   stroke(0);
 }
  fill(#FA08AA);
  ellipse(25, 75, 30, 30); //pink
  
  if (dist(65, 120, mouseX, mouseY) < 15) {
   strokeWeight(4);
   stroke(#8192FA);
 } else {
   strokeWeight(1);
   stroke(0);
 }
 
  fill(#110EEA);
  ellipse(65, 120, 30, 30); //blue
  
  if (dist(65, 30, mouseX, mouseY) < 15) {
   strokeWeight(4);
   stroke(#F7AD82);
 } else {
   strokeWeight(1);
   stroke(0);
 }
 
  fill(#F77816);
  ellipse(65, 30, 30, 30); //orange
  
  if (dist(65, 75, mouseX, mouseY) < 15) {
   strokeWeight(4);
   stroke(#97FA88);
 } else {
   strokeWeight(1);
   stroke(0);
 }
  
  fill(#06CE2C);
  ellipse(65, 75, 30, 30); //green
  
  if (dist(105, 30, mouseX, mouseY) < 15) {
   strokeWeight(4);
   stroke(#FAF688);
 } else {
   strokeWeight(1);
   stroke(0);
 }
  
  fill(#FFF52E);
  ellipse(105, 30, 30, 30); //yellow
  
  if (dist(105, 120, mouseX, mouseY) < 15) {
   strokeWeight(4);
   stroke(#EA9CFA);
 } else {
   strokeWeight(1);
   stroke(0);
 }
  
  fill(#A913EA);
  ellipse(105, 120, 30, 30); //purple
  
  if (dist(25, 120, mouseX, mouseY) < 15) {
   strokeWeight(4);
   stroke(#A9EDFA);
 } else {
   strokeWeight(1);
   stroke(0);
 }
  
  fill(#08FFDC);
  ellipse(25, 120, 30, 30); //turquoise
  
  if (dist(105, 75, mouseX, mouseY) < 15) {
   strokeWeight(4);
   stroke(#90C6A6);
 } else {
   strokeWeight(1);
   stroke(0);
 }
  
  fill(#1B7C09);
  ellipse(105, 75, 30, 30); //dark green
  
  if (dist(25, 30, mouseX, mouseY) < 15) {
   strokeWeight(4);
   stroke(#FC5C69);
 } else {
   strokeWeight(1);
   stroke(0);
 }
 
  fill(#F0161D); 
  ellipse(25, 30, 30, 30); //red
  
  if (dist(140, 30, mouseX, mouseY) < 15) { //black
   strokeWeight(4);
   stroke(#7E7E7E);
 } else {
   strokeWeight(1);
   stroke(0);
 }
  
  fill(0);
  ellipse(140, 30, 30, 30);
  
  if (dist(140, 75, mouseX, mouseY) < 15) { //white
   strokeWeight(4);
   stroke(#E1F7F7);
 } else {
   strokeWeight(1);
   stroke(0);
 }
  
  fill(255);
  ellipse(140, 75, 30, 30);
  
   if (dist(140, 120, mouseX, mouseY) < 15) { //grey
   strokeWeight(4);
   stroke(#E8E8E8);
 } else {
   strokeWeight(1);
   stroke(0);
 }
  
  fill(#7E7E7E);
  ellipse(140, 120, 30, 30);
  
  
  
  if (dist(mouseX, mouseY, 45, thicknessbutton) <=15 && mousePressed) {
    thicknessbutton = mouseY;
  }
  
  if(dist(mouseX, mouseY, 105, colourbutton) <=15 && mousePressed) {
    colourbutton = mouseY;
  }
  
  if (thicknessbutton <275) {
    thicknessbutton = 275;
  }
  
  if (thicknessbutton > 500) {
    thicknessbutton = 500;
  }
    
  if (colourbutton > 500) {
    colourbutton = 500;
  }
  
  if (colourbutton <275) {
    colourbutton = 275;
  }
  
  thickness = map(thicknessbutton, 500, 275, 1, 20);
  strokeWeight(thickness);
  
  transparent = map(colourbutton, 275, 500, 1, 255);
  
  ind = map(thicknessbutton, 500, 275, 6, 25);
  
  image(stitch, 80, 180, 110, 90);
  
}
void mouseReleased () {
  
  if(mouseX > 30 && mouseX < 120 && mouseY >540 && mouseY <580) { //clear
    fill(255);
    stroke(255);
    strokeWeight(1);
    rect(160, 0, 640, 600);
  }
  
  if (dist(mouseX, mouseY, 25, 30) < 15){
    linecolour = #F0161D;
    stitchy = 0;
  }
  
  if (dist(mouseX, mouseY, 25, 75) < 15){
    linecolour = #FA08AA;
    stitchy = 0;
  }
  
  if (dist(mouseX, mouseY, 65, 120) < 15){
    linecolour = #110EEA;
    stitchy = 0;
  }
  
  if (dist(mouseX, mouseY, 65, 30) < 15){
    linecolour = #F77816;
    stitchy = 0;
  }
  
  if (dist(mouseX, mouseY, 65, 75) < 15){
    linecolour = #06CE2C;
    stitchy = 0;
  }
  
  if (dist(mouseX, mouseY, 105, 30) < 15){
    linecolour = #FFF52E;
    stitchy = 0;
  }
  
  if (dist(mouseX, mouseY, 105, 120) < 15){
    linecolour = #A913EA;
    stitchy = 0;
  }
  
  if (dist(mouseX, mouseY, 25, 120) < 15){
    linecolour = #08FFDC;
    stitchy = 0;
  }
  
  if (dist(mouseX, mouseY, 105, 75) < 15){
    linecolour = #1B7C09;
    stitchy = 0;
  }
  
  if (dist(mouseX, mouseY, 140, 30) < 22.5){
    linecolour = 0;
    stitchy = 0;
  }
  
  if (dist(mouseX, mouseY, 140, 75) < 22.5){
    linecolour = 255;
    stitchy = 0;
  }
  
  if (dist(mouseX, mouseY, 140, 120) < 22.5){
    linecolour = #7E7E7E;
    stitchy = 0;
  }
  
  if(dist(80, 180, mouseX, mouseY) < 50) {
    stitchy = 1;
  }
  
 
}
