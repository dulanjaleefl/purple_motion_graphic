// y = 5x

// x = 5t
// y = 3t + 3

static final int NUM_LINES = 50;

float t;

int c;

void setup(){
  background(20);
  size(500, 500);
}

void draw(){
  background(17, 0, 1);
 stroke(0, 0, 0);
  strokeWeight(2);
  translate(width/2, height/2);
  for (int i = 0; i < NUM_LINES; i++) {
  line(x1(t + i), y1(t + i), x2(t +i), y2(t + i));
  stroke(i*3, 0, i*2 );
  }
  t += 0.5;
 
}

float x1(float t){
  return sin(t / 10) * 5 + sin(t / 15) * 100;
}

float y1(float t){
  return cos(t / 10) * 220 + sin(t / 5) * 20;
}

float x2(float t){
  return sin(t / 10) * 200 + sin(t) * 2;
}

float y2(float t){
  return cos(t /10) * 20 + cos(t /12) * 20;
}