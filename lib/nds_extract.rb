$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
p directors_database
def directors_totals(nds)
  result = {}
  row = 0 
  total = 0 
  rows = 0 
  while row < nds.count do 
    directors = nds[row]
    
  while rows < nds.count do 
    col = 0 
    num = nds[rows][col][:world_wide_gross]
    while col < nds[row].count do 
      num += nds[rows][col][:world_wide_gross]
      col += 1 
    end
    rows += 1 
  end
  return total
end

