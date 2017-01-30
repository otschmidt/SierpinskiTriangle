public void setup()
{
	size(800,800);
	background(150);


}
public void draw()
{
	int s = 400;
	int cColor = (int)Math.random()*200;
	background(255);
	sierpinski(50,750,mouseX);

}
public void mousePressed()//optional
{
	redraw();
}
public void sierpinski(int x, int y, int len) //left
{
	if(len<=20){
		fill((int)(Math.random()*255));
		triangle(x,y, x+len/2,y-len, x+len, y);
	}
	else {
		fill((int)(Math.random()*255));
		sierpinski(x,y,len/2);
		fill((int)(Math.random()*255));
		sierpinski(x+len/2,y,len/2);
		fill((int)(Math.random()*255));
		sierpinski(x+len/4,y-len/2,len/2);
		
	}
}
public void sierpinskiRight(int x, int y, int len) //right
{
	if(len<=20){
		fill((int)Math.random()*255);
		triangle(x,y, x+len/2,y-len, x+len, y);
	}
	else {
		fill((int)Math.random()*255);
		sierpinski(x,y,len/2);
		fill((int)Math.random()*255);
		sierpinski(x+len/2,y,len/2);
		fill((int)Math.random()*255);
		sierpinski(x+len/4,y-len/2,len/2);
		
	}
}