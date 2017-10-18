class ironMan{
  float crVal,crotateVal,srotateVal,srVal;
  PShape object=loadShape("IronMan.obj");
  
  ironMan(){}
  void circle(){
    pushMatrix();
    translate(width/2, height/2);
    rotateX(crotateVal);
    translate(0,400,0);
    pushMatrix();
    rotateX(srotateVal);
    lights();
    shape(object,-50,-50,100,100);
    popMatrix();
    popMatrix();
    crotateVal+=crVal;
    srotateVal+=srVal;

  }
}

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

class Moon extends Planet {
  float pXpos, pYpos, rotateVal2, rVal2;
  
  Moon() {}
  
  void moonOrbit() {
    
    pushMatrix();
    translate(width/2, height/2);
    pushMatrix();
    rotateZ(rotateVal);
    translate(xpos, ypos);
    pushMatrix();
    rotateZ(rotateVal2);
    translate(pXpos, pYpos);
    rotateZ(rotateVal2);
    globe1 = createShape(SPHERE, radius);
    globe1.setTexture(texture1);
    shape(globe1);
    popMatrix();
    popMatrix();
    popMatrix();
    rotateVal += rVal;
    rotateVal2 += rVal2;
    
  }
  
/*
  void mOrbit() {
  
    pushMatrix();
    translate(width/2, height/2);
    pushMatrix();
    rotateZ(rotateVal);
    translate(pXpos, pYpos);
    rotateY(rotateVal);
    translate(xpos, ypos);
    rotateZ(rotateVal);
    globe1 = createShape(SPHERE, radius);
    globe1.setTexture(texture1);
    shape(globe1);
    popMatrix();
    popMatrix();
    rotateVal += rVal;
    
  }
*/
}