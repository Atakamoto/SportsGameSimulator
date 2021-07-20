public class Season
{
  private int seasonLength, aWins, bWins, ties, aLosses, bLosses;
  private String gamePace, type;
  private ArrayList<Game> seasonGames = new ArrayList<Game>();
  Season(int seasonLength, String gamePace, String type)
  {
    this.seasonLength = seasonLength;
    this.gamePace = gamePace;
    this.type = type;
    aWins = 0;
    bWins = 0;
    ties = 0;
    aLosses = 0;
    bLosses = 0;

  }
  //runs games based on specified parameters, prints standings based on wins, etc that season
  public void runSeason()
  {
    for(int i = 0; i < seasonLength; i++) {
        seasonGames.add(new Game(gamePace));
    }
    for(int i = 0; i < seasonGames.size(); i++) {
     seasonGames.get(i).playGame();
     if(seasonGames.get(i).getWinner().equals("a")) {
       aWins++;
       bLosses++;
     } else if(seasonGames.get(i).getWinner().equals("b")) {
       bWins++;
       aLosses++;
     } else if(type.equals("noTies") || type.equals("playoffs")) {
       if((int)(Math.random()*2) == 0) {
         bWins++;
         aLosses++;
       } else {
         aWins++;
         bLosses++;
       }
     } else {
       ties++;
     }
     if(aWins > bWins) {
       System.out.println("STANDINGS:");
       System.out.println("A | Wins: " + aWins + " Losses: " + aLosses + " Ties: " + ties);
       System.out.println("B | Wins: " + bWins + " Losses: " + bLosses + " Ties: " + ties);
       delay(2000);
     } else {
       System.out.println("STANDINGS:");
       System.out.println("B | Wins: " + bWins + " Losses: " + bLosses + " Ties: " + ties);
       System.out.println("A | Wins: " + aWins + " Losses: " + aLosses + " Ties: " + ties);
       delay(2000);
     }
     if(type.equals("playoffs")) {
       if(aWins == seasonLength/2 + 1 || aLosses == seasonLength/2 + 1) {
         break;
       }
     }
    }
  }
  //future add stats: wins, losses, scores of games, etc
}
