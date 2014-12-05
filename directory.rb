

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



print_header
print_names(students)
print_footer(students)
