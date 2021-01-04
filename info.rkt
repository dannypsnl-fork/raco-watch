#lang info
(define collection "raco-watch")
(define deps '("base" "file-watchers"))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/raco-watch.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(dannypsnl))
(define raco-commands
  '(("watch" (submod raco-watch/main main) "watch and eval command" #f)))
