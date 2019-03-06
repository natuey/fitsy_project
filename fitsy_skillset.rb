require_relative "fitsy_input.rb"
pf_list = FitsyInput.pf_list
pf_1 = FitsyInput.pf_1
pf_2 = FitsyInput.pf_2
pf_3 = FitsyInput.pf_3

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