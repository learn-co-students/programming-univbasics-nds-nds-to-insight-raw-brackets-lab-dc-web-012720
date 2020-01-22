$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  results = {}
  counter = 0
  while counter < nds.count do
    director_name = nds[counter][:name]
    result[director_name] = 0  
    movie_info = 0
    while movie_info < nds[counter][:movies].count do
      
     result[director_name] += nds[counter][:movies][movie_info][:worldwide_gross]
      movie_info += 1
    end 
    counter += 1
  end
  result
end