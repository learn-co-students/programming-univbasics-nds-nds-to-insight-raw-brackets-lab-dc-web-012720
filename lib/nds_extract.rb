$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  i = 0
  totals = {}
  while i < nds.length do
    director_name = nds[i][:name]
    totals[director_name] = 0
    j = 0
    while j < nds[i][:movies].length do
      totals[director_name] += nds[i][:movies][j][:worldwide_gross]
      j += 1
    end
    i += 1
  end
  totals
end