
fun findDestination(destinations: List<Pair<String, String>>): String {
    val map = mutableMapOf<String, String>()
    for ((from, to) in destinations) {
        if (from == to) {
            return "обратитесь к специалисту"
        }
        map[from] = to
    }

    var current = destinations[0].first
    while (map.containsKey(current)) {
        current = map[current]!!
    }
    return current
}

fun main() {
    val destinations = listOf(
        Pair("Новосибирск", "Дубай"),
        Pair("Новосибирск", "Искитим"),
        Pair("Искитим", "Линево")
    )
    println("Output: ${findDestination(destinations)}")
}

