class Windmill{
  RevoluteJoint joint;
  Box box1;
  Box box2;
  
  Windmill(float x, float y){
    box1 = new Box(x,y-20,120,10,false);
    box2 = new Box(x,y,10,40,true);
    
    RevoluteJointDef rjd = new RevoluteJointDef();
    
    rjd.initialize(box1.body, box2.body, box1.body.getWorldCenter());
    
    rjd.motorSpeed = PI*2;
    rjd.maxMotorTorque = 500.0;
    rjd.enableMotor = false;
    
    joint = (RevoluteJoint) box2d.world.createJoint(rjd);
    
  }
  void toggleMotor(){
    boolean motorstatus = joint.isMotorEnabled();
    joint.enableMotor(!motorstatus);
  }
  
  void display(){
    box1.display();
    box2.display();
  }  
}
