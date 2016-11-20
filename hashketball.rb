# Write your code here!
def game_hash
  game = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players =>
      {
        "Alan Anderson" =>
        {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" =>
        {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
         "Brook Lopez" =>
        {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" =>
        {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" =>
        {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }

      }

    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players =>
      {
        "Jeff Adrien" =>
        {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" =>
        {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" =>
        {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" =>
        {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" =>
        {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }

    }
  }

end


def num_points_scored(player_name)
  points = ""

  game_hash.each do |h_a, attributes|
    attributes[:players].each do |name, stats|
      if name == player_name
        points = stats[:points]
      end
    end
  end
  points
end

def shoe_size(player_name)
  outp = ""

  game_hash.each do |h_a, attributes|
    attributes[:players].each do |name, stats|
      if name == player_name
        outp = stats[:shoe]
      end
    end
  end
  outp
end

def team_colors(team)
  outp = ""

  game_hash.each do |h_a, attributes|
    if attributes[:team_name] == team
      outp = attributes[:colors]
    end
  end
  outp
end

def team_names
  outp = []

  game_hash.each do |h_a, attributes|
    outp << attributes[:team_name]
  end
  outp
end

def player_numbers(team)
jersey_nums = []

game_hash.each do |h_a, attributes|
    if attributes[:team_name] == team
      attributes[:players].each do |name, stats|
        jersey_nums << stats[:number]
      end
    end
  end
jersey_nums
end

def player_stats(player_name)
  game_hash.each do |h_a, attributes|
      attributes.each do |info, stats|
        if info == :players
          stats.each do |name, stat|
            if name == player_name
              return stat
            end
          end
        end
    end
  end
end

def big_shoe_rebounds

biggest_shoe = 0
rebs = 0

  game_hash.each do |h_a, attributes|
    attributes[:players].each do |name, stats|
          if stats[:shoe] > biggest_shoe
            biggest_shoe = stats[:shoe]
            rebs = stats[:rebounds]
          end
        end
    end
rebs
end
