PImage imgShip;
PImage imgAlien0;
PImage imgAlien1;

List<Alien> aliens = new ArrayList<Alien>();
//Alien[] aliens;

final int ScreenWidth = 500;
final int ScreenHeight = 500;
final float Size = 50;

void setup() {
  size(500, 500);
  background(40);

  imgShip = loadImage("Ship.PNG");
  imgAlien0 = loadImage("alien0.png");
  imgAlien1 = loadImage("alien1.png");

  int p = 0;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 5; j++) {
      aliens.add( new Alien(j*Size+100, i*Size+50));
      println(aliens.get(p).x);
      p++;
    }
  }
}


Player ship = new Player(ScreenWidth/2, ScreenHeight-50);

void draw() {
  if (keyPressed) {
    if (keyCode == LEFT) {
      ship.move("left");
    } 
    if (keyCode == RIGHT) {
      ship.move("right");
    }
  }

  background(255);
  checkBullets();

  ship.display(imgShip);
  displayAliens();
  displayBullets();
}

public void checkBullets() {
  for 
 
  for (int i = 0; i < ship.bullets.size(); i++)
  {
    if (ship.bullets.get(i).y < 0)
      ship.bullets.remove(i);
    else
      for (int j = 0; j < aliens.size(); j++)
      {
        if (ship.bullets.get(i).checkCollision(aliens.get(j)))
        {
          ship.score++;
  
          ship.bullets.remove(i);
          aliens.remove(j);
          break;
        }
      }
  }
}


public void displayBullets()
{
  for (int i = 0; i < ship.bullets.size(); i++)
  {
    ship.bullets.get(i).fly();
    ship.bullets.get(i).display();
  }
}

public void displayAliens()
{
  for (int j = 0; j < aliens.size(); j++)
  {
    aliens.get(j).display(imgAlien0);
  }
}

void keyPressed() {


  if (key == ' ') {
    ship.shoot();
  }
}


void DisplayHud() {
  fill(0);
  text("lives: ", ScreenWidth - 200, 20, 70, 10);
}