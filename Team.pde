public class Team 
{
  private int score, scoreInformer, improvement;
  Team()
  {
    score = 0;
  }
  public int getScore()
  {
    return score;
  }
  //improves chance of scoring all types ex. improveBy(1) changes 3pt chance from 10 to 11
  public void improveBy(int percentageChance) {
    improvement += percentageChance;
  }
  //adds score to teams total based on chances of scoring
  public void addScore()
  {
    scoreInformer = (int)(Math.random()*101);
    if(scoreInformer > 90 - improvement) {
      score += 3;
    } else if(scoreInformer > 50 - improvement) {
      score += 2;
    } else if(scoreInformer > 35 - improvement) {
      score += 1;
    } else {
      score += 0;
    }
  }
  //sets score, generally used to reset score to zero
  public void setScore(int newScore)
  {
    score = newScore;
  }
}
