;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;117

; A l is one of:
; – empty
; – (cons num l)
; interp. a l represents some amounts of money


;just like recusion expample- execpt instead of 1, I use first l
(define (sum l)
  (cond
  [(empty? l) 0]
  [else (+ (first l) (sum (rest l)))]))