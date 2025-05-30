-- Membuat tabel analisa
CREATE TABLE kimia_farma.tabel_analisa_transaksi AS -- Membuat CTE bernama tabel_satu untuk mempermudah proses query
WITH tabel_satu AS (
    SELECT -- Menampilkan kolom-kolom mandatory
        ft.transaction_id,
        ft.date,
        kc.branch_id,
        kc.branch_name,
        kc.kota,
        kc.provinsi,
        kc.rating AS rating_cabang,
        ft.customer_name,
        p.product_id,
        p.product_name,
        p.price AS actual_price,
        ft.discount_percentage,
        ft.rating AS rating_transaksi,
        CASE
            WHEN p.price <= 50000 THEN 0.10
            WHEN p.price > 50000
            AND p.price <= 100000 THEN 0.15
            WHEN p.price > 100000
            AND p.price <= 300000 THEN 0.20
            WHEN p.price > 300000
            AND p.price <= 500000 THEN 0.25
            WHEN p.price > 500000 THEN 0.30
            ELSE 0.0
        END AS persentase_gross_laba
    FROM `kimia_farma.kf_final_transaction` ft -- Menggabungkan tabel kf_kantor_cabang
        JOIN `kimia_farma.kf_kantor_cabang` kc ON kc.branch_id = ft.branch_id -- Menggabungkan tabel kf_product
        JOIN `kimia_farma.kf_product` p ON p.product_id = ft.product_id
),
-- Membuat CTE bernama tabel_dua untuk mempermudah dalam membuat kolom nett_sales dan nett_profit
tabel_dua AS (
    SELECT -- Menampilkan semua kolom
        tabel_satu.*,
        -- Query untuk menghitung nett_sales
        (
            tabel_satu.actual_price - (
                tabel_satu.actual_price * tabel_satu.discount_percentage
            )
        ) AS nett_sales,
        (
            -- Query untuk menghitung nett_profit
            (
                tabel_satu.actual_price - (
                    tabel_satu.actual_price * tabel_satu.discount_percentage
                )
            ) * tabel_satu.persentase_gross_laba
        ) AS nett_profit
    FROM tabel_satu
)
SELECT *
FROM tabel_dua;