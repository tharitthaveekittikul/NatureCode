import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing box2d;

//void setup(){
//  box2d = new Box2DProcessing(this);
//  box2d.createWorld();
//  box2d.setGravity(0,-10);
  
//  Vec2 gravity = new Vec2(0,-10);
//  Vec2 mouseWorld = box2d.coordPixelsToWorld(mouseX,mouseY);
//  Vec2 worldPos = new Vec2(-10,25);
//  Vec2 pixelPos = box2d.coordWorldToPixels(worldPos);
//  ellipse(pixelPos.x,pixelPos.y,16,16);
//}
//-----------------------------------------------------------------

////Box
//ArrayList<Box> boxes;

//void setup(){
//  size(400,300);
//  boxes = new ArrayList<Box>();
//}

//void draw(){
//  background(255);
  
//  if(mousePressed){
//    Box p = new Box();
//    boxes.add(p);
//  }
  
//  for(Box b: boxes){
//    b.display();
//  }
//}
//------------------------------------------------------------------

////Use Box2DProcessing
//ArrayList<Box> boxes;
//Boundary boundary;
//void setup(){
//  size(640,360);
//  box2d = new Box2DProcessing(this);
//  box2d.createWorld();
//  boxes = new ArrayList<Box>();
//  boundary = new Boundary(100,100,200,100);
  
//}
//void draw(){
//  background(255);
//  boundary.display();
//  box2d.step();
//  if(mousePressed){
//    Box p = new Box();
//    boxes.add(p);
//  }
  
//  for(Box b: boxes){
//    b.display();
//  }
  
//}
//------------------------------------------------------------------
//// surface
//Surface surface;
//ArrayList<MShape> ms;
//void setup(){
//  size(500,300);
//  box2d = new Box2DProcessing(this);
//  box2d.createWorld();
//  ms = new ArrayList<MShape>();
  
//  surface = new Surface();
//}
//void draw(){
//  box2d.step();
//  background(255);
//  surface.display();
  
//  if(mousePressed){
//    MShape m = new MShape();
//    ms.add(m);
//  }
  
//  for(MShape m: ms){
//    m.display();
//  }
//}
//------------------------------------------------------------------
//// surface 2 with particle
//Surface surface;
//ArrayList<Particle> ms;
//void setup(){
//  size(500,300);
//  box2d = new Box2DProcessing(this);
//  box2d.createWorld();
//  ms = new ArrayList<Particle>();
  
//  surface = new Surface();
//}
//void draw(){
//  box2d.step();
//  background(255);
//  surface.display();
  
//  if(mousePressed){
//    Particle m = new Particle(mouseX,mouseY);
//    ms.add(m);
//  }
  
//  for(Particle m: ms){
//    m.display();
//  }
//}
//------------------------------------------------------------------
//MultiShape 2 object 
ArrayList<MShape2> ms;
Boundary bd;
Boundary bd2;
void setup(){
  size(500,300);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  ms = new ArrayList<MShape2>();
  bd = new Boundary(30,100,200,20);
  bd2 = new Boundary(250,200,100,10);
}
void draw(){
  box2d.step();
  background(255);
  bd.display();
  bd2.display();
  if(mousePressed){
    MShape2 m = new MShape2();
    ms.add(m);
  }
  for(MShape2 m : ms){
    m.display();
  }
}
//------------------------------------------------------------------
////Particle
//Particle pc;
//void setup(){
//  size(400,500);
//  box2d = new Box2DProcessing(this);
//  box2d.createWorld();
//  pc = new Particle(width/2,height/2);
  
//}
//void draw(){
//  box2d.step();
//  background(255);
//  pc.display();
//}
//------------------------------------------------------------------
//// Pair with void mouseClicked
//ArrayList<Pair> pair;
//void setup(){
//  size(500,300);
//  box2d = new Box2DProcessing(this);
//  box2d.createWorld();
//  pair = new ArrayList<Pair>();
//}
//void draw(){
//  box2d.step();
//  background(255);
//  for(Pair p : pair){
//    p.display();
//  }
//}
//void mouseClicked(){
//  Pair p = new Pair(mouseX,mouseY);
//  pair.add(p);
//}
////------------------------------------------------------------------
//// motor windmill
//Windmill wm;
//void setup(){
//  size(500,300);
//  box2d = new Box2DProcessing(this);
//  box2d.createWorld();
//  wm = new Windmill(width/2,height/2);
//}
//void draw(){
//  box2d.step();
//  background(255);
//  wm.display();
//}
//void mousePressed(){
//  wm.toggleMotor();
//}
