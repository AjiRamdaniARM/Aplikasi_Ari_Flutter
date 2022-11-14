pilihan="y"
while pilihan=="y":
    print("""
    ==============================
    
        List Menu Minuman jus

    ==============================
    1. JUS SALAK    : Rp 10.000
    2. JUS RAMBUTAN : Rp 13.000
    3. JUS DURIAN   : Rp 15.000
    4. JUS NANGKA   : Rp 12.000
    =============================
    """)
    pesan=str(input("Masukkan List Menu Jus ="))
    jumlahpesan=int(input("Masukkan Jumlah Pesanan ="))
    if pesan == "1" or pesan == "JUS SALAK"or pesan == "jus salak":
        listnama= "Jus Salak"
        harga=(10000*jumlahpesan)
        diskon= int(0)
        promo = int(0)
        totalharga = int(harga)
    elif pesan == "2" or pesan == "JUS RAMBUTAN" or pesan == "jus rambutan" :
        listnama= "Jus Rambutan"
        harga = (13000*jumlahpesan)
        if jumlahpesan >= 5:
            promo = int(0)
            diskon = int(1000)
            totalharga =int(harga)
        else:
            (jumlahpesan <5)
            promo = int(0)
            diskon =int(0)
            totalharga =int(harga-diskon)

    elif pesan == "3" or pesan == "JUS DURIAN" or pesan == "jus durian" :
        listnama= "jus durian"
        harga=int(15000*jumlahpesan)
        if jumlahpesan >= 5:
            promo = int(0)
            diskon = int(2000)
            totalharga =int(harga)
        else:
            (jumlahpesan <5)
            promo = int(0)
            diskon =(0)
            totalharga =int(harga-diskon)

    elif pesan == "4" or pesan == "JUS NANGKA"or pesan == "jus nangka" :
        listnama= "jus nangka"
        harga=int(12000*jumlahpesan)
        if jumlahpesan >= 3:
            promo = int(1)
            diskon = int(0)
            totalharga =int(harga+promo)
        else:
           (jumlahpesan ==2)
           promo = int(0)
           diskon =(0)
           totalharga =int(harga)
    else:
        listnama = "-"
        harga = "-"
        diskon = "-"
        totalharga = "-"
        pilihan=input("menu tidak tersedia, silahkan masukkan  menu yang tersedia silahkan ulangi kembali Y/N =")
 
    print("============================")
    print("         STRUK BELI    ")
    print("============================")
    print("Menu         :",listnama)
    print("Jumlah Pesan :", jumlahpesan)
    print("Harga        :", harga)
    print("Diskon       :",diskon )
    print("promo        :",promo )
    print("============================")
    print("Jumlah Bayar :", totalharga-diskon-promo)
    print("============================")
    pilihan=input("apakah anda ingin order kembali Y/N =")
