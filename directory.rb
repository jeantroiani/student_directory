

def print_header
# and then print them
 print "The students of my cohort at Makers Academy\n"
print"-------------\n"
end


def print_footer(names)
	print"Overall we have #{names.length} great students\n"
end

def input_students
	print"Please enter the names of the students\n"
	print"To finish, just hit return twice\n"
	students = []
	name = gets.chomp
	while !name.empty? do
		students << {name: name , cohort: :June}
		print"Now we have #{students.length} students\n"
		name = gets.chomp
	end
	

	students.each_with_index do |name, position|
	 if name[:name].capitalize.start_with?("A") and name[:name].length < 12
		
		puts "#{position+1}.- #{name}\n
		============================"
		end
    end
end

students = input_students


print_header


print_footer(students)

