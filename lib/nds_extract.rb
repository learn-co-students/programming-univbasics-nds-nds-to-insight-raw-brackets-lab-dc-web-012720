$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
require 'pp'
def directors_totals(nds)
   new_hash = {}
   row_index = 0
 while row_index < nds.length do
    new_hash[(nds[row_index][:name])]= 0
    column_index = 0
 
 while column_index < nds[row_index][:movies].length do
    
  new_hash[(nds[row_index][:name])] += nds[row_index][:movies][column_index][:worldwide_gross]
     column_index += 1
    end
    row_index += 1
  end   
  return new_hash
  end
      directors_database


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
  # Be sure to return the result at the end!