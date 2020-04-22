ArrayList<PImage> gif;
int x = 0;


void setup(){
 size(450,450);
 
 gif = new ArrayList<PImage>();
 int i = 0;
 while (i < 59){
   String zero = "";
   if (i < 10) zero = "0";
   gif.add(loadImage("frame_" + zero + i + "_delay-0.03s.gif"));
   i++;
 }
 
}

void draw() {
  PImage frame = gif.get(x);
  image(frame, 0, 0, width, height);
  x++;
  if (x > 58) x = 0;
}
