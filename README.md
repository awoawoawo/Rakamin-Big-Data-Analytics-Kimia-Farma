# **Kimia Farma Big Data Analytics Project Based Internship**

[SQL (BigQuery)](https://console.cloud.google.com/bigquery?sq=154534627160:b8f121cbe9a04c9aa2b0eeb9235a768a)

[Dashboard (Google Looker Studio)](https://lookerstudio.google.com/s/hPQq-R-gNuw)
<br>
<br>
___

## Introduction

Pada project ini saya berperan sebagai Big Data Analytics dan diminta untuk mengevaluasi kinerja bisnis Kimia Farma dari tahun 2020 hingga 2023. Diberikan 4 dataset, yaitu dataset transaksi, penyimpanan, kantor cabang, dan produk. Dalam proyek ini, saya memanfaatkan SQL BigQuery untuk mengolah data mentah menjadi sebuah datamart yang siap digunakan untuk analisis dan evaluasi kinerja bisnis Kimia Farma selama periode 2020 hingga 2023. Hasil dari analisis tersebut kemudian saya visualisasikan menggunakan Google Looker Studio.

**Dataset**

Berikut adalah dataset yang digunakan dalam project:
- kf_final_transaction
- kf_inventory
- kf_kantor_cabang
- kf_product


**Objektif**

- Membuat tabel analisa hasil dari agregasi keempat dataset
- Membuat Dashboard Performance Analytics Kimia Farma Business Tahun 2020-2023

___

## Tabel Analisa

Membuat tabel analisa dengan kolom sebagai berikut:

* **`transaction_id`**: Kode unik untuk setiap transaksi.
* **`date`**: Tanggal transaksi dilakukan.
* **`branch_id`**: Kode identifikasi cabang Kimia Farma.
* **`branch_name`**: Nama cabang Kimia Farma.
* **`kota`**: Kota tempat cabang Kimia Farma berada.
* **`provinsi`**: Provinsi tempat cabang Kimia Farma berada.
* **`rating_cabang`**: Penilaian atau rating pelanggan terhadap cabang.
* **`customer_name`**: Nama pelanggan yang melakukan transaksi.
* **`product_id`**: Kode identifikasi produk/obat.
* **`product_name`**: Nama produk/obat yang dibeli.
* **`actual_price`**: Harga asli obat sebelum diskon.
* **`discount_percentage`**: Persentase diskon yang diberikan pada obat.
* **`persentase_gross_laba`**: Persentase laba kotor berdasarkan harga obat:

  * Harga ≤ Rp 50.000 → laba 10%
  * Rp 50.001 – 100.000 → laba 15%
  * Rp 100.001 – 300.000 → laba 20%
  * Rp 300.001 – 500.000 → laba 25%
  * Harga > Rp 500.000 → laba 30%
* **`nett_sales`**: Harga akhir obat setelah diskon diterapkan.
* **`nett_profit`**: Keuntungan bersih yang diperoleh Kimia Farma.
* **`rating_transaksi`**: Penilaian pelanggan terhadap pengalaman transaksi.

Query dapat dilihat pada link dibawah:

[SQL (BigQuery)](https://console.cloud.google.com/bigquery?sq=154534627160:b8f121cbe9a04c9aa2b0eeb9235a768a)

---

## Dashboard

Membuat dashboard dengan ketentuan sebagai berikut:

- Judul Dashboard  
- Summary Dashboard  
- Filter Control  
- Snapshot Data  
- Perbandingan Pendapatan Kimia Farma dari tahun ke tahun  
- Top 10 Total transaksi cabang provinsi  
- Top 10 Nett sales cabang provinsi  
- Top 5 Cabang Dengan Rating Tertinggi, namun Rating Transaksi Terendah  
- Indonesia's Geo Map Untuk Total Profit Masing-masing Provinsi  
- Dan analisis lainnya yang dapat anda eksplorasi.

Hasil dapat dilihat pada link dibawah:

[Dashboard (Google Looker Studio)](https://lookerstudio.google.com/s/hPQq-R-gNuw)



