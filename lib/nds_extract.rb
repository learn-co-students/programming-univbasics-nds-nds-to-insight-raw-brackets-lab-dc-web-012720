$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


#When encountering a new name, add that as key
#The value will be all of profit they made from movie

def directors_totals(nds)
  db = directors_database
  netTotalHash = {}
  totalNumDirectors = db.length #This will count how many hashmaps are in our array, provided by database
  n = 0
  
  while n < totalNumDirectors do
    totalSum = 0 #We reset totalSum to 0 every time we get new director
    i = 0 #We create another counter that resets to 0 so that we can iterate through every movie per director. 
    currentDirector = db[n][:name]
    
    #The algorithm below allows to sum to be added while n (the current director) is constant... only the movie [i] will change here
    while i < db[n][:movies].length do 
      totalSum += db[n][:movies][i][:worldwide_gross]
      i += 1
    end
    netTotalHash[currentDirector] = totalSum
    n += 1 #onto the next director
  end
  return netTotalHash
end
