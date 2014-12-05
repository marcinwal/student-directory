

#student_count = 9 

students = [
 "Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex De Large",
 "Teh Alien",
 "Termiantor",
 "Fredy Kruger",
 "The Joker"]


def print_names(names)
	names.each do |name|
		puts name
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
