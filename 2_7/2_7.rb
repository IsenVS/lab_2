
require'set'

def find_destination(destinations)
  map = {}
  destinations.each do |pair|
    return "обратитесь к специалисту" if pair[0] == pair[1]
    map[pair[0]] = pair[1]
  end

  current = destinations[0][0]
  until map[current].nil?
    current = map[current]
  end
  current
end

destinations = [["Новосибирск", "Дубай"], ["Новосибирск", "Искитим"], ["Искитим", "Линево"]]
puts "Output: #{find_destination(destinations)}"

