(deffacts fapte_initiale
 (meniu)
)

(deffacts startup
    (lista 1 2 3 4 5)
)

(defrule afiseaza_meniu
    ?a<-(meniu)
    =>
    (retract ?a)
    (printout t "1. Citeste o lista cu valori numerice." crlf)
    (printout t "2. Afiseaza lista sortata crescator cu BubbleSort." crlf)
    (printout t "3. Adauga un element într-o lista." crlf)
    (printout t "4. Verifica daca lista este palindrom." crlf)
    (printout t "5. Afiseaza cel mai mic si cel mai mare element dintr-o lista." crlf)
    (printout t "6. Afișeaza elementele care apar o singura data într-o lista." crlf)
    (printout t "7. Iesire." crlf)

    (printout t “Dati optiunea:”)
    (assert (optiune (read))
)

(defrule optiune1
    ?a<-(optiune 1)
    =>
    (retract ?a)
    (printout t "Ofera-mi lista: ")
    (assert (lista (explode$ (readline))))
    (assert (meniu))
)

(defrule option2
    ?a<-(optiune 2)
    =>
    (retract ?a)
    ; TODO: buuble sort algorithm


    ; afiseaza lista sortata
    (printout t "Lista sortata este: "  crlf)

    (assert (meniu))
)

(defrule option3
    ?a<-(optiune 3)
    =>
    (retract ?a)
    ; TODO: afisare liste disponibile


    ; alegere lista din listele disponibile
    (printout t "Lista la care vrei sa adaugi un element este?..." crlf)
    ; TODO save list in a var and delete the list fact

    ; cerere element pe care vrem sa il adaugam
    (printout t "Elementul care vrei sa il adaugi este?..." crlf)
    ; TODO save element in a var

    ; TODO: rescriere lista cu lista salvata in variabila + elementul nou

    (assert (meniu))
)

(defrule option4
    ?a<-(optiune 4)
    =>
    (retract ?a)
    ; TODO: afisare liste disponibile


    ; alegere lista din listele disponibile
    (printout t "Lista pe care vrei sa o verifici este?..." crlf)

    ; TODO: verificare daca lista este palindrom si afisare DA/NU


    (assert (meniu))
)

(defrule option5
    ?a<-(optiune 5)
    =>
    (retract ?a)
    ; TODO: afisare liste disponibile


    ; alegere lista din listele disponibile
    (printout t "Lista pe care vrei sa o verifici este?..." crlf)

    ; TODO: afisare elemente min si max


    (assert (meniu))
)

(defrule option6
    ?a<-(optiune 6)
    =>
    (retract ?a)
    ; TODO: afisare liste disponibile


    ; alegere lista din listele disponibile
    (printout t "Lista pe care vrei sa o verifici este?..." crlf)

    ; TODO: afisare elemente care nu se repeta


    (assert (meniu))
)

(defrule option7
    ?a<-(optiune 7)
    =>
    (retract ?a)
    (printout t "Ai iesit!" crlf)
)