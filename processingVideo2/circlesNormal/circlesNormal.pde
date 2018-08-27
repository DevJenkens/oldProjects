//Variables
int count = 0;
int interval = 0;
float removalInterval;


ArrayList<Circle> circles = new ArrayList<Circle>();

void setup() {
  size(600, 600);
  //fullScreen();
  removalInterval = width*1.8;
  frameRate(60);
  
  //Change stroke color and weight
  stroke(255,215,0);
  strokeWeight(7);
 
}

void draw() {
  background(0);
  //Handle Circles
  if (count >= interval) circles.add(new Circle()); //Adding new circles
  if (count >= removalInterval) circles.remove(0); //Removing all circles
  if (count >= interval) interval += 90; //How often to spawn circles (reduce for faster, increase for longer time between spawns)
  if (count >= removalInterval) removalInterval += 90; //How often to remove circles
  for(int i = 0; i < circles.size(); i++) {
    circles.get(i).update(); //Update circles
  }
  count++;
  
}
