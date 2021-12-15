foreign key 2 ya da daha fazla tablo arasinda ki iliskiyi kurar 
primary key null olmaz tum satirlari saydirabiliriz

SELECT COUNT(Invoiced) AS

SELECT COUNT(DISTINCT Composer) AS BESTECI_SAYISI
FROM tracks;

/* invoices tablosunda kaç adet farklı yıl 
olduğunu hesaplayan sorguyu yazınız*/ 
SELECT MIN(HireDate) AS earliest_date 

SELECT name as song_name, min(milliseconds) as duration
FROM tracks;

SELECT min(Grade),max(Grade)
FROM students;

SELECT sum(total) as Toplam_gwelir
FROM invoices;

SELECT avg(duration
FROM tracks
odev 
	/* invoices  tablosunda 2009 ile 2013 
	tarihileri arasındaki faturaların toplam 
	değerini listeyiniz */
SELECT ROUND(AVG(TOTAL) AS ORTALAMA_GELIR
FROM invoices;

SELECT ROUND(AVG(Milliseconds))
FROM tracks;

SELECT name, Milliseconds
FROM tracks
WHERE Milliseconds > 393599;

SELECT name, Milliseconds
FROM tracks
WHERE Milliseconds > (	SELECT AVG(Milliseconds)
						FROM tracks);
						
SELECT Composer, COUNT(name) as song_count
FROM tracks 
WHERE Composer IS NOT NULL
GROUP BY Composer;

SELECT country,COUNT(FirstName) as a
FROM customers
GROUP BY country
ORDER BY a DESC;

SELECT country,City,COUNT(FirstName) as nu_cu
FROM customers
GROUP BY country,City;

SELECT BillingCountry, ROUND(AVG(Total),2) as ort_fatura
FROM invoices 
WHERE InvoiceDate BETWEEN "2009-01-01" AND "2011-12:31 23:59:59"
GROUP BY	 BillingCountry;

/*===================================================
        JOINS
====================================================*/
    
--     Join islemleri farkli tablolardan secilen sutunlar ile yeni bir tablo 
--     olusturmak icin kullanilabilir.
--     
--     JOIN islemleri Iliskisel Veritabanlari icin cok onemli bir ozelliktir. Çunku
--    	Foreign Key'ler ile iliskili olan tablolardan istenilen sutunlari cekmek 
--     icin JOIN islemleri kullanilabilir.

SELECT students.name,students.exam, students.score, test.passing_score
FROM students
INNER JOIN tests ON students.EXAM = Test.exam;

--     Standart SQL'de en çok kullanılan Join islemleri:
--   	1) FULL JOIN:  Tablodaki tum sonuclari gosterir
--     2) INNER JOIN:  Tablolardaki ortak olan sonuc kumesini gosterir
--     3) LEFT JOIN:  Ilk tabloda (Sol) olup digerinde olmayan sonuclari gosterir
--     4) RIGHT JOIN: Sadece Ikinci tabloda olan tum sonuclari gosterir.

--		NOT: SQLite Sadece INNER, LEFT VE CROSS JOIN İşlemlerini desteklemektedir.
 
 /*===================================================*/   
/* araclar.db adındaki veritabanını 
  kullanarak Markalar ve Siparisler tablolarındaki 
 marka_id'si ayni olan kayıtların marka_id, 
 marka_adi, siparis_adedi ve siparis_tarihi   
 bilgilerini  listeleyen bir sorgu yaziniz.*/
 
 SELECT markalar.marka_id,markalar.marka_adi,
		siparisler.siparis_adedi,siparisler.siparis_tarihi
 FROM markalar
 JOIN siparisler
 ON markalar.marka_id = siparisler.marka_id;
 
 
