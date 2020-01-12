$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  element_index = 0
  result = {}
  
  #while element index is less than num of directors
  while element_index < nds.length do
    total = 0
    new_index = 0
    
    #extract numbers
    while new_index < nds[element_index][:movies].length do
      total = total + nds[element_index][:movies][new_index][:worldwide_gross]
      new_index += 1
    end
    result[nds[element_index][:name]] = total
    element_index += 1
  end
  result
end

puts directors_totals(directors_database)
