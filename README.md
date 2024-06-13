# Guide menggunakan API Fish Disease Solution 🐟💉:

Base url : wait for deployment

---

## Register

url

```
/solution
```

request payload data :

```
{
    "diseaseName" : "[nama penyakit]"
}
```

### nama-nama penyakit yang tersedia :

```
aeromonas
anchor_worms
costia
dropsy
fin_rot
gill_flukes
gill_mites
healthy
hemorrhagic_septicemia
mouth_rot
tail_rot
```

### list response dari server :

- ketika berhasil :

```
{
    "status": "success",
    "message": "Data solusi berhasil didapatkan",
    "data": {
        "data": {
            "name": "[nama penyakit]",
            "gejala": {
                "1": "[gejala 1]",
                "2": "[gejala 2]",
                "3": "[gejala 3]",
            },
            "langkah_penanganan": {
                "1": "[langkah penanganan 1]",
                "2": "[langkah penanganan 2]",
                "3": "[langkah penanganan 3]"
            },
            "obat": {
                "1": "[obat 1]",
                "2": "[obat 2]",
                "3": "[obat 3]"
            }
        }
    }
}
```

notes -> jumlah gejala, langkah penanganan, dan obat menyesuaikan.

- ketika nama penyakit yang dicari tidak ditemukan :

```
{
    "status": "failed",
    "message": "Penyakit yang anda cari tidak ditemukan"
}
```

---
