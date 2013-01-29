;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname hi) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
;how-many
;determines how many temperatures are in a list
(check-expect (how-many (cons 21 (cons 3 (cons 9 empty)))) 3)
(check-expect (how-many (cons 21 (cons -300 (cons 9 empty)))) "ERROR- this list contains non tempatures.")
(check-expect (how-many (cons 21 (cons -7 (cons "Orange Juice" empty)))) "ERROR- this list contains non tempatures.")
(check-expect (sum (cons 9 (cons 3 (cons 2 empty)))) 14)
(check-expect (average (cons 1 (cons 2 (cons 3 empty)))) 2)
;helper for avg, determines how many temps
(define (counter l num)
  (cond 
    [(empty? l) num]
    [else (cond
            [(false? (number? (first l))) "ERROR- this list contains non tempatures."]
            [(> (first l) -256) (counter (rest l) (+ num 1))]
            [else "ERROR- this list contains non tempatures."])]))

(define (how-many l)
  (cond
    [(cons? l)
     (cond
       [(empty? l) "this list is empty"]
       [else (counter l 0)])]
    [else "this is not a list"]
    ))
 ;computes the sum of list items    
(define (sum l)
  (cond 
    [(empty? l) 0]
    [else (+ (first l) (sum (rest l)))]))

;computes avg of list items
(define (average l)
  (/ (sum l) (how-many l)))
