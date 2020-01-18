$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  newHash = {}
  directorIndex = 0 
  while directorIndex < nds.length do 
    name = nds[directorIndex][:name]
    movieIndex = 0 
    newHash[name] = 0 
    while movieIndex < nds[directorIndex][:movies].length do 
      newHash[name] += nds[directorIndex][:movies][movieIndex][:worldwide_gross] 
      movieIndex += 1 
    end 
    directorIndex+=1 
  end 
  newHash
end
