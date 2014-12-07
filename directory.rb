

#student_count = 9

students = [
 {:name => "Dr. Hannibal Lecter", :cohort => :november, :hobbies => "sport", :birth_country => "usa", :eye_color => :blue},
 {:name =>"Darth Vader", :cohort => :november,:hobbies => "kung-fu", :birth_country => "usa", :eye_color => :red},
 {:name =>"Nurse Ratched", :cohort => :november,:hobbies => "painting", :birth_country => "usa", :eye_color => :green},
 {:name =>"Michael Corleone", :cohort => :november,:hobbies => "shooting", :birth_country => "italy", :eye_color => :green},
 {:name =>"Alex De Large", :cohort => :november,:hobbies => "singing", :birth_country => "usa", :eye_color => :brown},
 {:name =>"The Alien", :cohort => :november,:hobbies => "dance", :birth_country => "space", :eye_color => :yellow},
 {:name =>"Termiantor", :cohort => :november,:hobbies => "shooting", :birth_country => "usa", :eye_color => :blue},
 {:name =>"Fredy Kruger", :cohort => :november,:hobbies => "party", :birth_country => "germany", :eye_color => :blue},
 {:name =>"The Joker", :cohort => :november,:hobbies => "sport", :birth_country => "usa", :eye_color => :brown}
]

def print_names(students,pattern=/A(.)+/,max_name_length = 12)
	students.each_with_index do |student,index|
		print "#{index}. #{student[:name]} (#{student[:cohort]} cohort)\n" if (student[:name]=~pattern) && 
																			  (student[:name].length < max_name_length)
	end
end

def print_names_with_while(students,pattern=/A(.)+/,max_name_length = 12)
	studs = students.length 
	i = 0 
	while i < studs
		print "#{i}.  #{students[i][:name]} (#{students[i][:cohort]} cohort)\n".center(25) if (students[i][:name]=~pattern) && 
					  				  										  (students[i][:name].length < max_name_length)
		i +=1 
	end
end

def print_header
  print "The students of my cohort at Makers Academy\n"
  print "--------------\n"
end

def print_footer(names)
  print "Overall, we have #{names.length} great students\n"	
end

def input_details(name)
months = ["september", "december" ,"march" ,"june"]	
	print "Please enter #{name} cohort out of #{months}"
	coh = gets.chomp

	puts "selection not in options #{months} set to defualt" unless months.include?(coh)
    coh = "november" unless months.include?(coh)

	print "Please enter #{name} hobbies "
	hobbies = gets.chomp
	print "Please enter #{name} conutry of birth "
	country = gets.chomp
	print "Please enter #{name} eye color "
	eyes = gets.chomp
	return hobbies,country,eyes,coh
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
		#add the student hash
		hobby,country,eye,coh = input_details(name)
		#puts  "#{hobby} ,#{country}, #{eye}"
		students << {:name => name, :cohort => coh.to_sym, :hobbies => hobby, :birth_country => country, :eye_color => eye.to_sym }
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
print_names_with_while(students,pattern)

