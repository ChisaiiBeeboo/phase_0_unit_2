# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].
# Anthony Edwards
# Kate La

# 2. Pseudocode

# Input:pass 5 arguements into our method essay_writer
# Output: output should be and essay in a proper order

# Steps:
# first define a method essay_writer
# that method will take 5 arguements (title, topic, date, thesis_statment, pronoun)
# title argument would be assigned title of essay
# topic argument would be assigned topic of essay
# date argument would be assigned date of essay
# thesis_statment argument would be assigned thesis_statment of essay
# teacher argument would be assigned to teacher of class
# Utilize string concatenation to string together the arguments and form an essay

# 3. Initial Solution

title = "My favorite Movie"
topic = "Aladdin"
partner = "Jasmine"
antagonist = "Jafar"
date = "May 13, 2014"
thesis = "Should Aladdin be considered the best movie of all-time?"
teacher = "Mr. Philips"

def essay_writer(title, topic, date, thesis, teacher, partner, antagonist)
    puts "\n" + title
    puts topic
    puts date + " Teacher: " + teacher
    
    puts "\n \t" + thesis + " " +  topic + " combines great music, and all the magical aspect you would expect from a Disney Movie. "  + topic + " and " + partner + " make the perfect couple. " + "You have " + antagonist + " as the perfect antagonist to " + topic + " protagonist."
end
Abu = {
    :power => "quick and nimble"
}

title = Abu[:power]
puts title

essay_writer(title, topic, date, thesis, teacher, partner, antagonist)




# 4. Refactored Solution

def essay_writer(title, topic, date, thesis, teacher, partner, antagonist, sidekick, opt=nil)
    puts "\n" + title
    puts topic
    puts date + " Teacher: " + teacher
    
    puts "\n \t" + thesis + " " +  topic + " combines great music, and all the magical aspects you would expect from a Disney movie. "  + topic + " and " + partner + " make the perfect couple. " + "You have " + antagonist + " as the perfect antagonist to " + topic + "s' protagonist and his sidekick " + sidekick + " who is " + Abu[:power] + "."
end


# 1. DRIVER TESTS GO BELOW THIS LINE

essay_writer("My favorite Movie", "Aladdin", "May 13, 2014", "Should Aladdin be considered the best movie of all-time?", "Mr. Philips", "Jasmine", "Jafar", "Abu", Abu = {:power => "quick and nimble"})

# =>
# My favorite Movie
# Aladdin
# May 13, 2014 Teacher: Mr. Philips
#
# Should Aladdin be considered the best movie of all-time? Aladdin combines great music, and all the magical aspects you would expect from a Disney movie. Aladdin and Jasmine make the perfect couple. You have Jafar as the perfect antagonist to Aladdins' protagonist and his sidekick Abu who is quick and nimble.


# 5. Reflection

#### The essay_writer challenge was enjoyable, it allowed us to practice creating variables, objects and implementing string concatenation in Ruby. We were also able to utilize Ruby new line and tab characters to format the essay. Going from JavaScript mode to Ruby this week we struggled a bit when trying to access our objects key value pair for the bonus challenge. In JavaScript you can access an objects property through dot-notation 'Abu.power' or brackets 'Abu[power]'; in Ruby the correct syntax to access Abu's symbol would be Abu[:power]. I'm still a little rusty with Ruby syntax but feeling confident as far as understanding the concepts. ####




