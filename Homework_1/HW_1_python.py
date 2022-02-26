pachet_1 = {
    "PBR" : 0,
    "ACTN" : 0,
    "GD" : 0,
    "TPPM" : 0
}

pachet_2 = {
    "ARMS" : 0,
    "PCPIT" : 0,
    "CC" : 0,
    "HCI" : 0
}

pachet_3 = {
    "MSD" : 0,
    "ISSA" : 0,
    "SCA" : 0,
    "RPA" : 0
}

# Pachet 1
raspuns = 2
while raspuns != 0 and raspuns != 1:
    raspuns = int(input("Iti place AI-ul?\n"))

if raspuns == 1:
    pachet_1["PBR"] += 1
    pachet_1["GD"] += 1
else:
    pachet_1["ACTN"] += 1
    pachet_1["TPPM"] += 1

raspuns = 2
while raspuns != 0 and raspuns != 1:
    raspuns = int(input("Iti place sa lucrezi cu front end-ul?\n"))

if raspuns == 1:
    pachet_1["TPPM"] += 1
    pachet_1["GD"] += 1
else:
    pachet_1["ACTN"] += 1
    pachet_1["PBR"] += 1

raspuns = 2
while raspuns != 0 and raspuns != 1:
    raspuns = int(input("Iti place matematica?\n"))

if raspuns == 1:
    pachet_1["ACTN"] += 1
    pachet_1["PBR"] += 1
else:
    pachet_1["GD"] += 1
    pachet_1["TPPM"] += 1

max_key = max(pachet_1, key = pachet_1.get)
print("Optiunea din pachetul 1 este: " + max_key)

# Pachet 2
raspuns = 2
while raspuns != 0 and raspuns != 1:
    raspuns = int(input("Iti place partea umana?\n"))

if raspuns == 1:
    pachet_2["HCI"] += 1
    pachet_2["PCPIT"] += 1
    pachet_2["ARMS"] += 1
else:
    pachet_2["CC"] += 1

raspuns = 2
while raspuns != 0 and raspuns != 1:
    raspuns = int(input("Iti place partea de backend?\n"))

if raspuns == 1:
    pachet_2["CC"] += 1
    pachet_2["ARMS"] += 1
else:
    pachet_2["PCPIT"] += 1
    pachet_2["HCI"] += 1

raspuns = 2
while raspuns != 0 and raspuns != 1:
    raspuns = int(input("Iti place sa scrii referate?\n"))

if raspuns == 1:
    pachet_2["PCPIT"] += 1
    pachet_2["HCI"] += 1
else:
    pachet_2["CC"] += 1
    pachet_2["ARMS"] += 1

max_key = max(pachet_2, key = pachet_2.get)
print("Optiunea din pachetul 2 este: " + max_key)

# Pachet 3
raspuns = 2
while raspuns != 0 and raspuns != 1:
    raspuns = int(input("Iti place hardware?\n"))

if raspuns == 1:
    pachet_3["MSD"] += 1
    pachet_3["ISSA"] += 1
else:
    pachet_3["SCA"] += 1
    pachet_3["RPA"] += 1

raspuns = 2
while raspuns != 0 and raspuns != 1:
    raspuns = int(input("Iti place sa lucrezi cu angajati UAIC?\n"))

if raspuns == 1:
    pachet_3["SCA"] += 1
    pachet_3["RPA"] += 1
else:
    pachet_3["ISSA"] += 1
    pachet_3["MSD"] += 1

raspuns = 2
while raspuns != 0 and raspuns != 1:
    raspuns = int(input("Iti plac masinile?\n"))

if raspuns == 1:
    pachet_3["ISSA"] += 1
    pachet_3["SCA"] += 1
else:
    pachet_3["RPA"] += 1
    pachet_3["MSD"] += 1

max_key = max(pachet_3, key = pachet_3.get)
print("Optiunea din pachetul 3 este: " + max_key)
