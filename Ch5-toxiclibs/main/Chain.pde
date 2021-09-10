class Chain{
  float totalLength;  //how long
  int numPoints;      // how many points
  float strength;     // Strength spring
  float radius;       // radius
  
  ArrayList<Particle> particles;
  
  VerletParticle2D tail;
  PVector offset = new PVector();
  boolean dragged = false;
  
  Chain(float l, int n , float r , float s){
    particles = new ArrayList<Particle>();
    
    totalLength = l;
    numPoints = n;
    radius = r;
    strength = s;
    
    float len = totalLength / numPoints;
    
    for(int i=0; i < numPoints; i++) {
      VerletParticle2D particle=new VerletParticle2D(width/2,i*len);
      physics.addParticle(particle);
      if (i>0) {
        VerletParticle2D previous = physics.particles.get(i-1);
        VerletSpring2D spring=new VerletSpring2D(particle,previous,len,strength);
        physics.addSpring(spring);
      }
    }
    VerletParticle2D head=physics.particles.get(0);
    head.lock();
    
    tail = physics.particles.get(numPoints-1);
  }
  
  void contains(int x, int y) {
    float d = dist(x,y,tail.x,tail.y);
    if (d < radius) {
      offset.x = tail.x - x;
      offset.y = tail.y - y;
      tail.lock();
      dragged = true;
    }
  }
  void release() {
    tail.unlock();
    dragged = false;
  }
  void updateTail(int x, int y) {
    if (dragged) {
      tail.set(x+offset.x,y+offset.y);
    }
  }
  
  void display(){
    for(int i=0; i < physics.particles.size()-1; i++) {
      VerletParticle2D p1 = physics.particles.get(i);
      VerletParticle2D p2 = physics.particles.get(i+1);
      stroke(0);
      line(p1.x,p1.y,p2.x,p2.y);
    }
    stroke(0);
    fill(175);
    ellipse(tail.x,tail.y,radius*2,radius*2);
  }
}
