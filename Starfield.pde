Particle[] particles;
void setup()
{
  size(500, 500);
  particles = new Particle[10000];
  for(int i = 0; i < particles.length; i++)
  {
  	for(int k = 0; k < 20; k ++)
  	{
  	  particles[k] = new OddballParticle();
  	}
      for(int j = 20; j < 40; j++)
    {
      particles[j] = new JumboParticle();
    }
    particles[i] = new NormalParticle();
  }
}
void draw()
{
  background(0);
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
    dColor = color(150, 139, 205);
  }
  public void move()
  {
      dX = dX + .5*dSpeed*Math.cos(dTheta);
       dY = dY + 10*dSpeed*Math.sin(dTheta);
  }
  public void show()
  {
    noStroke();
    fill(dColor, 200);
    ellipse((float)dX, (float)dY, 5, 5);
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
    dColor = color(48, 139, 255);
  }
   public void move()
  {
    dX = dX + dSpeed*Math.cos(dTheta);
    dY = dY + 2*dSpeed*Math.sin(dTheta);
  }
  public void show()
  {
    noStroke();
    fill(dColor);
    ellipse((float)dX, (float)dY, 20, 20);
  }
}
class JumboParticle extends OddballParticle
{
  void show()
  {
    fill(0, 255, 0);
    ellipse((float)dX, (float)dY, 40, 40);
  }
}
