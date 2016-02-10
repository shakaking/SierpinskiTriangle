public void setup()
{
	size(700,700);
	background(0);
	noFill();
	stroke(255);
}
public void draw()
{
	sierpinski(50,650,600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len >=50)
	{
		sierpinski(x, y, len/2);
		sierpinski(x+(len/2),y,len/2);
		sierpinski(x+(len/4),y-(len/2),len/2);
	}
	else
	{
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
}