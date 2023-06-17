package handler

import (
	"encoding/json"
	"log"
	"net/http"
)

func Hello(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json; charset=utf-8")
	res := map[string]string{
		"message": "Hello World",
	}
	w.WriteHeader(http.StatusOK)
	if err := json.NewEncoder(w).Encode(res); err != nil {
		log.Println(err)
	}
}
