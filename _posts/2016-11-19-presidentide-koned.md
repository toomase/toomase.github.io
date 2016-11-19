---
title: "Eesti presidentide kõned"
author: "Toomas Eilat"
date: "2016-11-19"
layout: post
---









Seoses huviga tekstianalüüsi ja teksti visualiseerimise vastu, tekkis mõte uurida pisut Eesti presidentide kõnesid ja katsetada mõnda tekstianalüüsi ja -visualiseerimise meetodit. Aluseks võtsin R tekstianalüüsi võimalusi tutvustava e-raamatu [Tidy Text Mining with R](http://tidytextmining.com/).

[president.ee](http://president.ee) lehelt on kättesaadavad kõik taasiseseisvunud Eestis peetud presidentide avalikud kõned. Kuna 24 aasta kõnede koguhulk on üpris suur (üle 1350) ja kõned on väga eriilmelised, siis keskendun Vabariigi aastapäeval peetud kõnedele.

Alustuseks vaatan kõiki 24. veebruari kõnesid kokku ning neis enamlevinud sõnasid ja bigramme (kahest järjestikusest sõnast koosevada sõnaühendid). Üksikutest sõnadest domineerib __eesti__, mida on järgmisest sõnast __euroopa__ kasutatud üle kolme korra rohkem. Ka bigrammide puhul on esikohal eesti ja euroopaga seotud sõnaühendid. Samas detailsemat tunnetust kõnede sisust need enamlevinud sõnad siiski ei anna.

![]({{ site.url }}/img/presidentide-koned-graafik_top_sonad_bigrammid-1.png)![]({{ site.url }}/img/presidentide-koned-graafik_top_sonad_bigrammid-2.png)

Lisaks tavalisele *barchart'le* kasutasin enamlevinud bigrammide kujutamiseks ka *network* graafikut. Sellel on kujutatud sõnaühendid, mis esinesid kõnedes vähemalt 5 korda.

![]({{ site.url }}/img/presidentide-koned-bigramm_network-1.png)


### Presidentidele iseloomulikud sõnad kõnedes

Kuna sõnade ja bigrammide esinemissagedus üksinda ei andnud väga palju infot kõnede kohta, siis leian Vabariigi aastapäeva kõnedest igale presidendile kõige iseloomulikumad sõnad. Seda saab teha mõõdiku *tf-idf (term frequency–inverse document frequency)* abil. Sisuliselt aitab see tuvastada sõnu, mis kõigis kõnedes kokku on suhteliselt vähe levinud, aga konkreetse presidendi kõnedes on sagedasemad. Tulemustest joonistub näiteks päris hästi välja president Rüütlile oluline __omavalitsuste__ ja __koostöö__ teema. President Ilves on aga oma aastapäeva kõnedes teistest rohkem tähelepanu pööranud __ettevõtjatele, rahale__ ja __keelele__.

![]({{ site.url }}/img/presidentide-koned-aastapaeva_kone_tf_idf-1.png)

Kui graafikule kanda presidentidele iseloomulikud sõnad ja bigrammid kõigist 1350-st kõnest kokku, siis tulevad hästi välja nende jaoks olulised teemad või vastaval ajahetkel tähtsad sündmused. Näiteks Ilvese ametiaega jäänud Kaitseväe __välismissioonid__ ja __Krimmi__ okupeerimine ning presidendile hingelähedased __küberkaitse__ ja __vabakonna__ teemad. 

Arnold Rüütli puhul äratab tähelepanu esikohal olev __Armeenia__. Tegemist ei ole aga ülevoolava Armeenia lembusega vaid paaril visiidil Armeeni presidendi auks peetud kõnega. Hoopis iseloomulikumad on ilmselt __põllumajandusele, maaelanikele, regionaalarengule ja ühiskondlikule leppele__ viitavad sõnad.

Lennart Merile iseloomulike sõnade nimekirja tipus on __CSCE__ (hilisem OSCE), organisatsioon, mida president väga oluliseks pidas. Lisaks annavad tooni ajastule vastavad sõnad nagu vägede __väljaviimine__, riigi __reforimid__, __Paldiskiga__ seotud teemad ja viited __Venemaale__.

![]({{ site.url }}/img/presidentide-koned-kokku_kone_tf_idf-1.png)![]({{ site.url }}/img/presidentide-koned-kokku_kone_tf_idf-2.png)

Kui vaadata aastate lõikes kõigist kõnedest iseloomulikumaid sõnasid, siis joonistuvad välja nii aktuaalsed teemad vastavas ajahetkes: 2016 ja pagulased, 2014 ja Ukraina, 2013 ja rahvakogu ning varasemast näiteks 1995 ja Tšetšeenia sõda.

![]({{ site.url }}/img/presidentide-koned-kokku_koned_aastate_loikes-1.png)

### Positiivne ja negatiivne emotsioon kõnedes

Lõpetuseks vaatan, milline on president Ilvese 24. veebruari kõnede emotsioon (pos vs neg) aastate lõikes. Selleks leian kõnede kõik emotsionaalselt laetud sõnad ning vaatan lausete kaupa, kas ülekaalus on positiivsed või negatiivsed sõnad. Kõige positiivsematena paistavad välja MASU-le eelnenud 2008. aasta kõne ning 2013. aasta kõned. Kõige negatiivsema fooniga tundub olema MASU-le järgnenud 2009. aaasta kõne.

![]({{ site.url }}/img/presidentide-koned-emotsioon_konedes-1.png)


### Kuidas?
Antud analüüs põhineb paljuski R tekstianalüüsi võimalusi tutvustaval e-raamatul [Tidy Text Mining with R](http://tidytextmining.com/). Andmetöötluse käigus eemaldasin sõnade hulagast nn. stoppsõnad (väga kõrge esinemissagedusega sõnad, samuti ase-, kaas-, määr- ja sidesõnad ning paljud muud semantilist informatsiooni mittekandvad sõnad). Stoppsõnade nimekirja sain Raido Kodasmaa bakalaureusetööst [Infootsingus kasutatavad loomuliku keele töötluse tehnikad](http://dspace.ut.ee/handle/10062/32779?locale-attribute=en). Teksti emotsiooni tuvastamiseks kasutasin Eesti Keele Instituudi projekti "Kõne ja teksti emotsionaalsuse statistilised mudelid" raames koostatud valentsi sõnastikku [https://github.com/EKT1/valence](https://github.com/EKT1/valence).
Kogu R skript koos [president.ee](http://president.ee) lehelt kraabitud presidentide kõnede korpusega asub Githubis [https://github.com/toomase/presidendi_koned](https://github.com/toomase/presidendi_koned).
