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
# title arguement would be assigned title of essay
# topic arguement would be assigned topic of essay
# date arguement would be assigned date of essay
# thesis_statment arguement would be assigned thesis_statment of essay
# teacher argument would be assigned to teacher of class
# Utilize string concatenation to string together the arguments and form an essay

# 3. Initial Solution

title = "My favorite Movie"
topic = "Aladdin"
partner = "Jasmine"
sidekick = "Abu"
abu = {
    power: "quick and nimble"
}
antagonist = "Jafar"
date = "May 13, 2014"
thesis = "Should Aladdin be considered the best movie of all-time?"
teacher = "Mr. Philips"

def essay_writer(title, topic, date, thesis, teacher, partner, antagonist)
    puts "\n" + title
    puts topic
    puts date + " Teacher: " + teacher
    
    puts "\n \t" + thesis + " " +  topic + " combines great music, and all the magical aspect you would expect from a Disney Movie. "  + topic + " and " + partner + " make the perfect couple. " + "You have " + antagonist + " as the perfect antagonist to " + topic + " protagonist along with his sidekick " +  sidekick + " who is " + abu[:power] + "."
end

essay_writer(title, topic, date, thesis, teacher, partner, antagonist)




# 4. Refactored Solution



