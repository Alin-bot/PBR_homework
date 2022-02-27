; (deftemplate clips
;     (multislot name)
; )

(deffacts startup
(always1)
)

(defrule pack1
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


(defrule pack2
(always1)
=>
(printout t "iti plac stiintele umane?" crlf)
(assert (uman (read)))
(printout t "Iti place sa lucrezi cu back end-ul?" crlf)
(assert (back-end (read)))
(printout t "Iti place sa scrii referate?" crlf)
(assert (referate (read)))
)

(defrule CC
(uman nu)
(back-end da)
(referate nu)
=>
(printout t "Alege CC!" crlf)
)

(defrule ARMS
(uman da)
(back-end da)
=>
(printout t "Alege ARMS!" crlf)
)

(defrule PCPIT
(uman da)
(back-end nu)
(referate da)
=>
(printout t "Alege PCPIT!" crlf)
)

(defrule HCI
(uman da)
(back-end nu)
(referate nu)
=>
(printout t "Alege HCI!" crlf)
)


(defrule pack3
(always1)
=>
(printout t "iti place hardware-ul?" crlf)
(assert (hardware (read)))
(printout t "Iti place sa lucrezi cu profesori FII?" crlf)
(assert (FII (read)))
(printout t "Iti plac masinile?" crlf)
(assert (masini (read)))
)

(defrule MSD
(hardware da)
(FII nu)
(masini nu)
=>
(printout t "Alege MSD!" crlf)
)

(defrule ISSA
(masini da)
=>
(printout t "Alege ISSA!" crlf)
)

(defrule SCA
(hardware da)
(FII da)
=>
(printout t "Alege SCA!" crlf)
)

(defrule RPA
(hardware nu)
(FII da)
=>
(printout t "Alege RPA!" crlf)
)
