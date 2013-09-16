class Player

  def Player.example4
    # Player example4
    return Player.new('Daniel Alfredson', 12, 5)
  end
  def Player.example5
    # Player example5
    return Player.new('Pavel Bure', 7, 2)
  end

  def Player.example6
    # Player example6
    return Player.new('Alex Ovechkin', 9, 7)
  end
  
  attr_accessor :name, :goals, :assists

  def initialize(pName,pGoals, pAssists)
    @name = pName
    @goals = pGoals
    @assists = pAssists
  end
  
  def totalPoints
    #Returns the total number of points by adding no. of goals and no. of assists assuming that each is worth one point
    return (@goals + @assists)
  end

  def writeStats
    #Writes the player name, goals, assists and total points to the Transcript
    puts "Name: " +  @name.to_s
    puts "Goals: " +  @goals.to_s
    puts "Assists: " + @assists.to_s
    puts @name.to_s + "'s Total Points: " + totalPoints.to_s
  end
  
  def to_s
    "Player => #{@name} has #{@goals} goals and #{@assists} assists"
  end
  
end

