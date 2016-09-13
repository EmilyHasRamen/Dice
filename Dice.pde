

void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{

	//your code here
	background(0);
	for(int y=10; y<=200; y+=75){
		for(int x=10; x<=200; x+=75){

		Die firstDice = new Die(x,y);
		firstDice.roll();
		firstDice.show();

		}

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
		myX=x;
		myY=y;
	}
	void roll()
	{
		//your code here
		value= (int)(Math.random()*6)+1;

	}
	void show()
	{
		//your code here
		noStroke();
		fill(255);
		rect(myX,myY,50,50,7);
		fill(0);
		
		if (value==1){
			ellipse(35, 35, 10, 10);
		}
			

	}
}


