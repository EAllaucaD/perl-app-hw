package main

import (
    "fmt"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintln(w, "Hello World! - Edwin Allauca")
}

func main() {
    http.HandleFunc("/", handler)
    port := "8888"
    fmt.Printf("Server is running on http://localhost:%s\n", port)
    if err := http.ListenAndServe(":"+port, nil); err != nil {
        fmt.Println("Error starting the server:", err)
    }
}
