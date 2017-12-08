FingerLeap finger ;

void setup() {
  size(800,600, P3D) ;
  finger = new FingerLeap() ;
  colorSetup() ;
}

void draw() {
  background(0) ;
  //println(finger.activefingers) ;
   finger.update() ;
   leap_finger_single_info(finger) ;
   leap_finger_average_info(finger, 0.05) ;
   
   
   textSize(150) ;
   text(finger.activefingers, width/2, height/2) ;
  
  //PVector verticalRange = new PVector(.2,.5) ; // int the order width, height, depth scale 0 to 1
}




//COLOR
color rouge, noir, blanc, gris ;

void colorSetup() {
  colorMode (HSB, 360,100,100) ;
  blanc = color(0,0,100);
  rouge = color(10,100,100);
  noir = color(10,100,0);
  gris = color(10,50,50);
}