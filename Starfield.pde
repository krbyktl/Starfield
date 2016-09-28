Particle[] particles;
void setup()
{
  size(500, 500);
  particles = new Particle[100];
  for(int i = 0; i < particles.length; i++)
  {
    particles[0] = new OddballParticle();
    particles[1] = new JumboParticle();
    particles[i] = new NormalParticle();
  }
}
void draw()
{
  background(0, 100, 100);
  for(int i = 0; i < particles.length; i++)
  {
   particles[i].move();
   particles[i].show();
  }
}
class NormalParticle implements Particle
{
  double dX, dY, dTheta, dSpeed;
  color dColor;
  NormalParticle()
  {
    dX = 250;
    dY = 250;
    dTheta = (double)(Math.random()*(2*Math.PI));
    dSpeed = (double)(Math.random()*10);
    dColor = color(48, 139, 205);
  }
  public void move()
  {
    dX = dX + dSpeed*Math.cos(dTheta);
    dY = dY + dSpeed*Math.sin(dTheta);
  }
  public void show()
  {
  	noStroke();
    fill(dColor, 200);
    ellipse((float)dX, (float)dY, 10, 10);
  }

}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double dX, dY, dTheta, dSpeed;
  color dColor;
  OddballParticle()
  {
    dX = 250;
    dY = 250;
    dTheta = (double)(Math.random()*(2*Math.PI));
    dSpeed = (double)(Math.random()*10);
    dColor = color(48, 139, 205);
  }
   public void move()
  {
    dX = dX + dSpeed*Math.cos(dTheta);
    dY = dY + dSpeed*Math.sin(dTheta);
  }
  public void show()
  {
  	noStroke();
    fill(dColor, 100);
    ellipse((float)dX, (float)dY, 20, 20);
  }
}
class JumboParticle extends OddballParticle
{
  void show()
  {
    ellipse((float)dX, (float)dY, 40, 40);
  }
}

