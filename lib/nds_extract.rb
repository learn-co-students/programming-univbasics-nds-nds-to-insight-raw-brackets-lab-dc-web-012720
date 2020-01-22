$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  directors = 0
  result = {}
  while directors < nds.length do
    result[nds[directors][:name]] = 0
    movie = 0
    total = 0
    while movie < nds[directors][:movies].length do
      total += nds[directors][:movies][movie][:worldwide_gross]
      movie += 1
    end
    result[nds[directors][:name]] = total
  directors += 1
  end
return result
end
