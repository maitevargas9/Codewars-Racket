#|
Description

Palindrome strings

A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward or forward. 
This includes capital letters, punctuation, and word dividers.

Implement a function that checks if something is a palindrome. If the input is a number, convert it to string first.

Examples(Input ==> Output)

"anna"   ==> true
"walter" ==> false
12321    ==> true
123456   ==> false
|#

#lang racket

(provide palindrome?)

(define (palindrome? line)
  (let ([l (string->list (if (number? line)
                             (number->string line)
                             line))])
    (equal? l (reverse l))))