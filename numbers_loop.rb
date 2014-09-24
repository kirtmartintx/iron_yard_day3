places = ["Santa Monica", "Nevada City", "San Sebastian", "San Francisco", "Arcata", "Portland", "Houston"]
places.each do |x|

  if x.size >= 10
    puts "#{x} is a terrible place to live."
  else
    puts "#{x} is fantactic."
  end

  if x.include?(" ")
    puts "#{x} sounds a bit west coast."
  end

end
