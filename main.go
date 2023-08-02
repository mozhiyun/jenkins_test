package main

import (
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Here is the home page. test666666"))
	})
	http.ListenAndServe(":80", nil)
}
