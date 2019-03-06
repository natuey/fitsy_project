require_relative "fitsy_input.rb"
pf_list = FitsyInput.pf_list
pf_1 = FitsyInput.pf_1
pf_2 = FitsyInput.pf_2
pf_3 = FitsyInput.pf_3
pf_4 = FitsyInput.pf_4
pf_5 = FitsyInput.pf_5
pf_6 = FitsyInput.pf_6
pf_7 = FitsyInput.pf_7
pf_8 = FitsyInput.pf_8
pf_9 = FitsyInput.pf_9 
pf_10 = FitsyInput.pf_10
pf_11 = FitsyInput.pf_11
pf_12= FitsyInput.pf_12 
pf_13= FitsyInput.pf_13 
pf_14= FitsyInput.pf_14
pf_15= FitsyInput.pf_15
pf_16= FitsyInput.pf_16
pf_17= FitsyInput.pf_17
pf_18= FitsyInput.pf_18
pf_19= FitsyInput.pf_19
pf_20= FitsyInput.pf_20
pf_21= FitsyInput.pf_21 
pf_22= FitsyInput.pf_22
pf_23= FitsyInput.pf_23
pf_24= FitsyInput.pf_24
pf_25= FitsyInput.pf_25
pf_26= FitsyInput.pf_26
pf_27= FitsyInput.pf_27
pf_28= FitsyInput.pf_28
pf_29= FitsyInput.pf_29
pf_30= FitsyInput.pf_30

#Experience_Filter
#pull out the values from the hash exp elements, and form an array with them, so that we can do the filtering
puts "Which experience group you want to see?\n1.Junior(0~2years) 2.Advanced(2~5years) 3. Senior(over 5years) "
print "Type your option number: "
exp_option = gets.chomp.to_i
puts "\n"
pf_list_junior = []
pf_list_advanced = []
pf_list_senior = []
for i in 0...pf_list.size
    if pf_list[i][:exp] <= 2
        pf_list_junior << pf_list[i]
    elsif pf_list[i][:exp] <= 5
        pf_list_advanced << pf_list[i]
    else
        pf_list_senior << pf_list[i]
    end
end

puts "     Name                Skillset                Followers          Softskills         "
if exp_option == 1
    for j in 0...pf_list_junior.size
        puts "    #{pf_list_junior[j][:name]}        #{pf_list_junior[j][:skillset]}                #{pf_list_junior[j][:followers]}           #{pf_list_junior[j][:softskills]}   "
    end
end

if exp_option == 2
    for j in 0...pf_list_advanced.size
        puts "    #{pf_list_advanced[j][:name]}        #{pf_list_advanced[j][:skillset]}            #{pf_list_advanced[j][:followers]}              #{pf_list_advanced[j][:softskills]}   "
    end
end

if exp_option == 3
    for j in 0...pf_list_senior.size
        puts "    #{pf_list_senior[j][:name]}        #{pf_list_senior[j][:skillset]}            #{pf_list_senior[j][:followers]}              #{pf_list_senior[j][:softskills]}   "
    end
end