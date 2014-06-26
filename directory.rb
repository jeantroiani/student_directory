
def interactive_menu
	loop do
	print_menu
		#read the user's inout and save it into a variable
		process(gets.chomp)
		
	end
end

def process(selection)
	#perform the action the user asked for
	case selection
		when "1"
			
			input_students
			
		when "2"
			
				show_students
		when "3"
				save_students

		when "9"
			exit
		else
			puts "I don't know what you meant, try again."
		end
end

def print_menu
	#input the students"
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "9. Exit"
end

def show_students
	#show the students"
	print_header
	print_students_list
	print_footer
end

def print_header
# and then print them
	puts "The students of my cohort at Makers Academy".center(100)
	puts"-------------".center(100)
end


def print_students_list
	
	puts "Which cohort do you want to see?"
	cohortSelected = gets.delete!("\n")

	 
	 cohortStudents=[]
		 @students.map.with_index do |month, index| 
		 	if @students[index][:cohort] == cohortSelected
		 		cohortStudents<< @students[index]
		 	 end

		end


	 counter = 0
	 while counter < cohortStudents.count
	 puts  "#{counter+1} #{cohortStudents[counter][:name].ljust(12) }| #{cohortStudents[counter][:cohort].ljust(19)} cohort | 
	 #{cohortStudents[counter][:hobby].ljust(26)} | #{cohortStudents[counter][:country].ljust(36)} | #{cohortStudents[counter][:height].ljust(46)}"
	 counter += 1
	end
end
	 

def print_footer
	print"Overall we have #{@students.length} great students\n".center(100)
end



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
	
     @students = students
end

def save_students
	file = File.open("students.csv","w")
	@students.each do |student|
		student_data= [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line

	end
	puts "your file have been saved"
	file.close
end



interactive_menu


