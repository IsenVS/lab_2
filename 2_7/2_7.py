
from typing import List, Tuple

def find_destination(destinations: List[Tuple[str, str]]) -> str:
    destination_map = {}
    for source, dest in destinations:
        if source == dest:
            return "обратитесь к специалисту"
        destination_map[source] = dest

    current = destinations[0][0]
    while current in destination_map:
        current = destination_map[current]

    return current


destinations = [("Новосибирск", "Дубай"), ("Новосибирск", "Искитим"), ("Искитим", "Линево")]
print("Output:", find_destination(destinations))

