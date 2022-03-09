(deffacts startup
    (lista 1 2 3 4 5)
)

(defrule check_list
    (not (exists (lista $?) (lista $? ?x $? ?x $?)))
    =>
    (printout t "da" crlf)
)

; (deffacts startup
;     (lista 1 2 3 4 5)
; )

; (defrule check_list
;     ?a<-(lista $? ?x $? ?x $?)
;     =>
;     (retract ?a)
; )

; (defrule print
;     (lista $?)
;     =>
;     (printout t "DA" crlf)
; )
