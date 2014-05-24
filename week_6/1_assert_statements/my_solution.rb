# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
	
	assert method raises the string 'assertion failed' unless it yields
	in this case to name. since name in this case has been assigned to the value of 
	of the string 'bettysue' the assert returns nil. when assert gets to 
	billy bob it raises 'assertion failed' because name hasn't been assigned to 'billybob'

# 3. Copy your selected challenge here




# 4. Convert your driver test code from that challenge into Assert Statements





# 5. Reflection
