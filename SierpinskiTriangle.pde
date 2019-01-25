int s = 400;
public void setup()
{
	background(0);
	size(500,502);
}
public void draw()
{
	sierpinski(50,450,400);
}
public void mousePressed()//optional
{
	s = s/2;
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
public void sierpinski(int x, int y, int len) 
{
	if (len <= s)
		triangle(x, y, x+len/2, y-len, x+len,y);
	else {
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}