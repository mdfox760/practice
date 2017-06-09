
  class Scene

    def enter()
      puts "This scene is not yet configured."
      exit(1)
    end

  end

  class Engine

    def initialize(scene_map)
      @scene_map = scene_map
    end

    def play()
      current_scene = @scene_map.opening_scene()

      last_scene = @scene_map.next_scene('finished')

      while current_scene != last_scene
        next_scene_name = current_scene.enter()
        current_scene = @scene_map.next_scene(next_scene_name)
      end

  # be sure to print out the last scene
      current_scene.enter()
      last_scene
    end

  end

  class Death < Scene

    @@quips = [
      "You died. You suck at this.",
      "Your Mom would be proud...if she were smarter.",
      "Such a loser.",
      "I have a small puppy that's better at this."
    ]

    def enter()
      puts @@quips[rand(0..3)]
      exit(0)
    end

  end

class  CentralCorridor < Scene

  def enter()
    puts %q{
        The Gothons of Planet Percal have invaded your ship and destroyed
      your entire crew. You are the last surviving member and your last
      mission is to get the neutron destruct bomb from the Weapons Armory,
      put it in the bridge and blow up the ship after getting into an escape
      pod.
        You're running down the central corridor to the Weapons Armory when
      a Gothon jumps out, red scaly skin, dark grimy teeth, and
      wearing an evil clown costume. He's blocking the door to the
      Armory and is about to pull a weapon out to blast you. What do you do?
      }
      print "> "

      action = $stdin.gets.chomp

      if action == "shoot"
        puts %q{
          Quick on the draw, you yank out your blaster and fire it at the Gothon.
        His clown costume is flowing and moving around his body, which throws off
        your aim. Your laser hits his costume but misses him entirely. This
        completely ruins his brand new costume his mother bought him. He flies into
        a rage and blasts you repeatedly in the face. Then he eats you.
        }
        return 'death'

      elsif action == "dodge"
        puts %q{
          Like a world class boxer you dodge, weave and slip and slide left and
        right. In the middle of your dodge, your foot slips and you bang your
        head on the metal wall and pass out. You wake up shortly after only to
        die as the Gothon stomps on your head. Then he eats you.
        }
        return 'death'

      elsif action == "tell a joke"
        puts %q{
          Lucky for you they made you learn Gothon insults in the academy.
        You tell the one Gothon joke you know: Llaksdj kljs aslkd asl skj,
        lsak aslk las jfaf ksd.
          The Gothon stops, tries not to laugh but busts out laughing and can
        not move. While he's laughing, you run up and shoot him in the head.
        You jump through the Weapon Armory door.
        }
        return 'laser_weapon_armory'

      else
        puts "Does not compute! Try shoot, dodge or tell a joke."
        return 'central_corridor'
      end
    end
  end

class  LaserWeaponArmory < Scene

  def enter()
    puts %q{
      You do a dive roll into the Weapons Armory, crouch and scan the room.
    It's dead quiet, too quiet. You stand up and run to the far side of the
    room and find the neutron bomb in its container. There's a keypad lock on
    the box and you need the code to get the bomb out. If you get the code
    wrong 3 times then the lock closes forever and you can't get the bomb.
    The code is three digits.
    }
    code = "#{rand(1..9)#rand(1..9)#rand(1..9)}"
    print "[keypad]> "
    guess = $stdin.gets.chomp
    guesses = 0

    while guess != code && guesses < 10
      puts "Bzzzzeddd!"
      guesses =+ 1
      print "[keypad]> "
      guess = $stdin.gets.chomp
    end

    if guess == code
      puts %q{
        The container clicks open and the seal breaks, letting gas out. You grab
      the neutron bomb and run as fast as you can to the bridge where you must
      place it in the right spot.
      }
      return 'the_bridge'
    else
      puts %q{
        The lock buzzes one last time and then you hear a sickening melting
      sound as the mechanism is fused together. You decide to sit there and
       finally the Gothons blow up the ship remotely and you die.
      }
      return 'death'
    end
  end
end

class TheBridge < Scene

  def enter()
    puts %q{
        You burst onto the bridge with the neutron destruct bomb under your arm
      and surprise five Gothons who are trying to take control of the ship. Each
      of them has an even uglier clown costume than the last. They haven't
      pulled their weapons out yet, as they see the active bomb under your arm
      and don't want to set it off.
      }

      action = $stdin.gets.chomp

      if action == "throw the bomb"
      puts %q{
        In a panic you throw the bomb at the group of Gothons and make a leap
      for the door. Just as you drop it, a Gothon shoots you in the back. As
      you die, you see another Gothon frantically try to disarm the bomb. You
      die knowing they will probably blow up when it goes off
        }
      return 'death'

    elsif action == "slowly place the bomb"
    puts %q{
        You point your blaster at the bomb under your arm and the Gothons put
      their hands up and start to sweat. You inch backward to the door, open it
      and then carefully place the bomb on the floor, pointing your blaster at
      it. You then jump back through the door, punch the close button and blast
      the lock so the Gothons can't get out. You run to the escape pod to get
      off of this tin can.
      }
      return 'escape_pod'

    else
    puts "Does not compute! Try: throw the bomb or slowly place the bomb."
    return 'the_bridge'
    end
  end
end

class EscapePod < Scene

  def enter()
    puts %q{
      You rush through the ship desperately trying to make it to the escape pod
    before the whole ship explodes. It seems like hardly any Gothons are on the
    ship, so your run is clear of interference. You get to the chamber with the
    escape pods and now you need to pick one to take to safety. Some of them
    could be damaged but you don't have time to look. There's five pods, which
    one do you take?
    }

    good_pod = rand(1..5)
    print "[pod #]> "
    guess = $stdin.gets.chomp.to_i

    if guess != good_pod
      puts %q{
        You jump into pod "%s" and hit the eject button. "% guess" The pod easily
      slides out into space heading to the planet below. As it flies to the
      planet, you look back and see your ship implode then explode like a bright
       star, taking out the Gothon ship at the same time. You won!
      }

      return 'finished'
    end
  end
end

class Map

  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new()
  }

    def initialize(start_scene)
      @start_scene = start_scene
    end

    def next_scene(scene_name)
      val = @@scenes[scene_name]
      return val
    end

    def opening_scene()
      return next_scene(@start_scene)
    end

end

class Finished < Scene

  def enter()
    puts "You won! Good job."
  end
  
end


  a_map = Map.new('central_corridor')
  a_game = Engine.new(a_map)
  a_game.play()
