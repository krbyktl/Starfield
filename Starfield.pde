NormalParticle[] particles;
void setup()
{
  size(500, 500);
}
void draw()
{
  background(255);
  particles = new NormalParticle[10];
  for(int i = 0; i < particles.length; i++)
  {
  	particles[i] = new NormalParticle();
  }
  for(int i = 0; i < particles.length; i++)
  	particles[i].move();
 	particles[i].show();
  }
}
class NormalParticle
{
  double dX, dY, dTheta, dSpeed;
  color dColor;
  NormalParticle()
  {
    dX = 250;
    dY = 250;
    dTheta = (double)(Math.random()*(2*Math.PI));
    dSpeed = (double)(Math.random()*10);
  }
  void move()
  {
    dX = dX + dSpeed*Math.cos(dTheta);
    dY = dY + dSpeed*Math.sin(dTheta);
  }
  void show()
  {
    fill(0);
    ellipse((float)dX, (float)dY, 10, 10);
  }

}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}

