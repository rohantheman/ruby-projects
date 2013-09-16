require_relative 'Player'
require_relative 'Team'

playerExample1 = Player.new("Wayne Gretzky", 0, 0)
puts playerExample1
puts playerExample1.totalPoints

playerExample2 = Player.new("Mario Lemieux", 10, 3)
puts playerExample2
puts playerExample2.writeStats

teamExample1 = Team.new('Senators', 'Jacques Martin')
puts teamExample1

teamExample2 = Team.new('Senators', 'Jacques Martin')
aPlayer = Player.new("Wayne Gretzky", 0, 0)
teamExample2.addPlayer(aPlayer)
teamExample2.listStats

teamExample3 = Team.new('Maple Leafs','Randy Carlyle')
aPlayer = Player.example5
teamExample3.addPlayer(aPlayer)
teamExample3.addPlayer(Player.example4)
teamExample3.addPlayer(Player.example6)
puts teamExample3.listStats
