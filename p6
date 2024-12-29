#p6
package main

import "fmt"

type Book struct {
	title     string
	available bool
}

func (b *Book) borrow() {
	if b.available {
		b.available = false
		fmt.Println(b.title, "has been borrowed.")
	} else {
		fmt.Println(b.title, "is not available.")
	}
}

func (b *Book) returnBook() {
	if !b.available {
		b.available = true
		fmt.Println(b.title, "has been returned.")
	} else {
		fmt.Println(b.title, "was not borrowed.")
	}
}

func (b *Book) checkAvailability() {
	if b.available {
		fmt.Println(b.title, "is available.")
	} else {
		fmt.Println(b.title, "is not available.")
	}
}

func main() {
	book1 := Book{title: "Go Programming", available: true}

	book1.checkAvailability()
	book1.borrow()
	book1.checkAvailability()
	book1.returnBook()
	book1.checkAvailability()
}
