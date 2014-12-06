

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

def print_names(students,pattern=/A(.)+/,max_name_length = 12)
	students.each_with_index do |student,index|
		print "#{index}. #{student[:name]} (#{student[:cohort]} cohort)\n" if (student[:name]=~pattern) && 
																			  (student[:name].length < max_name_length)
	end
end

def print_header
  print "The students of my cohort at Makers Academy\n"
  print "--------------\n"
end

def print_footer(names)
  print "Overall, we have #{names.length} great students\n"	
end

def input_students
	print "Please enter the names of the students\n"
	print "To finish, just hit return twice\n"
	#create an empty array
	students = []
	#get first name
	name = gets.chomp
	#while the name is not empty repea this code
	while !name.empty? do
		#add the student hsah 
		students << {:name => name, :cohort => :novmeber}
		print "Now we have #{students.length} students\n"
		#get another name from the user
		name = gets.chomp
	end
	#return the arry of students
	students
end

pattern = /A(.)+/
students = input_students
print_header
print_names(students,pattern)
print_footer(students)
