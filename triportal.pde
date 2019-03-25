
Tri t;
Tri [] tris= new Tri [20];
int whichTri = 0;


int x=0;
int y=0;
int w=0;
int h=0;
int frameCount= 0;

void setup() {
for (int i =0; i<20; i++){
  tris[i] = new Tri();
}
  t= new Tri();
  size(640, 360);
 // background (255);
  frameRate (20);


  

}


void draw() {
 background(255);
 translate (width/2, height/2);
  frameCount ++;
  if (frameCount == 18){
    frameCount =0;
    whichTri++;
    whichTri = whichTri % 20;
    tris[whichTri].initialize();
  }



    for (int i = 0; i< 20; i++){
      if (tris[i].visible()){
        tris[i].display();
      }
 }
 
  println (frameCount);

  

 



}




class Tri {
  float size =0;
  boolean visible = true;
  
  void tri(float x, float y, float w, float h) {
  
    triangle(x, y,  x+w/2, y-h,  x+w, y);
 
noFill();
  }
  void display() {
    x-=2;
    y+=2;
    w+=4 ;  
    h+=4;

    tri(x,y,w,h);
    
  }
  
  boolean visible(){
    return visible;
  }
  
  void initialize(){
    x = 0;
    y = 0;
    w = 0;
    h = 0;
  }
}
