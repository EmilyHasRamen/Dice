void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{

	//your code here
	background(25,25,25);
	int nSum = 0;
	for(int y=100; y<=290; y+=75){
		for(int x=100; x<=290; x+=75){

		Die myDie = new Die(x,y);
		myDie.roll();
		myDie.show();
		nSum += myDie.value;
		println("value="+myDie.value+"; sum="+nSum);

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

		switch (value) {
			case 1:  
					 println("roll value = "+value);
					 ellipse(myX+25, myY+25, 10, 10);
					 break;
			case 2:  
					 println("roll value = "+value);
					 ellipse(myX+15, myY+25, 10, 10);
					 ellipse(myX+35, myY+25, 10, 10);
					 break;
			case 3:  
					 println("roll value = "+value);
					 ellipse(myX+15, myY+15, 10, 10);
					 ellipse(myX+25, myY+25, 10, 10);
					 ellipse(myX+35, myY+35, 10, 10);
					 break;
			case 4:  
					 println("roll value = "+value);
					 ellipse(myX+15, myY+15, 10, 10);
					 ellipse(myX+35, myY+35, 10, 10);
					 ellipse(myX+35, myY+15, 10, 10);
					 ellipse(myX+15, myY+35, 10, 10);
					 break;
			case 5:  
					 println("roll value = "+value);
					 ellipse(myX+15, myY+15, 10, 10);
					 ellipse(myX+35, myY+35, 10, 10);
					 ellipse(myX+35, myY+15, 10, 10);
					 ellipse(myX+15, myY+35, 10, 10);
					 ellipse(myX+25, myY+25, 10, 10);
					 break;
			case 6:  
					 println("roll value = "+value);
					 ellipse(myX+15, myY+15, 10, 10);
					 ellipse(myX+35, myY+35, 10, 10);
					 ellipse(myX+35, myY+15, 10, 10);
					 ellipse(myX+15, myY+35, 10, 10);
					 ellipse(myX+15, myY+25, 10, 10);
					 ellipse(myX+35, myY+25, 10, 10);
					 break;
			default: println("roll value = invalid");
		}
			

	}
}
