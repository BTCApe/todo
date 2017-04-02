arr = []

define_method :pa do #Print array
   puts "\n"
   puts "***"
   arr.each_with_index {|val, index| puts "#{index +1}. #{val} "}
   puts "***\n\n"
   print "> "
end

input = ""
print "> "

while input = gets.strip.downcase do

    if input.include? "add"
      input.sub! 'add', ''    
      arr << input
      #Time.now.utc
      pa
    elsif input.include? "remove"
      input.sub! 'remove ', ''
      arr.delete_at(input.to_i - 1)  
      pa
    else puts "ERROR: Unknown command, try again.\n"
    print "> "
  end
end
