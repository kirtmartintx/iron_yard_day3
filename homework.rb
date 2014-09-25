# Just like yesterday's homework
# This time as much as possible do not look back at previous examples.
# Be sure to use git to add your homework changes to your repo on github.
# BONUS + Highly recommened, use comments to describe what is happening with each step
# PART 1
# 1. Make an array of your classmate's names
# Part homework... part Ice Breaker... part review... #winning
rorclass = ["Benjamin", "Astrid", "Thanh", "Adam", "Jared","Bharvi", "Kevin", "Kyle", "Kirt", "Dwight","Jordan", "Efrain"]

puts rorclass

# PART 2
# 1. Create an array of the words in sentence
# 2. Find how many words have a length equal to 4
sentence = "Ruby is way better than JavaScript."

words = []
word = ""

four_letter_words = []

sentence.chars.each do |letter|
  if letter == " " #checks to see if there is a space
      if word.length == 4
        four_letter_words << word
      end
    words << word
    word = ""
  else
    word = word + letter
  end
end


p sentence.split(' ')
p four_letter_words

# PART 3
# 1. Create an array of movies with budgets less than 100
# 2. Create an array of movies that have Leonardo DiCaprio as a star
movies = []
movies << {
title: "Forest Gump",
budget: 55,
stars: ["Tom Hanks"]
}
movies << {
title: "Star Wars",
budget: 11,
stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
title: "Batman Begins",
budget: 150,
stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
title: "Titanic",
budget: 200,
stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
title: "Inception",
budget: 160,
stars: ["Leonardo DiCaprio", "JGL"]
}

ldc_movies = []
budget_movies = []

def movie_stars_LDC?(block)
  block[:stars].each {|star| return true if star == "Leonardo DiCaprio"}
  return false
end
# for integers use different method
def movie_has_budget?(money)
  if money[:budget] < 100
    return true
  end
end

movies.each do |movie|

  budget_movies << movie[:title] if movie_has_budget?(movie)
  ldc_movies << movie[:title] if movie_stars_LDC?(movie)
end
p ldc_movies
p budget_movies
