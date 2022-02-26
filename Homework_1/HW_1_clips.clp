; (deftemplate clips
;     (multislot name)
; )
(deffacts fapte (minge rosie) (minge mare))

(defrule my_defrule
(minge rosie)
(minge mare)
=>
(assert (minge frumoasa))
)

(defrule read_fact
(minge mare)
=>
(assert (minge (read)))
)
