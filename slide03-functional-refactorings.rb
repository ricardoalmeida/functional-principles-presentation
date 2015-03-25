


# Functional Refactorings


#NO

length = 0
["milu", "rantanplan"].each do |dog_name|
  length += dog_name.length
end
puts length # => 14

#YES

length = ["milu", "rantanplan"].map(&:length).inject(0, :+) # 14


# init-empty + each + push = map
# init-empty + each + conditional push -> select/reject
# initialize + each + accumulate -> inject

