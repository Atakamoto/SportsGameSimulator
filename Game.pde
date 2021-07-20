public class Game {
  private String winner;
  private int pace;
  Game(String pace)
  {
    winner = "No one";
    if(pace.equals("fast")) {
      this.pace = 1;
    } else if(pace.equals("noDelay")) {
      this.pace = 0;
    } else {
      this.pace = 100;
    }
  }
  //plays out 100 possession game
  public void playGame() {
    System.out.println("Today's BasketBall Game: A vs B:");
    
      for(int i = 1; i <= possessions; i++)
      {
        a.addScore();
        b.addScore();
        if(i == possessions) {
          System.out.println("Final Score: A: " + a.getScore() + " B: " + b.getScore());
        } else if(i == possessions/2) {
            System.out.println("Half Time Score: A: " + a.getScore() + " B: " + b.getScore());
        } else if(i == possessions/4) {
            System.out.println("1st Quarter Score: A: " + a.getScore() + " B: " + b.getScore());
        } else if(i == possessions/4 * 3) {
            System.out.println("3rd Quarter Score: A: " + a.getScore() + " B: " + b.getScore());
        } else {
          System.out.println("A: " + a.getScore() + " B: " + b.getScore());
        }
        if(i == possessions) {
          delay(10 * pace);
        } else if(i % possessions/4 == 0) {
          delay(7 * pace);
        } else {
        delay(pace);
        }
      }
      
      if(a.getScore() > b.getScore()) {
        winner = "a";
      } else if(a.getScore() == b.getScore()) {
        winner = "tie";
      } else {
        winner = "b";
      }  
      a.setScore(0);
      b.setScore(0);
  }
  public String getWinner() {return winner;}
    
}
