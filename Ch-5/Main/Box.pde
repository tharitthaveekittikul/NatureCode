import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.collision.shapes.*;

class Box{
  Body body;
  float x,y;
  float w,h;
  
  Box(float x_,float y_, float w_, float h_, boolean b){
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    BodyDef bd = new BodyDef();
    if (b == true){
      bd.type = BodyType.STATIC;
    }
    else{
      bd.type = BodyType.DYNAMIC;
    }    
    
    bd.position.set(box2d.coordPixelsToWorld(mouseX,mouseY));
    body = box2d.createBody(bd);
    
    PolygonShape ps = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    ps.setAsBox(box2dW,box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = ps;
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;
    
    body.createFixture(fd);
  }
  
  void display(){
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-a);  
    fill(175);
    stroke(0);
    strokeWeight(2);
    rectMode(CENTER);
    rect(x,y,w,h);
    popMatrix();
  }
  
  void killBody(){
    box2d.destroyBody(body);
  }
}
