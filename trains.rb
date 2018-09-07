ar_timetable = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

puts ar_timetable

# 1. Save the direction of train 111 into a variable.
puts "111111111111111111111111111111111"
train111_direction = ar_timetable[7][:direction]

puts train111_direction

# 2. Save the frequency of train 80B into a variable.
puts "2222222222222222222222222222222222"

train80B_frequence = ar_timetable[5][:frequency_in_minutes]
puts train80B_frequence

# 3. Save the direction of train 610 into a variable.
puts "3333333333333333333333333333333333"

train610_direction = ar_timetable[2][:direction]
puts train610_direction

# 4. Create an empty array. Iterate through each train and add the name of the train into the array if it travels north.
puts "4444444444444444444444444444444444"

trains_north = []

#using *.select* will not do because I don't want to pull the full elements of the ar_timetable array with hashes, just single elements of the hash
# I also don't need to do trains_north=ar_timetable.each etc.
ar_timetable.each do |train|
  if train[:direction] == "north"
    trains_north << train[:train]
  end
end

puts trains_north
# 5. Do the same thing for trains that travel east.
puts "55555555555555555555555555555555555"

trains_east = []

ar_timetable.each do |train|
  if train[:direction] == "east"
    trains_east << train[:train]
  end
end

puts trains_east

# 6. You probably just ended up rewriting some of the same code.
# Move this repeated code into a method that accepts a direction and a list of trains as arguments,
# and returns a list of just the trains that go in that direction.
# Call this method once for north and once for east in order to DRY up your code.

puts "666666666666666666666666666"

def find_trains(direction, timetable)

trains_direction = []
puts "trains_" + direction + ":"

  timetable.each do |train|
    if train[:direction] == direction
      trains_direction << train[:train]
    end
  end

puts trains_direction

end

find_trains("north", ar_timetable)
find_trains("east", ar_timetable)

# 7. Pick one train and add another key/value pair for the first_departure_time.
# For simplicity, assume the first train always leave on the hour.
# You can represent this hour as an integer: 6 for 6:00am, 12 for noon, 13 for 1:00pm, etc.

puts "7777777777777777777777777777777"

ar_timetable[1][:first_departure_time] = 9

puts ar_timetable
