//your code here
Particle [] one = new Particle [110];
void setup()
{
  //your code here
  size(500,500);
  for(int i=1; i<110; i++)
  {
    one [i] = new NormalParticle();
  }
  one[1] = new OddballParticle();
  one[2] = new JumboParticle();
}
void draw()
{
  //your code here
  background(0);
  for(int i=1; i<100; i++)
  {
    one[i].move();
    one[i].show();
  }
}
class NormalParticle implements Particle
{
  //your code here
  double myX, myY, speed, angle;
  int myColor;
    NormalParticle () 
    {
      myX = 250;
      myY = 250;
      speed = Math.random()*4;
      angle = Math.PI*2*Math.random();
      myColor = (int)(Math.random()*256);
    }
  public void move() 
  {
    myX = (Math.cos(angle)*speed) + myX;
    myY = (Math.sin(angle)*speed) + myY;
  }
  public void show()
  {
    fill(myColor, 20, 150);
    ellipse((float)myX, (float)myY, 6,6);
  }
}
interface Particle
{
  //your code here
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
   double myX, myY, speed, angle;
   int myColor;
   OddballParticle () 
    {
      myX = 250;
      myY = 250;
      speed = Math.random()*6;
      angle = Math.PI*2*Math.random();
      myColor = (int)(Math.random()*256);
    }
  public void move() 
  {
    myX = (Math.cos(angle)*speed) + myX;
    myY = (Math.sin(angle)*speed) + myY;
  }
  public void show()
  {
    fill(0, myColor, 100);
    ellipse((float)myX, (float)myY, 30,30);
  }
}

class JumboParticle extends NormalParticle
{
	int myColor;
	double speed;
	JumboParticle()
	{
		myColor = (200);
		speed = Math.random()*3;
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,100,100);
	}
}