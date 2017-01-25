public void setup()
{
	size(800,800);
	background(0);

}
public void draw()
{
	sierpinski(200,600,500);

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len==20)\fill(0);
		triangle(x,y, x+len/4,y-len/2, x+len/2, y);
	else {
		triangle(x,y, x+len/8,y-len/4, x+len/4, y);
		triangle(x-len/2,y,)
		triangle(x+len/2, y, x+len/6,y-len/2,x+len,y);
		sierpinski(x,y,len-10);
	}
}