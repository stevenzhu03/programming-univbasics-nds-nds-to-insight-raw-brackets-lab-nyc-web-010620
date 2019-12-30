$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  dir_index = 0
  totals = {}

  while dir_index < nds.length {
    di_name = nds[dir_index][:name]
    totals[dir_name] = 0
    movie_index = 0

    while movie_index < nds[dir_index][:movies].length {
      totals[dir_name] += nds[dir_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    }

    dir_index += 1
  }

  totals
end