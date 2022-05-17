require "pry"

def roll_call_dwarves arr_of_names # code an argument here
  # Your code here
  num = 0
  arr_of_names.collect do |name|
    num += 1
    puts "#{num}. #{name}"
    # binding.pry
    # num =+ 1
  end 
end
# binding.pry

roll_call_dwarves(["Doc", "Dopey", "Bashful", "Grumpy"])

def summon_captain_planet planeteer_calls
  # Your code here
  planeteer_calls.collect do |call|
    call.capitalize + "!"
  end 
end

# binding.pry

def long_planeteer_calls arr_of_words
  # Your code here
  new_arr = arr_of_words.select do |word|
    word.length > 4
  end
  if new_arr.size == 0
    return false
  elsif new_arr.size > 0
    return true
  end
end

# binding.pry

# find_the_cheese method includes two different methods of solving. one through comparison and the || OR operator, and the other through .include?

def find_the_cheese arr_of_food_items
  # the array below is here to help
  cheese_types = ["cheddar", "gouda", "camembert"]
  # arr_of_food_items.find { |food| food == cheese_types[0] || food == cheese_types[1] || food == cheese_types[2]}
  arr_of_food_items.find { |food| cheese_types.include?(food)}
end

# binding.pry