class Team  
  attr_accessor :name, :coach, :listOfPlayers

  def initialize(aName,aCoach)
    @name = aName
    @coach = aCoach
    @listOfPlayers = Array.new
  end

  def addPlayer(aPlayer)
    #Simply adds a new instance of Player to the collection
    @listOfPlayers.push(aPlayer)
  end

  def isPlayerOnTeam(aPlayer)
    #Returns true if there is a player on the team with the name specified and false otherwise.
    @listOfPlayers.include?(aPlayer)
  end

  def listStats
    # Writes to the console the team's name, followed by the stats for each player followed by the teams's total points
    puts "The " + @name.to_s
    puts "Player Statistics:"
    @listOfPlayers.each{ |player| player.writeStats}
    puts "Total Points For the Team: " + totalPoints.to_s
  end

  def recordAssistBy(aPlayer)
    #Adds one to the number of assists stored for the player. Returns the player
    if @listOfPlayers.include?(aPlayer)
      aPlayer.assists = Players.assists + 1
    else
      puts ' That player does not exist !!!!'
    end
  end

  def recordGoalScoredBy(aPlayer)
    #Adds one to the number of goals stored for the player. Returns the player
    if @listOfPlayers.include?(aPlayer)
      aPlayer.goals = Players.goals + 1
    else
      puts ' That player does not exist !!!!'
    end
  end

  def totalPoints
    #Returns the total number of the points scored by the whole team
    total = 0   
    listOfPlayers.each{|aPlayer| total = total + aPlayer.totalPoints}
    return total
  end

  def to_s
    "Team => #{@name} coached by #{@coach}"
  end
  
end
