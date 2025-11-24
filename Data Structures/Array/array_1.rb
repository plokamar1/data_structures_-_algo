strings = %w[a b c d]

# In a 32bit system we need 4 cells of 8 bits to store a variable.
# So for this array we need 4*4 = 16 cells to store information so this array is 16 bytes of memory

strings[1] # O(1)

strings.push('e') # O(1)

strings.pop # O(1)

strings.unshift("x") # O(n) because all values must move to another cell in the memory

# Splice does not exist in Ruby
strings[1..2] = ["alien", "friend"] # O(n) since 

puts strings