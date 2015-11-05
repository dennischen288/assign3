PImage treasure,hp,enemy,fighter,bg1,bg2,bg3;
int bg1x,bg2x,bg3x,treasurex,treasurey,x,y,fighterx,fightery,hpx,round=1;

void setup() {
  size(641, 482);
 // treasure
  treasure = loadImage("img/treasure.png");
  treasurex = floor(random(18, 330));
  treasurey = floor(random(35, 435));
 
  // hp
  hp = loadImage("img/hp.png");
  hpx = floor(random(20,200));
 // ememy
  enemy = loadImage("img/enemy.png");
  x = 0;
  y = floor(random(30, 410));
  // fighter
  fighter = loadImage("img/fighter.png");
  fighterx = 580;
  fightery = 200;
  // background
  bg1x = 0 ;
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
}
void draw() {
  bg2x = bg1x - 636;
  bg3x = bg2x - 636;
  bg1x = (bg1x += 5) % 1280;
  image(bg1, bg1x, 0);
  image(bg2, bg2x, 0);
  image(bg1, bg3x, 0);
  
  fill(255, 0, 0);
  rect(10, 5, hpx, 20);

  image(fighter, fighterx, fightery);
  x = (x += 5) % 920;
  image(enemy, x+3, y);
  image(treasure, treasurex, treasurey);
  image(hp, 4, 4);
 
    switch(round){
    case 1: for(int i=0 , p = 0 ;i<5;i++,p+=65){   
    image(enemy, x -p, y); 
     }
     if(x ==890){
     round = 2;
     y=(int)random(130,300);
   }
     break;
 
 case 2: for(int i=0 , p = 0 ;i<5;i++,p+=65){   
    image(enemy, x -p, y-p/2); 
     }
     if(x == 890){
     round = 3;
     y=(int)random(170,270);
   }
     break;
     
    case 3:for(int i=0 , p = 0 ;i<3;i++,p+=65){   
    image(enemy,x-p,y-p);
    image(enemy,x-p,y+p);
    image(enemy,x-p-130,y-p+130);
    image(enemy,x-p-130,y+p-130);
     }       
     if(x == 890){
     round = 1;
     y=(int)random(30,410);
   }    
     break;
    }
  
  }
