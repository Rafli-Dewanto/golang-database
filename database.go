package belajar_golang_database

import (
	"database/sql"
	"time"
)

func GetConnection() *sql.DB {
	db, err := sql.Open("mysql", "root:password@tcp(localhost:3306)/belajar_golang_database?parseTime=true")
	if err != nil {
		panic(err)
	}

	db.SetMaxIdleConns(10) // jumlah koneksi minimal yang dibuat
	db.SetMaxOpenConns(100) // jumlah koneksi maksimal yang dibuat
	db.SetConnMaxIdleTime(5 * time.Minute) // berapa lama koneksi yang sudah tidak digunakan akan dihapus
	db.SetConnMaxLifetime(60 * time.Minute) // berapa lama koneksi boleh digunakan

	return db
}
