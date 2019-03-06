#module Fitsy_input
    pf_1 = {name: "James", exp: 4, skillset: ["pilates", "cardio"], followers: 100, softskills: "party"}
    pf_2 = {name: "Shunny", exp: 2, skillset: ["yoga", "cardio"], followers: 1200, softskills: "leadership"}
    pf_3 = {name: "Karl", exp: 0.5, skillset: ["yoga", "cardio"], followers: 700, softskills: "time management"}
    pf_list = [pf_1, pf_2, pf_3]
#end

#Experience_Filter
#pull out the values from the hash exp elements, and form an array with them, so that we can do the filtering
# puts "Which experience group you want to see?\n1.Junior(0~2years) 2.Advanced(2~5years) 3. Senior(over 5years) "
# print "Type your option number: "
# exp_option = gets.chomp.to_i
# puts "\n"
# pf_list_junior = []
# pf_list_advanced = []
# pf_list_senior = []
# for i in 0...pf_list.size
#     if pf_list[i][:exp] <= 2
#         pf_list_junior << pf_list[i]
#     elsif pf_list[i][:exp] <= 5
#         pf_list_advanced << pf_list[i]
#     else
#         pf_list_senior << pf_list[i]
#     end
# end

# puts "     Name                Skillset                Followers          Softskills         "
# if exp_option == 1
#     for j in 0...pf_list_junior.size
#         puts "    #{pf_list_junior[j][:name]}        #{pf_list_junior[j][:skillset]}                #{pf_list_junior[j][:followers]}           #{pf_list_junior[j][:softskills]}   "
#     end
# end

# if exp_option == 2
#     for j in 0...pf_list_advanced.size
#         puts "    #{pf_list_advanced[j][:name]}        #{pf_list_advanced[j][:skillset]}            #{pf_list_advanced[j][:followers]}              #{pf_list_advanced[j][:softskills]}   "
#     end
# end

# if exp_option == 3
#     for j in 0...pf_list_senior.size
#         puts "    #{pf_list_senior[j][:name]}        #{pf_list_senior[j][:skillset]}            #{pf_list_senior[j][:followers]}              #{pf_list_senior[j][:softskills]}   "
#     end
# end

#skillset selection
puts "Which skillset group you want to see?\ne.g yoga, cardio, etc"
print "Type ONE skillset: "
skillset = gets.chomp
puts "\n"
puts " "*5 +"Name"+" "*16 + "Skillset" +" "*17 +"Followers" + " "*10 + "Softskills" + " "*9

pf_list_skillset = []

for k in 0...pf_list.size
    if pf_list[k][:skillset].include? skillset
        pf_list_skillset << pf_list[k]
    end
end

if pf_list_skillset == []
    puts "None of the fitness professionals have this skillset."
else
    for n in 0...pf_list_skillset.size
        puts " "*5 +"#{pf_list_skillset[n][:name]}"+" "*16 + "#{pf_list_skillset[n][:skillset]}" + " "*17 +"#{pf_list_skillset[n][:followers]}" + " "*10 + "#{pf_list_skillset[n][:softskills]}" + " "*9
    end
end

