def splitter(user_input)
  string_array = user_input.split("? ")
  output_string = ''
  string_array.each do |v|
    output_string += calc(v).to_s + ' '
  end
  output_string.chomp(" ")
end

def calc(input_string)
  scrubbed_string = input_string.gsub("?" ,"")
  split_string = scrubbed_string.split(" ")
  return_value = nil
  
  while split_string.include?("power") do
    i = split_string.index("power")
    return_value = split_string[i-4].to_f ** split_string[i-1].gsub(/\D/, '').to_f
    split_string[i] = return_value
    split_string.slice!(i-4..i-1)
  end

  while split_string.include?("times") do
    i = split_string.index("times")
    return_value = split_string[i-1].to_f * split_string[i+1].to_f
    split_string[i] = return_value
    split_string.slice!(i+1)
    split_string.slice!(i-1)
  end

  while split_string.include?("divided") do
    i = split_string.index("divided")
    return_value = split_string[i-1].to_f / split_string[i+2].to_f
    split_string[i] = return_value
    split_string.slice!(i+1..i+2)
    split_string.slice!(i-1)
  end

  while split_string.include?("minus") do
    i = split_string.index("minus")
    return_value = split_string[i-1].to_f - split_string[i+1].to_f
    split_string[i] = return_value
    split_string.slice!(i+1)
    split_string.slice!(i-1)
  end

  while split_string.include?("plus") do
    i = split_string.index("plus")
    return_value = split_string[i-1].to_f + split_string[i+1].to_f
    split_string[i] = return_value
    split_string.slice!(i+1)
    split_string.slice!(i-1)
  end

  return return_value
end

