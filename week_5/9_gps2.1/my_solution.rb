# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 



# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) David Hwang
# 2) Kaitlyn La


 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)
    my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} 
    pie_qty = 0
    cake_qty = 0
    cookie_qty = 0
    raise ArgumentError.new("You can't make that food") unless my_list.include?(fav_food)
    
    fav_food_qty = my_list.values_at(fav_food)[0] #not the best idea
    if num_of_people % fav_food_qty == 0 
    #if number of people is evenly divisible by the quantity
    #of favorite food, then divide the number of people with favorite food quantitiy and return
    #a string with number of food & favorite food.
        num_of_food = num_of_people / fav_food_qty
        return "You need to make #{num_of_food} #{fav_food}(s)."
    else num_of_people % fav_food_qty != 0
    
        while num_of_people > 0
            if num_of_people / my_list["pie"] > 0
                pie_qty = num_of_people / my_list["pie"] 
                # pie qunatity is the result of dividing the number of people with the value from pie in my_list
                num_of_people = num_of_people % my_list["pie"]
                # saves remaining people who didn't get pies as new number of people to loop back to line 35
            elsif num_of_people / my_list["cake"] > 0
                cake_qty = num_of_people / my_list["cake"]
                # if remainder is over 6, we are making the people cake
                num_of_people = num_of_people % my_list["cake"]
                # saves remaining people who didn't get cake to new number of people.
            else
                cookie_qty = num_of_people 
                num_of_people = 0
            end
        end
        return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
end
 
    
# Our Refactored Solution


#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!


#  Reflection 
# I was under the weather for this challenge and don't feel I was able to contribute as much as I would like to the challenge. I was
# able to read and understand the logic behind the code and navigate us through the commenting part of the challenge. As a pair
# we were able to refactor the code and get rid of the redundant methods. We attempted to replace the while loop but couldn't without
# breaking the code. I feel good about the work I did this week, hit a couple of walls but worked through it. I definitely feel more 
# comfortable with Ruby after this week. It's just a matter of getting more exposure at this point. 


