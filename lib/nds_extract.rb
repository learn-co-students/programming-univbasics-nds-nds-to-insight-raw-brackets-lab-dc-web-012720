$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)
  db = directors_database
  netTotalHash = {}
  totalNumDirectors = db.length 
  n = 0
  
  while n < totalNumDirectors do
    totalSum = 0 
    i = 0 
    currentDirector = db[n][:name]

    while i < db[n][:movies].length do 
      totalSum += db[n][:movies][i][:worldwide_gross]
      i += 1
    end
    netTotalHash[currentDirector] = totalSum
    n += 1 
  end
  return netTotalHash
end