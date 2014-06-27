@students=[]

def question

	print "=>"
	STDIN.gets.chomp
end

def save_list(name, cohort)
	@students << {name: name, cohort: cohort}
end

def interactive_menu
	loop do
	print_menu
		#read the user's inout and save it into a variable
		process(question)
		
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
		when "4"
				load_students

		# when "5"
		# 		load_by_month

		when "9"
			exit
		else
			puts "I don't know what you meant, try again."
		end
end

def print_menu
	#input the students"
	puts ""
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load students"
	puts "9. Exit"
	puts ""
end

def show_students
	#show the students"
	
	print_students_list
	print_footer
end

def print_header
# and then print them
	puts "The students of my cohort at Makers Academy".center(50)
	puts"-------------".center(50)
end


# def load_by_month
# 	puts "Which cohort do you want to see?"
# 	cohortSelected = question

# end


def print_students_list
	
	puts "Which cohort do you want to see?"
	cohortSelected = question

print_header
	 
	 cohortStudents=[]
		 @students.map.with_index do |month, index| 
		 	if @students[index][:cohort] == cohortSelected
		 		cohortStudents<< @students[index]
		 	 end

		end


	 counter = 0
	 while counter < cohortStudents.count
	 puts  "#{counter+1} #{cohortStudents[counter][:name].ljust(12) }| #{cohortStudents[counter][:cohort].ljust(19)}"
	 counter += 1
	end
end
	 

def print_footer
	puts"Overall we have #{@students.length} great students".center(50)
end



def input_students
	
	# students = []
	puts "Please enter the names of the students"
	puts"To finish, just hit return twice"
	
	name = question
	if name.empty?
			puts "Sorry there  are no students enrolled"
			exit
	end
	

	puts "Please provide your cohort, if your cohort is not June"
	cohort=question

	
		if !cohort.empty? 
			cohort=cohort
		else
			cohort="June"
			
		end

	# puts "Please enter the hobby of the students"
	# hobby = question

	

	# puts "Please enter the country of the students"
	# country= question

	# puts "Please enter the height of the students"
	# height = question

		while !name.empty? do
			save_list(name, cohort)
			# @students << {name: name , cohort: cohort, hobby: hobby, country: country, height: height }
			if @students.count == 1
				puts "Now we have #{@students.length} student"
			else
				puts "Now we have #{@students.length} students"
			end
			puts "Please enter the names of the students"
			name = question

			if !name.empty?
				puts "Please provide your cohort, if your cohort is not June"
			cohort=question

			if !cohort.empty? 
				cohort=cohort
			else
				cohort="June"
				
			end

				# puts "Please enter the hobby of the students"
				# hobby = question

				# puts "Please enter the country of the students"
				# country= question
				# puts "Please enter the height of the students"
				# height = question

			end
	end
	
     # @students = students
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

#Ask Someone and see if this is OK?

# def load_students(filename = "students.csv")
	
# 	file = File.open("students.csv" ,"r")
# 	file.readlines.each do |line|
# 	name, cohort =	line.chomp.split(',')
	
# 	save_list(name, cohort)
	
# 	end
# 	puts "File Loaded"
# 	file.close
	
# end

def load_students
	puts "which file do you want to open?"
	user_answer = question
	return if user_answer.nil?
	
	if File.exists? (user_answer)
		File.open(user_answer ,"r").readlines.each do |line|
		name, cohort =	line.chomp.split(',')
		save_list(name, cohort)	
		end		
		puts "\n=> File Loaded"	
	else
		puts "That file doesn't exist"
	return	
	end
end

# def load_students(filename = "students.csv")
# 	puts "which file do you want to open?"
# 	question
# 	return if question.nil?
# 	if question.exists?
# 	File.open("students.csv" ,"r").readlines.each do |line|
# 	name, cohort =	line.chomp.split(',')
# 	save_list(name, cohort)	
# 	end		
# 	puts "File Loaded"	
# end



def try_load_students
	filename = ARGV.first
	return if filename.nil?

	if File.exists? (filename)
		load_students(filename)
		puts "Loaded #{@students.length} from #{filename}"
	else
		puts "Sorry, #{filename} doesn't exist"
	end

end


try_load_students
interactive_menu


