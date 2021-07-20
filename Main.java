int possessions = 100; //possessions per team per game (basketball games have about 200 possessions so setting this equal to 100 would make sense)
Team a = new Team();
Team b = new Team();
public void setup()
{
  a.improveBy(0); //changes normal chances of scoring(optimized to basketball so 10% chance of 3, 40% chance of 2, etc; positive number will increase percent chance of all, neg num will do opposite)
  b.improveBy(0);
  Season one = new Season(82, "noDelay","noTies");
  one.runSeason();
}
