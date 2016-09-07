


void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{

	//your code here
	background(0);
	for(int x=20;  x<350; x = x + 135){
		Die firstDice = new Die(x,150);
		firstDice.show();

	}

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int value;
	int myX, myY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		value= (int)(Math.random()*7);
		myX=x;
		myY=y;
	}
	void roll()
	{
		//your code here

	}
	void show()
	{
		//your code here
		noStroke();
		fill(255);
		rect(myX,myY,75,75,7);
		fill(0);

	}
}
