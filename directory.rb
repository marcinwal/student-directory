

#student_count = 9 

students = [
 {:name => "Dr. Hannibal Lecter", :cohort => :november},
 {:name =>"Darth Vader", :cohort => :november},
 {:name =>"Nurse Ratched", :cohort => :november},
 {:name =>"Michael Corleone", :cohort => :november},
 {:name =>"Alex De Large", :cohort => :november},
 {:name =>"Teh Alien", :cohort => :november},
 {:name =>"Termiantor", :cohort => :november},
 {:name =>"Fredy Kruger", :cohort => :november},
 {:name =>"The Joker", :cohort => :november}
]

def print_names(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort"
	end
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end

def print_footer(names)
  print "Overall, we have #{names.length} great students"	
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	#create an empty array
	students = []
	#get first name
	name = gets.chomp
	#while the name is not empty repea this code
	while !name.empty? do
		#add the student hsah 
		students << {:name => name, :cohort => :novmeber}
		puts "Now we have #{students.length} students"
		#get another name from the user
		name = gets.chomp
	end
	#return the arry of students
	students
end


students = input_students
print_header
print_names(students)
print_footer(students)
