
int Tsize = 800;
boolean maxTrig = false;

public void setup()
{
 Tsize(800,800);
 frameRate(60);
}
public void draw()
{
 background(0);
 sierpinski(0, 800, size);
 if(Tsize == 3400){
 maxTrig = true;
 }
 if(Tsize == 800){
 maxTrig = false;
 }
 
 if(maxTrig){
   Tsize-=50;
 }
 else{
   Tsize+=50;
 }
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
 if(len <= 10){ //base case
    triangle(x, y, x+len/2, y-len, x+len, y);
 }
 else{
   sierpinski(x, y, len/2); //make another smaller triangle @ bottom left
   sierpinski(x+len/2, y, len/2); //smaller triangle @ right
   sierpinski(x+len/4, y-len/2, len/2); //middle triangle 
 }
 
}
