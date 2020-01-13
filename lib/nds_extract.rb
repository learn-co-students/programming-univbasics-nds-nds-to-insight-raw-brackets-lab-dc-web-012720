#require 'pry' 
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = { }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the

  # Be sure to return the result at the end!
  
  directors_totals = {}
  row_index = 0 
  while row_index < nds.length do 
     
    movie_index = 0 
    gross_total = 0 
    while movie_index < nds[row_index][:movies].length do
    
    gross_total += nds[row_index][:movies][movie_index][:worldwide_gross]
    
    movie_index += 1
   # binding.pry
    end
    # p gross_total
    key_name = nds[row_index][:name]
    directors_totals[key_name] = gross_total
    row_index += 1 
    
    
  end 
p directors_totals
  
end

directors_totals(directors_database)
