(deffacts startup
    (lista 1 2 3 4 5)
    (lista lista lista)
    (lista 1 2 lista)
    (minge 1 2 3)
)

(defrule list
    (lista $?~lista)
    =>
    (printout t "DA" crlf)
)
