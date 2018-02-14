broccoli_done = false
carrots_done = false
aubergines_done = false



def birdy_wakes_up
  unless @broccoli_done && @carrots_done && @aubergines_done
    puts "LEO: What do you need to do today?"
          unless @broccoli_done
            puts  "1) Collect the broccoli"
          end
          unless @carrots_done
            puts "2) Water the carrots"
          end
          unless @aubergines_done
            puts "3) Plant Aubergines"
          end

    choice = gets.to_i

    sleep(2)
      puts "Great go see Mr Octopus"
      birdy_meets_octopus(choice)
    else
      puts "\nGo to sleep, birdy, you're done for today!"
    end
end

def birdy_meets_octopus(choice)
  puts """OCTOPUS: What vegetable are you working with?
          1) Broccoli
          2) Carrots
          3) Aubergines"""
  veg_choice = gets.to_i
  puts """OCTOPUS: What are you doing with it?
        1) collect
        2) water
        3) Plant"""
  method_choice = gets.to_i


  if veg_choice == 1 && method_choice == 1
    birdy_meets_owlie(1) # <- DEFINE METHOD
  elsif  veg_choice == 2 && method_choice == 2
     birdy_meets_owlie(2)
  elsif veg_choice == 3 && method_choice == 3
     birdy_meets_owlie(3)
  else
    puts "OCTOPUS: I'm Sorry thats not possible. Please go back to the start"
    birdy_wakes_up
  end
end



def birdy_meets_owlie(vegetable)
  puts """OWLIE: What method will you be using?
        1) collect
        2) water
        3) Plant"""
  choice = gets.to_i

  if choice === vegetable
    puts "OWLIE: Great, go see Miss Bee"
    birdy_meets_miss_bee(vegetable)
  else
    puts "OWLIE: Sorry not possible, go back to the beginning"
    birdy_wakes_up
  end
end

def birdy_meets_miss_bee(vegetable)
  if vegetable == 1
    puts "BEE: Great thanks for helping me collect the broccoli"
    @broccoli_done = true
  elsif vegetable == 2
    puts "BEE: Great thanks fo rhelping me water the carrots"
    @carrots_done = true
  elsif vegetable == 3
    puts "BEE: Great thanks for helping me plant the aubergines!"
    @aubergines_done = true
  end
  birdy_wakes_up
end

=begin if vegetable == 0
    puts """LEO: Welcome home! What do you need to do today?
          1) Collect the broccoli
          2) Water the carrots
          3) Plant Aubergines"""
    wake_up_choice = gets.to_i
  elsif vegetable == 1
    puts """LEO: Welcome home! What do you need to do today?
          Remember, You have already collected the broccoli.
          2) Water the carrots
          3) Plant Aubergines"""
  else
    puts "Sorry, error"
  end
end
=end
birdy_wakes_up
