// void leapFingerSingleInfo(FingerLeap fl) {
void leap_finger_single_info(FingerLeap fl) {
  if(fl.is()) {
    for(int i = 0; i < fl.get_num() ; i++) {
      if(fl.visible()[i]) {
        //display info
        pushMatrix() ;
        
        Vec3 pos = Vec3(fl.get_pos()[i].x*width, 
                        height -fl.get_pos()[i].y*height, 
                        fl.get_pos()[i].z *(width+height) -((width+height)/2)) ;
        translate(pos) ;
        rotateX(fl.get_pitch()[i] +0.7) ;
        rotateY(fl.get_roll()[i] +0.9) ;
        rotateZ(fl.get_yaw()[i] +0.9) ;
    
        fill(blanc) ;
        textSize(12) ;
        text("My name is " + fl.get_ID()[i], 0, 0) ;
        fill(rouge) ;
        text("my position is " + (int)pos.x + " / " + (int)pos.y + " / " + (int)pos.z, 0,12) ;
        text("my direction is " + fl.get_dir()[i], 0,24) ;
        text("my XXX oriantation " + fl.get_pitch()[i]+"°", 0,36) ;
        text("my YYY oriantation " + fl.get_roll()[i]+"°", 0,48) ;
        text("my ZZZ oriantation " + fl.get_yaw()[i]+"°", 0,60) ;
        String mag = String.format("%.5f", fl.get_mag()[i]) ;
        text("my magnitude " + mag, 0,60) ;
        popMatrix() ;
      }
    }
  }
}


// void leapFingerAverageInfo(FingerLeap fl, float speed) {
void leap_finger_average_info(FingerLeap fl, float speed) {
  fl.set_speed(speed) ;
  //average fingers info position
  if(fl.is()) {
    for(int i = 0; i < fl.get_num() ; i++) {  
      pushMatrix() ;
      // println("Average", fl.averageNormPos) ;
      Vec3 pos = Vec3(fl.get_average_pos().x *width, height -fl.get_average_pos().y *height,fl.get_average_pos().z  *(width+height) -((width+height)/2)) ;
      translate(pos) ;
      
      fill(blanc) ;
      textSize(24) ;
      text("Average position fingers", 0,0 ) ;
      textSize(12) ;
      fill(rouge) ;
      text("my position is " + (int)pos.x + " / " + (int)pos.y + " / " + (int)pos.z, 0,12) ;
      text("my direction is " + fl.get_average_dir().x + " / " + fl.get_average_dir().y + " / " + fl.get_average_dir().z, 0,24) ;
      popMatrix() ;
    }
  }
}





/*
void leapFingerAverageInfo(PVector range) {
  //average fingers info position
    
    pushMatrix() ;
    translate(averagePosition(true,range).x, averagePosition(true,range).y,averagePosition(true,range).z ) ;
    fill(blanc) ;
    textSize(30) ;
    text("Average position fingers", 0,0 ) ;
    textSize(12) ;
    fill(rouge) ;
    text("my position is " + (int)averagePosition(true,range).x + " / " + (int)averagePosition(true,range).y + " / " + (int)averagePosition(true,range).z, 0,12) ;
    
    popMatrix() ;
}
*/