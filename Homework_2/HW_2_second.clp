(defrule printer
    =>
    (printout t "Printer does not print?" crlf)
    (assert (print (read)))
    (printout t "A red light is falshing?" crlf)
    (assert (red (read)))
    (printout t "Printer is unrecognised?" crlf)
    (assert (unrecognised (read)))
)

(defrule power_cable
    (or 
        (and (print yes) (red yes) (unrecognised no))
        (and (print no) (red no) (unrecognised no))
    )
    =>
    (printout t "Check the power cable!" crlf)
)

(defrule computer_cable
    (or 
        (and (print yes) (red yes) (unrecognised yes))
        (and (print yes) (red no) (unrecognised yes))
        (and (print no) (red yes) (unrecognised yes))
        (and (print no) (red no) (unrecognised yes))
    )
    =>
    (printout t "Check the printer-computer cable!" crlf)
)

(defrule software
    (or 
        (and (print yes) (red no) (unrecognised yes))
        (and (print no) (red yes) (unrecognised no))
    )
    =>
    (printout t "Ensure printer software is installed!" crlf)
)

(defrule ink
    (or 
        (and (print yes) (red yes) (unrecognised yes))
        (and (print yes) (red yes) (unrecognised no))
        (and (print no) (red yes) (unrecognised yes))
        (and (print no) (red yes) (unrecognised no))
        (and (print no) (red no) (unrecognised yes))
    )
    =>
    (printout t "Check/replace ink!" crlf)
)

(defrule jam
    (or 
        (and (print yes) (red yes) (unrecognised no))
        (and (print yes) (red no) (unrecognised no))
        (and (print no) (red yes) (unrecognised no))
        (and (print no) (red no) (unrecognised no))
    )
    =>
    (printout t "Check for paper jam!" crlf)
)