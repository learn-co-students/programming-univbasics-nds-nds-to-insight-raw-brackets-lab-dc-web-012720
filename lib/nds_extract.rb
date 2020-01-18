$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  hash = {};
  dircount = 0;
  while nds[dircount] do
    
    key = nds[dircount][:name]
    
    movcount = 0;
    value = 0
    
    while nds[dircount][:movies][movcount] do
      
      value += nds[dircount][:movies][movcount][:worldwide_gross]
  
      
      movcount += 1
      
    end
    dircount += 1
    
    hash[key] = value
    
  end
  
  return hash
  
end
