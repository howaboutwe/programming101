# Now that we've seen how to set variables and print out their values, let's
# make them do some work for us!
#
# CONTROL FLOW
#
# if statements are the most common. They allow you to perform certain commands
# only if the stated conditions are met.

if 5 < 10
  puts "Math is correct!"
end

# EXERCISE: Try setting your own boolean variable and make it print "Boolean logic works!"
# only if the variable's value is set to true
#
# You can capture cases that don't match the conditions by adding an else section:
#
if 5 < 1
  puts "Math fail #shit"
else
  puts "Thank god things're OK"
end

# EXCERCISE: Write your own if/else statement in which it would be impossible for the code
# in the else statement to run.

# Finally, there's elsif, just in case you have looots of things to check:
#
x = 5

if x > 10
  puts "Super big"
elsif x > 3
  puts "Kinda big"
else
  puts "Miniscule"
end

# QUESTION: Can you put an elsif after an else?
#
# Great! This is one of the most important control flow tools, implemented
# in nearly all programming languages in some form.
#
# However, its usefulness remains sort of limited, since right now all we've
# done is check if things are bigger, smaller, or true or false. That's why we
# need to cover some
#
# COMPARATORS
#
# We need some methods to compare two things to one another. We've already
# seen > and < above. Let's check out some others that are useful:
#
# Equality
# Let's do this!
x = 5
if x = 6
  puts "No way man"
else
  puts "Cowabunga"
end

# Paste the previous into a new Ruby file and execute it on the command
# line (using "ruby [filename].rb"). What happens?
#
# DISASTER!!! How did we end up in the if block?!?? SAVE ME FROM THIS TERROR
#
# But seriously no worries. Remember how we assign variables?
#
# my_number = 8
#
# How is the computer supposed to know the difference between = and ==?
# Answer: it doesn't because it's dumb and you're the programmer
#
# Happily, this problem has been resolved, in the form of #==
#
if x == 6
  puts "No way man"
else
  puts "Cowabunga"
end

# Paste the above into a file and run it.
#
# WTF?!?!??!
#
# Let's step back and take a look. In the last code section, we said:
# if x = 6
#   puts "No way man"
#   ...
#
# So why did x == 6 return true? (Ask class).
#
# Since the = sign alone always
# functions as the assignment of a variable, x was set equal to 6 when the
# if statement ran in the first block of code. Here in the second, we continued
# to use the same x, and the equality test passed.
#
# Jesus this is fairly confusing. Let's do an
#
# EXERCISE!: Define a new variable to a comparative expression using ==, then
# write some code to print out the value of this variable only if the expression
# the variable is assigned to is true
#
# MORE COMPARATORS
#
# That was fun! Let's see a few more:
#
# >, >=, <, <=
#
# Pretty straightforward. Greater than, greater than or equal to, less than,
# or less than or equal to. Pretty much only useful for numbers obviously
# (or at least for now)]
#
# !=
#
# This guy's pretty significant: he's the opposite of ==. What do you
# think the below code will do?
#
name = "Amy"

if name != "Amy"
  puts "Get out or I'm calling the cops"
elsif name == "Amy"
  puts "Oh hi #{name} it's you!"
end

# Nice.
#
# EXERCISE: Is there a more concise way to write this (hint: obviously, there is)
#
# Ruby is syntactically unusually easy to read, and one of the reasons is
# that it gives us the ability to also do the following:
#
puts "Oh hi #{name} it's you!" if name == "Amy"

# which will only execute the former part of the statement if the
# latter part evaluates to true. This is a useful, concise way of incorporating
# if/else statements into a fairly short expression.
#
# And finally, let's do a bit of what we often refer to as
#
# BOOLEAN LOGIC
#
# As you may have noticed, all expressions including comparators ultimately return
# a value which is a valid boolean value. Recall that a boolean variable
# is always set to either true or false. So,
im_false = 5 == 8
# is a valid Ruby expression, and will set the variable im_false to the value false.
#
# So if we need to check multiple conditions at once, what are we to do? Looks
# like we're going to need some
#
# LOGICAL OPERATORS!!
#
# Here's a list of the standard boolean logical operators we use most frequently
# and their equivalents in Ruby:
#
# and: &&
# or: ||
# not: !
#
# These can be used to create very complex boolean statements, which we wrap
# in parentheses for a) readability and b) to ensure proper precedence of
# the various conditions. For variables a, b, and c below, try replacing the
# symbolic Ruby operators with their English equivalents and reading them
# to yourself. It should help make it clear what's going to happen.
#
a = (5 == 5 && "Aaron" == "Aaron")

# QUESTION: What is the value of a?
#
b = (5 == 4 || "Aaron" == "Aaron")

#QUESTION: What is the value of b?
#
name = "Kenneth"

c = (5 == 5 || "Aaron" == "Bryan") && name == "Kenneth"

#QUESTION: What is the value of c?
#
# And finally, for maximum usefulness, let's put it all together:
#
# [statement #1]
big_boss = "Aaron"
boss = "Disha"
kenneths_boss = boss

if name == "Kenneth" && kenneths_boss == big_boss
  puts "PROMOTION!!"
elsif name == "Kenneth" && kenneths_boss == boss
  puts "Same old same old"
elsif name == "Disha" && big_boss == "Disha"
  puts "MUTINY"
end

# LOOPING
#
# Create a new ruby file and write the following inside

loop do
  puts "1337 h4xx0rz dat 4$$ been h4xxord"
end

# Save the file and run it using the ruby command. What happens?
# (hold down control and press the 'C' key when you've had enough)
#
# This is an infinite loop! While highly useful for action films, it is
# unfortunately rarely useful for everyday web Ruby programming like
# we'll be doing. Let's instead look at some ways to make loops work for us!
#
# To control situations like this, Ruby gives us:
#
# BREAK
#
loop do
  puts "1337 h4xx0rz dat 4$$ been h4xxord"
  break
end

# Aaaah only once. How about 5 times?
# QUESTION: Who has an idea for how to make this to run exactly 5 times?
#
# How about something like:

i = 1
loop do
  puts "1337 h4xx0rz dat 4$$ been h4xxord"
  if i == 5
    break
  end
  i = i + 1
end

# Great!
# QUESTION: Can someone propose a way to eliminate two of the above lines?
#

# So far so good. This is sort of weird though; you have to call this
# fairly dramatic BREAK command whenever you're sick of your loop
# repeating. Good thing there are
#
# WHILE/UNTIL LOOPS
#
# Now that we've covered all sorts of useful conditional expressions,
# let's use them to control our loops and prevent excessive iteration like
# we saw above. One useful and common loop is the while loop:
#
x = 5
while x == 5
  puts "S'alright"
end

# EXERCISE: Run the above in a Ruby file or in irb. What happens?
#
# ALright that sucked. What can we do to prevent this from happening in the future?
#
# QUESTION: What can we do?
#
# How about something like:
#
while x == 5
  puts "S'alright"
  x = 6
end

# YESSSS now it should've only printed once. If you want to make it print
# 5 times, how would you go about that?

# [statement #2]
while x < 11
  puts "S'alright"
  x = x+1
end

# Perfect! (incidentally, this gives us an opportunity to learn one
# other type of assignment method Ruby provides:

a = 4
b = 3

a = a + 1
b += 2

5 == a
a == b
b == 5

# Woohoo! Others include #-=, #*=, #/=, etc.)
#
# And just in case you're feeling a bit negative today, Ruby also defines
# the opposite of while, until:
#
until x > 10
  puts "S'alright"
  x += 1
end

# which will do the exact same thing as statement 2 above.
#
# Great! So clearly, we usually need to control the loop from within the loop
# itself.
#
# This all gets a bit verbose however. So we can try and 

#
# HOMEWORK
#
# 1. In a new Ruby file, try switching around some of the values of the
# variables used in if/elsif/elsif/end statement #1 and see if you can
# make all of the cases occur.
#
# 2. In a new Ruby file, define a variable name. Add an if statement
# that only prints your name, uppercase, if you've defined your name to be
# entirely uppercase letters.
#
# 3. Using a variable called name and another called age, write a loop
# that prints the string 'My name is NAME and I am AGE years old' repeatedly
# until your current age is reached
#
# eg:
# My name is Kenneth and I am 1 years old
# My name is Kenneth and I am 2 years old
# ....
# My name is Kenneth and I am 27 years old
#
# Depending on how you wrote this first loop, rewrite it using
# loop/break, while, and until.
#
# EXTRA CREDIT
#
# Using methods you can find in the documentation for String on this
# site: http://www.ruby-doc.org/core-2.1.2/String.html, add a condition
# to your if statement to print your first name uppercase if the first letter
# of the string is capitalized
