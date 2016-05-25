jumps = {1 => 38, 4 => 14, 9 => 31, 21 => 42, 28 => 84, 36 => 44, 51 => 67, 71 => 91, 80 => 100,
  98 => 78, 95 => 75, 93 => 73, 87 => 24, 64 => 60, 62 => 19, 56 => 53, 49 => 11, 48 => 26, 16 => 6}

winning_position = 100
positions = [0]
nsteps = 0

while !positions.include?(winning_position) do
  nsteps+=1
  old_positions = positions
  positions = []
  for pos in old_positions
    for dice in 1...7
      new_pos = pos + dice

      positions << (jumps[new_pos] || new_pos)

    end
  end
end

puts "Reached in #{nsteps}"
