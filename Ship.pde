

class Ship extends GameObject{
  int bulletCoolDown = 600;

  Ship(PImage img, PVector loc, PVector vel){
    super(img, loc, vel);
    acc = new PVector(random(-0.05, 0.05),random(-0.05, 0.05) );
    this.img = img;
    
  }
  
  void display(){
    float theta = vel.heading() + radians(90);
    pushMatrix();
      translate(loc.x, loc.y);
      rotate(theta);
      image(img, 0,0);
      text(" " + loc.x, 30, 0);
      text(" " + loc.y, 30, 20);
    popMatrix();
    makeBullet();
  }
  
  void makeBullet(){
    float angle = vel.heading();
    angle = radians(angle);
    if(fireBullet){
      bullets.add(new Bullet(loc, angle));    
      fireBullet = false;
    }
  }
}
