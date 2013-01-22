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


;118

;pos?- consumes a l, determines whether all elements are positive numbers

(check-expect (pos? (cons 12 (cons 2 (cons 8 (cons 6 empty))))) true)
(check-expect (pos? (cons 4 (cons -88 (cons 5 (cons 21 empty))))) false)


;pos?
(define (pos? l)
  (cond
  [(empty? l) true]
  [(> (first l) 0) (pos? (rest l))]
  [else false]))

;119
;all-true
;determines wherther all elements of a list of bools are true
;same principle as abouve
(check-expect (cons true (cons true empty)) true)
(check-expect (cons true (cons false empty)) false)