$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(directors_database)
   total = 0 
   row_index = 0 
   result = {}
   while row_index < directors_database.length do
name = directors_database[row_index][:name]

if !result[name] 
result[name] = total
else
  result[name] += total

#binding.pry
   while row_index < directors_database[row_index][:movies].length do
      gross = directors_database[0][:movies]
 worldwide_gross = gross[row_index][:worldwide_gross]
 result[name] += worldwide_gross
 #binding.pry 
row_index += 1
end
#binding.pry
return result
end
end

end
 #name = directors_database[row_index][:name] 
pp directors_database
directors_totals(directors_database)