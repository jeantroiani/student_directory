

def print_header
# and then print them
	puts "The students of my cohort at Makers Academy".center(100)
	puts"-------------".center(100)
end


def my_print(students)
	puts "Which cohort do you want to see?"
	cohortSelected = gets.delete!("\n")

	 
	 cohortStudents=[]
		 students.map.with_index do |month, index| 
		 	if students[index][:cohort] == cohortSelected
		 		cohortStudents<< students[index]
		 	 end

		end


	 counter = 0
	 while counter < cohortStudents.count
	 puts  "#{counter+1} #{cohortStudents[counter][:name].ljust(12) }| #{cohortStudents[counter][:cohort].ljust(19)} cohort | 
	 #{cohortStudents[counter][:hobby].ljust(26)} | #{cohortStudents[counter][:country].ljust(36)} | #{cohortStudents[counter][:height].ljust(46)}"
	 counter += 1
	end
end
	 

def print_footer(names)
	print"Overall we have #{names.length} great students\n".center(100)
end

# def no_students
# 	puts "Sorry there  are no students enrolled"
# end

def input_students
	puts "Please enter the names of the students"
	puts"To finish, just hit return twice"
	
	students = []
	
	name = gets.delete!("\n")
	if name.empty?
			puts "Sorry there  are no students enrolled"
			exit
	end
	

	puts "Please provide your cohort, if your cohort is not June"
	cohort=gets.delete!("\n")

	
		if !cohort.empty? 
			cohort=cohort
		else
			cohort="June"
			
		end

	puts "Please enter the hobby of the students"
	hobby = gets.delete!("\n")

	

	puts "Please enter the country of the students"
	country= gets.delete!("\n")

	puts "Please enter the height of the students"
	height = gets.delete!("\n")

		while !name.empty? do
			students << {name: name , cohort: cohort, hobby: hobby, country: country, height: height }
			if students.count == 1
				puts "Now we have #{students.length} student"
			else
				puts "Now we have #{students.length} students"
			end
			puts "Please enter the names of the students"
			name = gets.delete!("\n")

			if !name.empty?
				puts "Please provide your cohort, if your cohort is not June"
			cohort=gets.delete!("\n")

			if !cohort.empty? 
				cohort=cohort
			else
				cohort="June"
				
			end

				puts "Please enter the hobby of the students"
				hobby = gets.delete!("\n")

				puts "Please enter the country of the students"
				country= gets.delete!("\n")

				puts "Please enter the height of the students"
				height = gets.delete!("\n")

			end
	end
	 students

end




students = input_students


print_header


my_print(students)


print_footer(students)

