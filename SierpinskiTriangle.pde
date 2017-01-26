public void setup()
{
	size(800,800);
	background(150);


}
public void draw()
{
	int s = 400;
	int cColor = (int)Math.random()*200;
	background(cColor);
	sierpinski(200,600,s);
	//if(mouseIsPressed() == true);	
		//cColor = Math.random()*200;

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<=20){
		fill(200);
		triangle(x,y, x+len/2,y-len, x+len, y);
	}
	else {
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
		//triangle(x,y, x+len/8, y-len/4, x+len/4,y);
		//triangle(x+len/8,y-len/4,x+len*3/8,y-len/4,x+len/4,y-len/2);
		//triangle(x+len/4, y, x+len*3/8,y-len/4,x+len/2,y);
		//sierpinski(x,y,len-20);
	}
}