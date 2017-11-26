line_width = 80
love = ["Kyle", "Cigarettes", "Booze", "Women", "Sailboats", "Tiny Homes"]
hate = ["Jerks", "Pain", "Blindness"]
plants = ["Lettuce", "Onions", "Tomatos"]
cars = ["Tesla", "F-150 Trucks", "Jeeps"]

tabs_for_stuff = %w{Love Hate Plants Cars}

more_tabs = [%w{#love}, %w{#hate}, %w{#plants}, %w{#cars}]

different_stuff_with_values = [
                                ["Love", "Kyle , cigarettes, booze, women, sailboats, tiny homes, cars, fishing"],
                                ["Hate", "Jerks, Bugs that eat my garden, hatred"]
                                ]
different_stuff_with_values.each { |name, value| puts name.ljust(10) + value }

stuff_with_numbered_values = [["John - ", 51], ["Pete - ", 35], ["Mary - ", 24]]
stuff_with_numbered_values.each { |name, value| puts name.ljust(10) + value.to_s }

# Both of these work but like:
# Love:
# Kyle, cigarettes etc...
# Hate:
# Jerks, Pain, Trouble
tabs_with_commas = [
                  ["Love:", "Kyle, cigarettes, booze, women, sailboats, tiny homes, cars, fishing"],
                  ["Hate:", "Jerks, Pain, Trouble"]
                ]
#puts "Puts tabs with commas."
puts tabs_with_commas
puts tabs_with_commas.each { |name, value| puts name + value }

puts "***"*30

puts tabs_with_no_commas = [
                      ["Love:", "Kyle Cigarettes Booze Fishing"],
                      ["Hate:", "Jerks Pain Trouble"]
                    ]
#tabs_with_no_commas.each { |name, value| puts name.ljust(10) + value }
puts "Puts tabs with no commas."
puts tabs_with_no_commas
puts "---"*30

#puts ("Tabs".center(line_width))

#headers = ("\tLove".rjust(line_width - 80) + "\tHate".rjust(line_width - 60) + "\tPlants".rjust(line_width - 40) + "\tCars".rjust(line_width-20))

# The list below handles the headers, but not the lists below
# which should read verticly
list_of_stuff = puts """
\v*Love \t*Hate \t*Plants \t*Cars
\v#{love} \t#{hate} \t#{plants} \t#{cars}
    """
#puts list_of_stuff

# A couple of tabbed lists
love_list = """
\v* Kyle        \t* Pain       \t* Tomato  \t* Tesla
\v* Booze       \t* Trouble    \t* Onion   \t* Ford F-150
\v* Women       \t* Jerks      \t* Lettuce \t* Toyota Sedan
\v* Cigarettes  \t* Bad Coding \t* Beans   \t* Jeep
"""
#puts love_list
puts "-"*80
another_list = """
\v Love         \t Hate        \t Plants   \t Cars
\v********      \t********     \t********* \t********
\v* Kyle        \t* Pain       \t* Tomato  \t* Tesla
\v* Booze       \t* Trouble    \t* Onion   \t* Ford F-150
\v* Women       \t* Jerks      \t* Lettuce \t* Toyota Sedan
\v* Cigarettes  \t* Bad Coding \t* Beans   \t* Jeep
"""
#puts another_list
