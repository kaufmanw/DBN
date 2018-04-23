;(require "weinman-dtree.scm")
(load "restaurant.scm")
(load "mushroom.scm")
(load "learning.scm")
(load "analysis.scm")
(load "dtree.scm")

(define mushroom-attributes
  (load-mushroom-attributes "mushroom-attribs.txt"))

(define mushroom-examples
  (load-mushroom-examples "mushrooms.txt" mushroom-attributes))

;;
;; File
;;   classify.scm
;;
;; Authors
;;   Jerod Weinman
;;     Documentation for decision-tree-classify
;;
;; Summary
;;   Implementation of decision-tree classification
;;
;; Provides
;;   (decision-tree-classify decision-tree instance)

;;
;; Procedure
;;   decision-tree-classify
;;
;; Purpose
;;   Classify an instance using a decision-tree
;;
;; Parameters
;;   decision-tree, a decision tree
;;   instance, an association list
;;
;; Produces
;;   label, a value
;;
;; Preconditions
;;   instance is an association list whose keys are attributes
;;   decision tree-is a decision tree, which is either a label or a list 
;;      whose car is an attribute and whose cdr is an association list 
;;      with attribute values as keys and decision trees as values.
;;
;; Postconditions
;;   label is a classification for the instance
(define decision-tree-classify
 (lambda (decision-tree instance)
  (let loop ([dtree decision-tree])
   (cond [(not  (pair? dtree))
          dtree]
         [else
          (let*
              ([attrib (car dtree)]
               [val (cdr (assoc attrib instance))])
            (loop (cdr (assoc val (cdr dtree)))))]))))

