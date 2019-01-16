# Codeclan Week 01 Day 03
#
# Homework
#
# Arrays, Hashes, Loops and data structures...Wow.

# Exercise A

# Given the following data structure:

stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
puts "Initial Array"
p stops
# Complete these tasks:

puts "#1. Add Edinburgh Waverley to the end of the array"
stops << "Edinburgh Waverley"
p stops

puts "#2. Add Glasgow Queen St to the start of the array"
stops.unshift("Glasgow Queen St")
p stops

p "#3. Add  Polmont at the appropriate point (between Falkirk High and Linlithgow"
stops.insert(4, "Polmont")
p stops

p "#4. Work out the index position of Linlithgow"
Lindex = stops.index("Linlithgow")
p "Linlithgow is found at index: #{Lindex}"

p"#5. Remove Livingston from the array using its name"
stops.delete("Livingston")
p stops

p "#6. Delete Cumbernauld from the array by index"
stops.delete_at(2)
p stops
p "#7. How many stops there are in the array?"
p stops.count
p "#8. How many ways can we return Falkirk High from the array?"
kelpie_count = 0
kelpie = stops[2]
p kelpie
kelpie_count += 1
kelpie = stops[-5]
p kelpie
kelpie_count += 1
kelpie = stops.at(2)
p kelpie
kelpie_count += 1
kelpie = stops.fetch(2)
kelpie_count += 1
p kelpie
puts "Falkirk High can be retrieved from an array #{kelpie_count} ways."


p "#9. Reverse the positions of the stops in the array"
reverse = stops.reverse
p reverse

p "#10. Print out all the stops using a for loop"
for stations in stops
  p stations
end

# Exercise B
#
# Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  },
  "Renfrew" => {
    :twitter => "Fraser",
    :lottery_numbers => [4,9,15,13,10,22],
    :home_town => "Brigadoon",
    :pets => [
      {
        :name => "Pebs",
        :species => "Dog"
      },
      {
        :name => "Amber",
        :species => "Dog"
      },
      {
        :name => "Lil",
        :species => "Dog"
      }
    ]
  }

}

# Complete these tasks:

p "#1. Get Jonathans Twitter handle (i.e. the string jonnyt)"
p users["Jonathan"][:twitter]

p "#2. Get Eriks hometown"
p users["Erik"][:home_town]

p "#3. Get the array of Erik's lottery numbers"
p users["Erik"][:lottery_numbers]

p "4. Get the type of Avril's pet Monty" #Sneaky wee array here watch out for it!
puts users["Avril"][:pets][0][:species]

p "#5. Get the smallest of Erik's lottery numbers"
p users["Erik"][:lottery_numbers].sort[0]

p "#6. Return an array of Avril's lottery numbers that are even"

for numbers in users["Erik"][:lottery_numbers].sort
  if numbers % 2 == 0
    puts numbers
  end
end

p "#7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers"

users["Erik"][:lottery_numbers] << 7
p users["Erik"][:lottery_numbers].sort

p "#8. Change Erik's hometown to Edinburgh"
users["Erik"][:home_town]="Edinburgh"
p users["Erik"][:home_town]

p "#9. Add a pet dog to Erik called Fluffy"
puts users["Erik"][:pets] << {
  :name => "Fluffy",
  :type => "Dog"
}
p "10. Add another person to the users hash"
puts users["Renfrew"] # intense slow thoughts required to build this one
#
# Exercise C
#
# Given the following data structure:

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  },
  {
    name: "Northern Ireland",
    population: 1811000,
    capital: "Belfast"
  }
]

# Complete these tasks:

p "#1. Change the capital of Wales from Swansea to Cardiff."
united_kingdom[1][:capital] = "Cardiff"
puts united_kingdom[1][:capital]

p "#2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array "
p "(The capital is Belfast, and the population is 1,811,000)."
puts united_kingdom[3]

p "#3. Use a loop to print the names of all the countries in the UK."
for countries in united_kingdom
  p countries[:name]
end


p "#4. Use a loop to find the total population of the UK."
uk_population = 0
for countries in united_kingdom
  uk_population += countries[:population]
end
p uk_population
p "Ya dancer."
