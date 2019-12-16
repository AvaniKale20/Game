
Ball ball=new Ball(5,36,15,1,1);
void setup(){
   size(500,500);
}
void draw(){
  background(0);
  ball.display();
  ball.move();
  ball.checkCollisionWithWalls();
  ball.moveX(mouseX);


}
