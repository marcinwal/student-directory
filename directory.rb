

#student_count = 9 

students = [
 ["Dr. Hannibal Lecter", :november],
 ["Darth Vader", :november],
 ["Nurse Ratched", :november],
 ["Michael Corleone", :november],
 ["Alex De Large", :november],
 ["Teh Alien", :november],
 ["Termiantor", :november],
 ["Fredy Kruger", :november],
 ["The Joker", :november]
]

def print_names(students)
	students.each do |student|
		puts "#{student[0]} (#{student[1]} cohort"
	end
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end

def print_footer(names)
  print "Overall, we have #{names.length} great students"	
end



print_header
print_names(students)
print_footer(students)
