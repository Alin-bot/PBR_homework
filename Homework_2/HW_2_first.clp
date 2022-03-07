(defrule outlook
    =>
    (printout t "How's the weather outlook?" crlf)
    (assert (outlook (read)))

)

(defrule sunny
    (outlook sunny)
    =>
    (printout t "How's the humidity?" crlf)
    (assert (humidity (read)))
)

(defrule rain
    (outlook rain)
    =>
    (printout t "How's the wind?" crlf)
    (assert (wind (read)))
)


(defrule yes
    (or 
        (outlook overcast)
        (humidity normal)
        (wind weak)
    )
    =>
    (printout t "Yes" crlf)
)

(defrule no
    (or 
        (humidity high)
        (wind strong)
    )
    =>
    (printout t "No" crlf)
)
