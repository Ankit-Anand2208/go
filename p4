#p4
package main

import "fmt"

func swap(a, b *int) {
	temp := *a
	*a = *b
	*b = temp
}

func main() {
	var x, y int
	fmt.Print("Enter two integers: ")
	fmt.Scan(&x, &y)

	fmt.Printf("Before swap: x = %d, y = %d\n", x, y)
	swap(&x, &y)
	fmt.Printf("After swap: x = %d, y = %d\n", x, y)
}
