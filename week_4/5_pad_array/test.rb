# class Array
#     def pad(min_size, opt=nil)
#         n = min_size - self.length
#         n.times{self << opt}
#         self
#     end
#     def pad!(min_size, opt=nil)
#         n = min_size - self.length
#         n.times{self << opt}
#         self
#     end
# end



# class Array
#   def pad!(min_size, pad_value=nil)
#     (min_size - self.length).times do self << pad_value 
#     end
    
#   self
#   end
  
#   def pad(min_size, pad_value=nil)
#   self.dup.pad!(min_size, pad_value)
#   end
# end﻿


# p [1,2,3].pad(5) # [1, 2, 3, nil, nil]
# p [1,2,3].pad(5, 'apple') # [1,2,3,'apple', 'apple']
# p [1,2,3].pad(3) # [1,2,3]


arr = [1,2,3]
# p arr.length

# p arr[arr.length] = "apple"
p 2.times{arr << "apple"}
p arr

# p (1..2).each {arr[arr.length] = "apple"}

# append "apple" to arr[3] and arr[4]








