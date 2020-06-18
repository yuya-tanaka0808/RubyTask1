require 'byebug'
class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"
    input_hand = gets.chomp
    player_hand = input_hand.to_i
    while true
      if input_hand == "0" || input_hand == "1" || input_hand == "2"
      return player_hand
      else
        puts "もう一度数字を入力してください。"
        puts "0:グー, 1:チョキ, 2:パー"
        input_hand = gets.chomp
        player_hand = input_hand.to_i
      end
    end
  end
end
class Enemy
  def hand
    random_hand = rand(3)
    enemy_hand = random_hand.to_i
  end
end
class Janken
  def pon(player_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]
    puts "相手の手は#{janken[enemy_hand]}です"
      if player_hand == enemy_hand
        puts "私の手は#{janken[player_hand]},よってあいこ"
        return true
      elsif
        (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand ==2) || (player_hand == 2 && enemy_hand == 0)
        puts "私の手は#{janken[player_hand]},よってあなたの勝ちです"
        return false
      else
        puts "私の手は#{janken[player_hand]},よってあなたの負けです"
        return false
      end
  end
end
player = Player.new
enemy = Enemy.new
janken = Janken.new
next_game = true
while next_game
  next_game = janken.pon(player.hand, enemy.hand)
end
