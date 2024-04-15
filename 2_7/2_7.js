
function findDestination(destinations) {
    const map = new Map();
    for (const [from, to] of destinations) {
      if (from === to) {
        return "обратитесь к специалисту";
      }
      map.set(from, to);
    }
  
    let current = destinations[0][0];
    while (map.has(current)) {
      current = map.get(current);
    }
    return current;
  }
  
  const destinations = [
    ["Новосибирск", "Дубай"],
    ["Новосибирск", "Искитим"],
    ["Искитим", "Линево"]
  ];
  console.log("Output:", findDestination(destinations));
  
  