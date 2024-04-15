
package main

import (
	"fmt"
)

func findDestination(destinations [][]string) string {
	m := make(map[string]string)
	for _, p := range destinations {
		if p[0] == p[1] {
			return "обратитесь к специалисту"
		}
		m[p[0]] = p[1]
	}

	current := destinations[0][0]
	for {
		next, ok := m[current]
		if !ok {
			break
		}
		current = next
	}
	return current
}

func main() {
	destinations := [][]string{{"Новосибирск", "Дубай"}, {"Новосибирск", "Искитим"}, {"Искитим", "Линево"}}
	fmt.Println("Output:", findDestination(destinations))
}

