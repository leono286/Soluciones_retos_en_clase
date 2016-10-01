
#---------------FUNCTIONS----------------------
def print_all(txt)
  txt.read
end

def function_two(txt)
  txt.rewind
end

def line_by_line(txt)
  File.readlines(txt).each do |line|
    line
  end
end
#------------------------------------------
#User enter the filename
i = 0
puts "Insert the filename please (without .txt extension): "
filename = gets.chomp + ".txt"

#puts "el archivo se llama #{filename}"
txt_one = open(filename)

puts print_all(txt_one)
puts "-------------------"

function_two(txt_one)
puts "function_two called and file is rewind"

puts "-------------------"
lines  = line_by_line(txt_one)

while i < lines.length
  puts "Linea #{i}: #{lines[i]}"
  i += 1
end

txt_one.close
