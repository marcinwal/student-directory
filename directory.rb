

#student_count = 9

students = [
 {:name => "Dr. Hannibal Lecter", :cohort => :november, :hobbies => "sport", :birth_country => "usa", :eye_color => :blue},
 {:name =>"Darth Vader", :cohort => :november,:hobbies => "kung-fu", :birth_country => "usa", :eye_color => :red},
 {:name =>"Nurse Ratched", :cohort => :november,:hobbies => "painting", :birth_country => "usa", :eye_color => :green},
 {:name =>"Michael Corleone", :cohort => :november,:hobbies => "shooting", :birth_country => "italy", :eye_color => :green},
 {:name =>"Alex De Large", :cohort => :november,:hobbies => "singing", :birth_country => "usa", :eye_color => :brown},
 {:name =>"The Alien", :cohort => :november,:hobbies => "dance", :birth_country => "space", :eye_color => :yellow},
 {:name =>"Termiantor", :cohort => :november,:hobbies => "shooting", :birth_country => "usa", :eye_color => :blue},
 {:name =>"Fredy Kruger", :cohort => :september,:hobbies => "party", :birth_country => "germany", :eye_color => :blue},
 {:name =>"The Joker", :cohort => :september,:hobbies => "sport", :birth_country => "usa", :eye_color => :brown}
]



def print_names(pattern=/(.)*/,max_name_length = 120)
	@students.each_with_index do |student,index|
		print "#{index}. #{student[:name]} (#{student[:cohort]} cohort)\n" #if (student[:name]=~pattern) && 
																		   #	  (student[:name].length < max_name_length)
	end
end

def print_names_by_cohort(students,months)
	cohort_grouped = students.map {|el| {el[:cohort] => el[:name]}} 
	months.each do |month|
      puts "\nStudents in #{month} cohort are:"
	  cohort_grouped.each do |el|
	    	print el[month]
	  end
    end

end

def print_names_with_while(students,pattern=/(.)*/,max_name_length = 120)
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

def print_footer()
  plural = 1 #how many s's should be added
  plural = 0 if @students.length == 1	
  print "Overall, we have #{@students.length} great student" + 's' * plural 
  puts	
end

def input_details(name)

	print "Please enter #{name} cohort out of #{@months} "
	coh = gets.chomp.to_sym

	puts "selection not in options #{@months} set to defualt" unless @months.include?(coh)
    coh = "november" unless @months.include?(coh)

	print "Please enter #{name} hobbies "
	hobbies = gets.chomp
	print "Please enter #{name} conutry of birth "
	country = gets.chomp
	print "Please enter #{name} eye color "
	eyes = gets.tr('\n','') # substitute of chomp
	#print eyes
	return hobbies,country,eyes,coh
end

def load_students
	file = File.open("students.csv","r")
	file.readlines.each do |line|
		name,cohort = line.chomp.split(",")
		@students << {:name => name , :cohort => cohort.to_sym}
	end
	file.close
end


def save_students
	file = File.open("students.csv","w")
	@students.each do |student|
		students_data = [student[:name], student[:cohort]]
		csv_line = students_data.join(",")
		file.puts csv_line
	end
	file.close
end

def input_students()
	print "Please enter the names of the students\n"
	print "To finish, just hit return twice\n"
	#create an empty array
	#students = []
	#get first name
	name = gets.chomp
	#while the name is not empty repea this code
	while !name.empty? do
		#add the student hash
		hobby,country,eye,coh = input_details(name)
		#puts  "#{hobby} ,#{country}, #{eye}"
		@students << {:name => name, :cohort => coh, :hobbies => hobby, :birth_country => country, :eye_color => eye.to_sym }
		print "Now we have #{@students.length} students\n"
		#get another name from the user
		name = gets.chomp
	end
	#return the arry of students
	#students
end

def print_menu
	puts "Menu"
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
	puts "9. Exit"
end	

def show_students()
		print_header
		print_names()
		print_footer()
end

def process(selection)
	case selection
	  when "1"
		input_students
	  when "2"
		show_students
	  when "3"
	    save_students	
	  when "4"
	  	load_students  
	  when "9"
		exit
	  else
		puts "I do not know what you meant, try again"
	end
end	

def interactive_menu
  @months = [:september, :december ,:march ,:june, :november]		
  @students = []
  loop do
  	print_menu	
	process(gets.chomp)
  end
end

def old_main_run
  pattern = /A(.)+/
  students = input_students(months)
  print_header
  print_names(students,pattern)
  print_footer(students)
  print_names_with_while(students,pattern)


  print print_names_by_cohort(students,months)
end

interactive_menu





