//Niko Mears 5-23-17
int x = 420;
int y = -62;
int s = 0;
int m = 0;
int deltaS = 1;
int deltaM = 1;
int radius = 20;
int score = 0;
int time = 0;
float ballx = random(40, 1100);
float bally = random(260, 750);
float deltaX = 1;//change in x position
float deltaY = 1;//change in y position
float speed = 2;
PFont font1;
PFont font2;

void setup(){ //window
  size(1200, 800);
  font1 = loadFont("LatinWide-48.vlw");
  font2 = loadFont("AgencyFB-Reg-40.vlw");
}

void draw(){
  fill(0);
  background(255, 80, 80);
  fill(215, 80, 80);
  rectMode(CORNER);
  rect(410, 0, 372, 233);
  fill(0);
  ellipse(ballx, bally, radius, radius);//ball
  

  if(ballx > 1200 - radius){
    deltaX = -deltaX; //ball collision
  }
  if(bally > radius){
    deltaY = -deltaY;
  }
  if(bally < 800 - radius);{
    deltaY = -deltaY;
  }
  if(ballx < radius){
    deltaX = -deltaX;
  }
  ballx = ballx + deltaX * speed;
  bally = bally + deltaY * speed; 
  
  if ((ballx > mouseX-80) && (ballx < mouseX+80)){ //paddle collision
    if(bally+radius > 780){
      deltaY = -deltaY;
    }
  }
  if((ballx > 410) && (ballx < 782) && (bally - radius < 233)){
      deltaY = -deltaY;
      speed ++;
      score ++;
      background(255);
    }

  if(( bally + radius < 233) && (bally + radius > 0)){
    if((ballx - radius < 783) && (ballx + radius > 410)){
      deltaX = -deltaX;
      speed ++;
      score ++;
      background(255);
    }
  }
  if(bally > 800){
    background(0);
    fill(255, 0, 0);
    text("YOU LOSE", 360, 400);
    deltaX = 0;
    deltaY = 0;
    deltaS = 0;
    deltaM = 0;
    
  }
loadFont("AgencyFB-Reg-40.vlw");
textSize(20);
text(score, 110, 50);
text("Score:", 2, 50);
text("Time:", 2, 100);
  if(s<=59){
    text(m, 100, 100);
    s=s + deltaS;
  }
  else{
    m = m + deltaM;
    s = 0;
    text(m, 100, 100);
  }

    
 

   

 
  float mx = map(mouseX, 0, width, -5, 0);
  float my = map(mouseY, 0, height, -5, 0);
fill(255, 255, 255); //monster
strokeWeight(4);  
triangle(240  +x, 110+y, 251  +x, 112+y, 248  +x, 91+y);
triangle(238  +x, 79+y, 234  +x, 98+y, 226  +x, 87+y);
triangle(225  +x, 80+y, 225  +x, 98+y, 219  +x, 92+y);
beginShape();
fill(142, 142, 142);
vertex(220+20+x, 66+y);
vertex(206+20+x, 68+y);
vertex(168+20+x, 80+y);
vertex(156+20+x, 65+y);
vertex(126+20+x, 76+y);
vertex(110+20+x, 106+y);
vertex(112+20+x, 137+y);
vertex(86+20+x, 135+y);
vertex(66+20+x, 154+y);
vertex(56+20+x, 180+y);
vertex(30+20+x, 143+y);
vertex(40+20+x, 138+y);
vertex(37+20+x, 130+y);
vertex(28+20+x, 135+y);
vertex(28+20+x, 128+y);
vertex(20+20+x, 129+y);
vertex(20+20+x, 138+y);
vertex(12+20+x, 130+y);
vertex(8+20+x, 135+y);
vertex(18+20+x, 145+y);
vertex(9+20+x, 148+y);
vertex(10+20+x, 155+y);
vertex(20+20+x, 153+y);
vertex(32+20+x, 193+y);
vertex(70+20+x, 217+y);
vertex(89+20+x, 201+y);
vertex(100+20+x, 192+y);
vertex(106+20+x, 226+y);
vertex(145+20+x, 249+y);
vertex(122+20+x, 262+y);
vertex(136+20+x, 280+y);
vertex(158+20+x, 278+y);
vertex(168+20+x, 293+y);
vertex(180+20+x, 270+y);
vertex(158+20+x, 263+y);
vertex(170+20+x, 255+y);
vertex(186+20+x, 238+y);
vertex(203+20+x, 213+y);
vertex(213+20+x, 189+y);
vertex(222+20+x, 193+y);
vertex(261+20+x, 185+y);
vertex(285+20+x, 168+y);
vertex(293+20+x, 136+y);
vertex(308+20+x, 135+y);
vertex(310+20+x, 127+y);
vertex(298+20+x, 125+y);
vertex(306+20+x, 118+y);
vertex(300+20+x, 111+y);
vertex(290+20+x, 120+y);
vertex(288+20+x, 109+y);
vertex(281+20+x, 110+y);
vertex(282+20+x, 111+y);
vertex(283+20+x, 120+y);
vertex(273+20+x, 118+y);
vertex(270+20+x, 124+y);
vertex(278+20+x, 128+y);
vertex(251+20+x, 166+y);
vertex(222+20+x, 140+y);
vertex(200+20+x, 133+y);
vertex(180+20+x, 130+y);
vertex(172+20+x, 121+y);
vertex(237+20+x, 120+y);
vertex(226+20+x, 110+y);
vertex(181+20+x, 108+y);
vertex(180+20+x, 102+y);
vertex(216+20+x, 78+y);
vertex(219+20+x, 67+y);
endShape();
strokeWeight(2);
fill(247, 37, 37);
if(keyPressed){
  if((key == 'e') || (key == 'E')){
    fill(0);
  }
}
quad(178+x, 81+y, 166+x, 92+y, 156+x, 87+y, 159+x, 82+y);
fill(255);
strokeWeight(.01);
ellipse(167 +mx+x, 89+y +my, 5, 5);
strokeWeight(2);
fill(236, 240, 77);
if (keyPressed){
  if ((key == ' ') || (key == ' ')){
    fill(255, 0, 0);
  }
}
triangle(60+x, 138+y, 76+x, 110+y, 58+x, 130+y);
triangle(48+x, 130+y, 46+x, 99+y, 40+x, 130+y);
triangle(32+x, 129+y, 28+x, 135+y, 16+x, 110+y);
triangle(28+x, 148+y, 29+x, 155+y, 0+x, 151+y);
triangle(330+x, 128+y, 326+x, 135+y, 355+x, 132+y);
triangle(325+x, 118+y, 320+x, 111+y, 342+x, 100+y);
triangle(302+x, 110+y, 309+x, 110+y, 302+x, 86+y);
triangle(290+x, 125+y, 293+x, 119+y, 277+x, 104+y);
rectMode(CENTER);
fill(10, 53, 203);
rect(mouseX, 790, 160, 20); //paddle
textSize(36);
textFont(font1);
fill(0);
text("I WILL DESTROY YOU", 100, 360);

}