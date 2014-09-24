numbers = [3, 10, 2, 8, 100, 13, 33, 52]
# Say 'HIGH' if number is higher than 20
# Say 'LOW' if number is lower that 20

numbers.each do |n|
  if n > 20
    puts "#{n} is HIGH"
  else
    puts "#{n} is LOW"
  end
end
