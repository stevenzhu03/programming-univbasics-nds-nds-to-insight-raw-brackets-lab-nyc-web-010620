$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  director_index = 0
  totals = {}
  
  while director_index < nds.length do
    director_name = nds[director_index][:name]
    totals[director_name] = 0
    movie_index = 0
    
      while totals[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross] do
      movie_index += 1
      
    end
      
      director_index +=1
  end
  
  totals
end
