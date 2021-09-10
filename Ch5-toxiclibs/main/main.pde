import toxi.physics2d.*;
import toxi.physics2d.behaviors.*;
import toxi.geom.*;

//// use toxiclib spring
//Particle p1;
//Particle p2;
//VerletPhysics2D physics;
//void setup(){
//  size(640,360);
//  physics = new VerletPhysics2D();
//  physics.setWorldBounds(new Rect(0,0,width,height));
//  physics.addBehavior(new GravityBehavior2D(new Vec2D(0,0.5)));
  
//  p1 = new Particle(width/2,20);
//  p2 = new Particle(width/2+160,20);
//  p1.lock();
  
//  VerletSpring2D spring = new VerletSpring2D(p1,p2,160,0.01);
  
//  physics.addParticle(p1);
//  physics.addParticle(p2);
//  physics.addSpring(spring);
  
//}
//void draw(){
//  physics.update();
  
//  background(255);
  
//  line(p1.x,p1.y,p2.x,p2.y);
//  p1.display();
//  p2.display();
  
//  if(mousePressed){
//    p2.lock();
//    p2.x = mouseX;
//    p2.y = mouseY;
//    p2.unlock();
//  }
//}
//--------------------------------------------------------
// arraylist
//VerletPhysics2D physics;
//Chain chain;
//void setup(){
//  size(400,300);
//  smooth();

//  physics=new VerletPhysics2D();
//  physics.addBehavior(new GravityBehavior2D(new Vec2D(0,0.1)));
//  physics.setWorldBounds(new Rect(0,0,width,height));

//  chain = new Chain(200,20,12,0.2);
//}
//void draw() {
//  background(255);
//  physics.update();
//  chain.updateTail(mouseX,mouseY);
//  chain.display();
//}

//void mousePressed() {
//  chain.contains(mouseX,mouseY);
//}

//void mouseReleased() {
//  chain.release();
//}
//--------------------------------------------------------
////Cluster

//boolean showPhysics = true;
//boolean showParticles = true;

//VerletPhysics2D physics;
//ArrayList<Cluster> clusters;

//void setup(){
//  size(600,600);
//  smooth();
//  frameRate(30);
  
//  physics = new VerletPhysics2D();
//  physics.setWorldBounds(new Rect(10,10,width-20,height-20));
//  newGraph();
//}
//void newGraph(){
//  physics.clear();
//  clusters = new ArrayList<Cluster>();
//  for(int i = 0; i < 8; i++){
//    Vec2D center = new Vec2D(width/2,height/2);
//    clusters.add(new Cluster((int) random(3,8), random(20,100),center));
    
//  }
  
//  for(int i = 0; i < clusters.size(); i++){
//    for(int j = i+1; j < clusters.size(); j++){
//      Cluster ci = (Cluster) clusters.get(i);
//      Cluster cj = (Cluster) clusters.get(j);
//      ci.connect(cj);
//    }
//  }
//}
//void draw(){
//  physics.update();
//  background(255);
//  if(showParticles){
//    for(int i = 0; i < clusters.size(); i++){
//      Cluster c = (Cluster) clusters.get(i);
//      c.display();
//    }
//  }
//  if(showPhysics){
//    for(int i = 0; i < clusters.size(); i++){
//      Cluster ci = (Cluster) clusters.get(i);
//      ci.showConnections();
//      for(int j = i + 1; j < clusters.size(); j++){
//        Cluster cj = (Cluster) clusters.get(j);
//        ci.showConnections(cj);
//      }
//    }
//  }
//  fill(0);
//}
//void keyPressed() {
//  if (key == 'c') {
//    showPhysics = !showPhysics;
//    if (!showPhysics) showParticles = true;
//  } 
//  else if (key == 'p') {
//    showParticles = !showParticles;
//    if (!showParticles) showPhysics = true;
//  } 
//  else if (key == 'n') {
//    newGraph();
//  }
//}
//--------------------------------------------------------
// Attraction
import java.util.Iterator; 
VerletPhysics2D physics;
Attractor attractor;
ArrayList<Particle> particles;
int count = 20;
void setup(){
  size(640,360);
  physics = new VerletPhysics2D();
  physics.setWorldBounds(new Rect(10,10,width-20,height-20));
  //physics.addBehavior(new GravityBehavior2D(new Vec2D(0,0.1)));
  attractor = new Attractor(new Vec2D(width/2,height/2));
  particles = new ArrayList<Particle>();
  
}
void draw(){
  physics.update();
  background(255);
  noStroke();
    
  Iterator<Particle> it = particles.iterator();
  while(it.hasNext()){
    Particle pa = it.next();
    pa.display();
  }
  attractor.display();
}
void keyPressed(){
  if(key == 'c'){
    Particle p = new Particle(new Vec2D(random(width),random(height)));
    particles.add(p);
  }  
}


//--------------------------------------------------------
