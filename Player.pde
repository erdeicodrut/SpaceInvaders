import java.util.*;

public class Player extends SpaceShip {

  int score = 0;

  public Player(float x, float y) {
    super(x, y);
  }

  int lives = 3;

  List<Bullet> bullets = new ArrayList<Bullet>();
  //Bullet bullets[];

  public void shoot() {
      bullets.add(new Bullet(x, y));
      
      
  }
}