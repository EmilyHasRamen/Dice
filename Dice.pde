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
		

		}

	}
	PFont f;                           // STEP 1 Declare PFont variable
	f = createFont("Arial",16,true);   // STEP 2 Create Font
//	background(255);                   // white background
	textFont(f,36);                    // STEP 3 Specify font to be used
//	fill(0);                           // STEP 4 Specify font color black
	fill(255);                         // STEP 4 Specify font color white
	text("Sum = "+nSum,100,375);        // STEP 5 Display Text

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
					 
					 ellipse(myX+25, myY+25, 10, 10);
					 break;
			case 2:  
					
					 ellipse(myX+15, myY+25, 10, 10);
					 ellipse(myX+35, myY+25, 10, 10);
					 break;
			case 3:  
					
					 ellipse(myX+15, myY+15, 10, 10);
					 ellipse(myX+25, myY+25, 10, 10);
					 ellipse(myX+35, myY+35, 10, 10);
					 break;
			case 4:  
					
					 ellipse(myX+15, myY+15, 10, 10);
					 ellipse(myX+35, myY+35, 10, 10);
					 ellipse(myX+35, myY+15, 10, 10);
					 ellipse(myX+15, myY+35, 10, 10);
					 break;
			case 5:  
					 
					 ellipse(myX+15, myY+15, 10, 10);
					 ellipse(myX+35, myY+35, 10, 10);
					 ellipse(myX+35, myY+15, 10, 10);
					 ellipse(myX+15, myY+35, 10, 10);
					 ellipse(myX+25, myY+25, 10, 10);
					 break;
			case 6:  
					 
					 ellipse(myX+15, myY+15, 10, 10);
					 ellipse(myX+35, myY+35, 10, 10);
					 ellipse(myX+35, myY+15, 10, 10);
					 ellipse(myX+15, myY+35, 10, 10);
					 ellipse(myX+15, myY+25, 10, 10);
					 ellipse(myX+35, myY+25, 10, 10);
					 break;
			default: ;
		}
			

	}
}
