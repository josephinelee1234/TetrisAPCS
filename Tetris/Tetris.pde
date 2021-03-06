//import processing.sound.*;//says this doesn't exist
Background bg = new Background();
Piece piece;
int time = 0;
float targetTime = 50;
boolean gameOver = false;
boolean pause = false;
int pauseCount = 0;
//WhiteNoise noise;


public void setup(){
  size(1000,1000);
  //The board is made up of a 10x20 grid of 50x50 squares.
  background(0);
  strokeWeight(3);
  stroke(150);
  for (int i=0; i<1000 ; i+=50) {
    line(0,i,500,i);
  }
  for (int i=0; i<500 ; i+=50) {
    line(i,0,i,1000);
  }
  
}
void draw(){
    background(0);
    bg.display();
    stroke(150);
    for (int i=0; i<1000 ; i+=50) {
      line(0,i,500,i);
    }
    for (int i=0; i<=500 ; i+=50) {
      line(i,0,i,1000);
    }
    fill(200);
    textSize(40);
    text("Press space to pause", 550,100);
    text("Score: " + bg.getScore(),700,200);
    text("High Score: " + bg.getHighScore(),650,300);
    if (bg.over()) {
      text("Game Over",650,500);
      text("Click to Restart",600,600);
      /*noise = new WhiteNoise(this);
      noise.amp(1);
      noise.play();*/
      

    }
    else {
    if (!pause && pauseCount%2 == 0){
    if (time < targetTime) {
      time++;
    }
    else {
      if (! bg.down()) {
        int bonus = -100;
        for (int row=19; row>0; row--) {
          if (bg.checkForLine(row)) {
            row++;
            bonus+=100;
          }
        }
        if (bonus>0) {
          bg.increaseScore(bonus);
        }
        bg.newPiece();
      }
      time = 0;
      targetTime-=.01;
    }
    }
    }
}

public void keyReleased(){
  if (key == ' ') {
    pauseCount++;
    if (pauseCount%2==0){
      pause = false;
    }
    else{
      pause = true;
    }

  }
  if(pause==false && keyCode==UP){
      bg.rotatePiece();
  }
  if(pause==false && keyCode==SHIFT){
      bg.shiftDownContinuously();
  }
}

public void keyPressed(){
  //println(keyCode);
  if (pause==false) {
  if(keyCode==RIGHT){
    if (! bg.over()) {
      bg.right();
    }
  } 
  else if(keyCode==LEFT){
    if (! bg.over()) {
      bg.left();
    }
  } 
  else if(keyCode==DOWN){
    if (! bg.over()) {
      if(bg.down()){
        bg.increaseScore(1);
      }
    }
  }
  }
}

void mouseClicked() {
  if (bg.over()){
    //noise.amp(0);
    bg.restart();
  }
}
