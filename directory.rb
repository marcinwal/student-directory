

student_count = 9 

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



puts "The students of my cohort at Makers Academy"
puts "--------------"

students.each do |student|
	puts student
end

print "Overall, we have #{students.length} great students"