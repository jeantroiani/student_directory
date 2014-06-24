
#first we print the list if students
students = [
{name: "Dave", cohort:  :June},
{name: "Eddie", cohort: :June},
{name: "Catharina" , cohort: :June},
{name: "Igor" , cohort: :June},
{name: "Marco", cohort: :June},
{name: "Lisa", cohort: :June},
{name: "Michiel", cohort: :June},
{name: "Jean", cohort: :June},
{name: "Nicola", cohort: :June},
{name: "Jennie", cohort: :June},
{name: "Iona", cohort: :June},
{name: "Nikesh", cohort: :June},
{name: "Chloe", cohort: :June},
{name: "Toan", cohort: :June},
{name: "Jamie", cohort: :June},
{name: "Peter" , cohort: :June},
{name: "Talal", cohort: :June},
{name: "Charlie", cohort: :June},
{name: "Charlotte", cohort: :June},
{name: "Thomas", cohort: :June},
{name: "Zoey", cohort: :June},
{name: "Hannah", cohort: :June},
{name: "Joe", cohort: :June},
{name: "Alex", cohort: :June},
{name: "Jeremy", cohort: :June}
]

def print_header
# and then print them
 puts "The students of my cohort at Makers Academy"
puts "-------------"
end

def print(names)
	names.each do |name|
		puts "#{name[:name]} , (#{name[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall we have #{names.length} great students"
end


print_header
print(students)
print_footer(students)

