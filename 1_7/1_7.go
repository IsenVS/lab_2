package main

import (
	"fmt"
	"strings"
)

func main() {
	S := "1001"
	x := 1
	c := strings.Count(S, "1")
	flag := true
	N := len(S)
	limit := x * c + 1
	max := 0
	count := 0
	for i := 0; i < N-1; i++ {
		if string(S[i]) == "0" {
			count += 1
			if max < count {
				max = count
			} else {
				count = 0
			}
		}
		if max >= limit {
			flag = false
			break
		}
	}
	if flag {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}