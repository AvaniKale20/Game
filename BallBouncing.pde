public class Ball {

  private int x;
  private int y;
  private int diameter;
  private int takeNextStepTowardsX;
  private int takeNextStepTowardsY;

//Consrtuctor
  public Ball(int x, int y, int diameter, int takeNextStepTowardsX, int takeNextStepTowardsY)
  {
    this.x=x;
    this.y=y;
    this.diameter=diameter;
    this.takeNextStepTowardsX=takeNextStepTowardsX;
    this.takeNextStepTowardsY=takeNextStepTowardsY;
  }

//Setter & Getter 

 public void setTakeNextStepTowardsX(int takeNextStepTowardsX) {
    this.takeNextStepTowardsX=takeNextStepTowardsX;
  }
  public void setTakeNextStepTowardsY(int takeNextStepTowardsY ) {
    this.takeNextStepTowardsY=takeNextStepTowardsY;
  }
  public int getTakeNextStepTowardsX()
  {
    return this.takeNextStepTowardsX;
  }

  public int getTakeNextStepTowardsY ()
  {
    return this.takeNextStepTowardsY;
  }
   public void moveX(int x)
  {
   this.x=x;
  }
   public int getX() {
    return this.x;
  }
   public int getY() {
    return this.y;
  }
  public int getDiameter() {
    return this.diameter;
  }
 
 //Behaviour
  public boolean isCollidingWithRectangle() {
    if (movementOfBall() > 450) {
      noLoop();
      return true;
    }
    return false;
  }

  public boolean isCollidingWithVerticleWalls() {
    if (getY()+(getDiameter()/2) > height || getY()-(getDiameter()/2 )<0 )
    {
      return true;
    }
    return false;
  }
  public boolean isCollidingWithHorizontalWalls() {
    if (getX()+(getDiameter()/2) > height || getX()-(getDiameter()/2) <0 )
    { return true;
    }
    return false;
  }

 public boolean isCollidingWithObstacles() {
      if(movementOfBall() > 70 && ((y==70 && x>=0 && x<=100))){
       noLoop();
      return true;
    }
     if(movementOfBall() > 70 && ((y==70 && x>=150 && x<=340))){
       noLoop();
      return true;
    }
    if(movementOfBall() > 70 && ((y==70 && x>=400 && x<=500))){
       noLoop();
      return true;
    }
    if(movementOfBall() > 150 && (y==150 && x>=40 && x<=370)){
       noLoop();
      return true;
    }
    if(movementOfBall() > 210 && ((y==210 && x>=200 && x<=499))){
       noLoop();
      return true;
    }
    if(movementOfBall() > 280 && (y==280 && x>=40 && x<=340)){
       noLoop();
      return true;
    }
      if(movementOfBall() > 350 && (y==350 && x>=0 && x<=170)){
       noLoop();
      return true;
    }
     if(movementOfBall() > 370 && (y==370 && x>=300 && x<=500)){
       noLoop();
      return true;
    }
    return false;
  }
 public int movementOfBall()
 {
    return  getY()+ (getDiameter());
 }
  
   public void move() {
    x=x+takeNextStepTowardsX;
    y=y+takeNextStepTowardsY;
  }
  public void display() {
    ellipse(x, y, diameter, diameter);

    int verticleDistance=70;
    stroke(#E3D5D5);
    strokeCap(ROUND);
    rect(0, 450, 499, 30);
    
    strokeWeight(4);
    line(0, verticleDistance, 100, verticleDistance);
    line(150, verticleDistance, 340, verticleDistance);
    line(400, verticleDistance, 500, verticleDistance);
    line(40, 150, 370,150);
    line(200, 210, 499, 210);
    line(40, 280, 340, 280);
    line(0, 350, 170, 350);
    line(300,370,500,370);
  }
   public void checkCollisionWithWalls() {
    
    if ( isCollidingWithVerticleWalls() || isCollidingWithHorizontalWalls() || isCollidingWithObstacles() )
    {
      fill(#D12C2C);
      textSize(50);
      text("Dumboo..U r looser", 0, 200);
    } else 
    if (isCollidingWithRectangle()) 
    {
     fill(#D12C2C);
     textSize(50);
     text("U r Winner", 0, 200);
    }
  }

}
