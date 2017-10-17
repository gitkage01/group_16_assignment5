class Planet {
  
  float xpos, ypos, radius, rotateVal, rVal;
  PShape globe1;
  PImage texture1;
  
  Planet() {}
  
  void orbit() {
    
    pushMatrix();
    translate(width/2, height/2);
    pushMatrix();
    rotateZ(rotateVal);
    translate(xpos, ypos);
    rotateZ(rotateVal);
    globe1 = createShape(SPHERE, radius);
    globe1.setTexture(texture1);
    shape(globe1);
    popMatrix();
    popMatrix();
    rotateVal += rVal;
    
  }
}