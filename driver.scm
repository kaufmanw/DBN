
;; File:
;;   driver.scm
;;
;; Summary:
;;   testing and data collection for decision-tree classification
;;
;;  Provides:
;;   [none]

(load "classify.scm")
(define mushroom-tree (decision-tree-learning mushroom-examples mushroom-attributes #\e))

(display "data for part B, using run-trials") (newline)
(run-trials mushroom-examples mushroom-attributes #\e 10)

(display "data for part A, using decision-tree-accuracy") (newline)
(decision-tree-accuracy mushroom-tree mushroom-examples)
(display "note that this doubles as a correctness check for our ")
(display "classification, as we would be extraordinarily unlikely ")
(display "to get the correct classifications by chance") (newline)



