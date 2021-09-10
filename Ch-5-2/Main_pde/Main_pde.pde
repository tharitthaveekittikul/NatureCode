import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing box2d;

//// mouse
//Box box;
//Spring spring;
//void setup(){
//  size(400,300);
//  box2d = new Box2DProcessing(this);
//  box2d.createWorld();
//  box2d.setGravity(0,-20);
  
//  box = new Box(width/2,height/2);
//  spring = new Spring();
//}
//void mousePressed(){
//  if(box.contains(mouseX,mouseY)){
//    spring.bind(mouseX,mouseY,box);
//  }
//}

//void mouseReleased(){
//  spring.destroy();
//}
//void draw(){
//  background(255);
//  box2d.step();
//  spring.update(mouseX,mouseY);
//  box.display();
//  spring.display();
//}
//----------------------------------------------
////CollisionListener

//ArrayList<Particle> particles;
//Boundary wall;

//void setup(){
//  size(400,300);
//  smooth();
  
//  box2d = new Box2DProcessing(this);
//  box2d.createWorld();
  
//  box2d.listenForCollisions();
  
//  particles = new ArrayList<Particle>();
//  wall = new Boundary(width/2,height-5,width,10);
  
//}

//void draw(){
//  background(255);
  
//  if(random(1) < 0.1){
//    float sz = random(4,8);
//    particles.add(new Particle(random(width), 20 ,sz));
//  }
  
//  box2d.step();
  
//  for(int i = particles.size()-1; i >= 0; i--){
//    Particle p = particles.get(i);
//    p.display();
//    if(p.done()){
//      particles.remove(i);
//    }
//  }
//  wall.display();  
//}

//void beginContact(Contact cp){
//  Fixture f1 = cp.getFixtureA();
//  Fixture f2 = cp.getFixtureB();
  
//  Body b1 = f1.getBody();
//  Body b2 = f2.getBody();
  
//  Object o1 = b1.getUserData();
//  Object o2 = b2.getUserData();
  
//  if(o1.getClass() == Particle.class && o2.getClass() == Particle.class){
//    Particle p1 = (Particle) o1;
//    p1.change();
//    Particle p2 = (Particle) o2;
//    p2.change();
//  }
//}

//void endContact(Contact cp){

//}

//----------------------------------------------
