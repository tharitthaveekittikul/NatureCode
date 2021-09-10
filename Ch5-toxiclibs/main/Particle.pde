//class Particle extends VerletParticle2D{
  
//  float r = 10;
//  Particle(float x , float y){
//    super(x,y);
//  }
  
//  void display(){
//    fill(0,150);
//    stroke(0);
//    strokeWeight(2);
//    ellipse(x,y,r*2,r*2);
//  }
//}
class Particle extends VerletParticle2D{
  
  float r;
  Particle(Vec2D loc){
    super(loc);
    r = 4;
    physics.addParticle(this);
    //physics.addBehavior(new AttractionBehavior2D(this, r*4, -1));
  }
  
  void display(){
    fill(255);
    stroke(0);
    strokeWeight(2);
    ellipse(x,y,r*2,r*2);
  }
}
