

def print_header
# and then print them
	print "The students of my cohort at Makers Academy\n"
	print "-------------\n"
end


def my_print(students)
	 counter = 0
	 while counter < students.count
	 puts  "#{counter+1} #{students[counter][:name]}  #{students[counter][:cohort]} cohort"
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
	while !name.empty? do
		students << {name: name , cohort: :June}
		puts "Now we have #{students.length} students"
		name = gets.chomp
	end
	 students

end




students = input_students


print_header

my_print(students)

print_footer(students)

