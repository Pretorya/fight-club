class Game

  def show_state
    puts "#{@name} a #{@life_points} points de vie !"
  end

  def gets_damage (hit)
      @life_points = @life_points - hit
      if @life_points <= 0
        puts "le joueur #{self.name} à été tué"
      end
  end

  def attacks (fighter)
      puts "#{self.name} attaque #{fighter.name}"
      shot = compute_damage
      fighter.gets_damage(shot)
      puts "#{shot} dommages infligés"
  end

  def compute_damage
      return rand(1..6)
  end
end
