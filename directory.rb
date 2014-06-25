

def print_header
# and then print them
	print "The students of my cohort at Makers Academy\n"
	print "-------------\n"
end


def my_print(students)
	 counter = 0
	 while counter < students.count
	 puts  "#{counter+1} #{students[counter][:name]} | #{students[counter][:cohort]} cohort | #{students[counter][:hobby]} | #{students[counter][:country]} | #{students[counter][:height]}"
	 counter += 1
	end
end
	 

def print_footer(names)
	print"Overall we have #{names.length} great students\n"
end


def input_students
	puts "Please enter the names of the students"
	puts"To finish, just hit return twice"
	
	students = []
	
	name = gets.chomp
	puts "Please enter the hobby of the students"
	hobby = gets.chomp
	puts "Please enter the country of the students"
	country= gets.chomp
	puts "Please enter the height of the students"
	height = gets.chomp
	while !name.empty? do
		students << {name: name , cohort: :June, hobby: hobby, country: country, height: height }
		puts "Now we have #{students.length} students"
		puts "Please enter the names of the students"
		name = gets.chomp
		if !name.empty?
			puts "Please enter the hobby of the students"
			hobby = gets.chomp
			puts "Please enter the country of the students"
			country= gets.chomp
			puts "Please enter the height of the students"
			height = gets.chomp
		end
	end
	 students

end




students = input_students


print_header

my_print(students)

print_footer(students)

