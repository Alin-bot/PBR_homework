; (deftemplate clips
;     (multislot name)
; )

(deffacts startup
(always1)
)

(defrule AI
(always1)
=>
(printout t "iti place AI?" crlf)
(assert (AI (read)))
(printout t "Iti place sa lucrezi cu front end-ul?" crlf)
(assert (front-end (read)))
(printout t "Iti place matematica?" crlf)
(assert (mate (read)))
)

(defrule PBR
(AI da)
(mate da)
=>
(printout t "Alege PBR!" crlf)
)

(defrule ACTN
(front-end nu)
(mate da)
(AI nu)
=>
(printout t "Alege ACTN!" crlf)
)

(defrule GD
(AI da)
(front-end da)
=>
(printout t "Alege GD!" crlf)
)

(defrule TPPM
(front-end da)
(mate nu)
(AI nu)
=>
(printout t "Alege TPPM!" crlf)
)
