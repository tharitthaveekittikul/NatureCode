//// Particle
//Particle p;

//void setup(){
//  size(640,360);
//  p = new Particle(new PVector(width/2,10));
//}

//void draw(){
//  background(255);
//  p.run();
//  if(p.isDead()){
//    println("Particle dead!");
//  }
//}
//--------------------------------------------------------------
// //particle more than 1

//import java.util.Iterator; 
//ArrayList<Particle> particles;
//void setup() {
//  size(640,360);
//  particles = new ArrayList<Particle>();
//}

//void draw() {
//  background(255);

//  particles.add(new Particle(new PVector(width/2,50)));

//  Iterator<Particle> it = particles.iterator();
//  while (it.hasNext()) {
//    Particle p = it.next();
//    p.run();
//    if (p.isDead()) {
//       it.remove();
//    }
//  }
//}

//--------------------------------------------------------------
////Particle System
//ArrayList<ParticleSystem> systems;

//void setup(){
//  size(640,360);
//  systems = new ArrayList<ParticleSystem>();
//}
//void draw(){
//  background(255);
//  for(ParticleSystem ps : systems){
//    ps.run();
//    ps.addParticle();
//  }
//}
//void mousePressed(){
//  systems.add(new ParticleSystem(new PVector(mouseX,mouseY)));
//}

//--------------------------------------------------------------
//// applyForce Particle System
//ParticleSystem ps;
//void setup(){
//  size(640,360);
//  ps = new ParticleSystem(new PVector(width/2,50));
//}

//void draw(){
//  background(100);
  
//  PVector gravity = new PVector(0,0.1);
//  ps.applyForce(gravity);
  
//  ps.addParticle();
//  ps.run();
//}

//--------------------------------------------------------------
//// Repeller
//ParticleSystem ps;
//Repeller repeller;

//void setup(){
//  size(640,360);
//  ps = new ParticleSystem(new PVector(width/2,50));
//  repeller = new Repeller(width/2-20,height/2);
//}

//void draw(){
//  background(100);
//  ps.addParticle();
  
//  PVector gravity = new PVector(0,0.1);
//  ps.applyForce(gravity);
  
//  ps.applyRepeller(repeller);
//  ps.run();
//  repeller.display();
//}
////--------------------------------------------------------------
//// Image
//PImage img;
//void setup(){
//  //size(640,360);
//  img = loadImage("image1.png");
//}
//void draw(){
//  //imageMode(CENTER);
//  //tint(255);
//  //image(img,width/2,height/2,width,height);
//  image(img,0,0);
//}
////--------------------------------------------------------------
//// Image Cont.
//ParticleSystem ps;
//PImage img;
//void setup(){
//  size(640,360);
//  img = loadImage("image1.png");
//  //float vx = (float) generator.nextGaussian()*0.3;
//}
//void render(){
//  imageMode(CENTER);
//  tint(255);
//  image(img,width/2,height/2,width,height);
//}
//void draw(){
//  background(0);
  
//  float dx = map(mouseX,0,width,-0.2,0.2);
//  PVector wind = new PVector(dx,0);
//  ps.applyForce(wind);
//  ps.run();
//  for(int i = 0; i < 2; i++){
//    ps.addParticle();
//  }
//}
