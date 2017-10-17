//import peasy.*;
//import peasy.org.apache.commons.math.*;
//import peasy.org.apache.commons.math.geometry.*;

Planet Mercury;
Planet Earth;
Planet Jupiter;

PImage Merc;
PImage Eart;
PImage Jupi;
PImage sun;
PShape globe;

float r1;
float r2;
float r3;

float rotateVal1;

//PeasyCam cam;

void setup() {
  
  size(1280, 720, P3D);
  noStroke();
  frameRate(30);
  //cam = new PeasyCam(this, 300);
  
  sun = loadImage("sunTexture.jpg");
  globe = createShape(SPHERE, 50);
  globe.setTexture(sun);

  r1 = 0.05;
  r2 = 0.03;
  r3 = 0.01;
  rotateVal1 = 0.02;
  
  Mercury = new Planet();
  Earth = new Planet();
  Jupiter = new Planet();
  
  Merc = loadImage("mercuryTexture.jpg");
  Eart = loadImage("earthTexture.jpg");
  Jupi = loadImage("jupiterTexture.jpg");

  Mercury.xpos = 100;
  Mercury.ypos = 0;
  Mercury.radius = 15;
  Mercury.rotateVal = 0.05;
  Mercury.rVal = r1;
  Mercury.texture1 = Merc;
  
  Earth.xpos = -250;
  Earth.ypos = 0;
  Earth.radius = 25;
  Earth.rotateVal = 0.05;
  Earth.rVal = r3;
  Earth.texture1 = Eart;
  
  Jupiter.xpos = 0;
  Jupiter.ypos = 450;
  Jupiter.radius = 40;
  Jupiter.rVal = r2;
  Jupiter.texture1 = Jupi;
  
}

void draw() {
  
  background(0);
  fill(253, 184, 19);
  
  pushMatrix();
  translate(width/2, height/2);
  rotateZ(rotateVal1);
  shape(globe);
  pointLight(255, 255, 255, 0, 0, 0);
  popMatrix();
  rotateVal1 += 0.02;
  
  Mercury.orbit();
  Earth.orbit();
  Jupiter.orbit();
  
}