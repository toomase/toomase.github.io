---
title: "Riigikogu 13. koosseisu stenogrammid"
author: "Toomas Eilat"
date: "2016-12-20"
layout: post
---











Kuna tekstianalüüs ja -visualiseerimine tundub huvitav, siis jätkan seda Riigikogu 13. koosseisu stenogrammidega. Need võiksid anda päris hea ülevaate Riigikogu liikmete keelekasutusest, lemmik teemadest, meelsusest jms.

Kõik stenogrammid pärinevad [Riigikogu kodulehelt](https://www.riigikogu.ee/). Enamus kasutatud andmeanalüüsi meetoditest ja töövõtetest on inspireeritud blogist [data science ish](http://juliasilge.com/blog/).


### Emotsioon

Alustuseks vaatan, milline on Riigikogu liikmete sõnavõttude emotsioon (positiivne vs negatiivne). All oleval graafikul on top 10 Riigikogulast, kelle sõnavõttudes domineerivad positiivsed sõnad ning top 10, kelle sõnavõttudes domineerivad negatiivsed sõnad. Selle hindamiseks on võrreldud positiivsete sõnade osakaalu kõigist emotsionaalselt laetud sõnadest (st pos + neg sõnad kokku). Kui kõige positiivsemal sõnavõtjal, __Heidy Purgal__ on positiivsete sõnade osakaal __86%__, siis kõige negatiivsemal, __Eerik-Niiles Krossil 42%__.

![]({{ site.url }}/img/riigikogu-stenogrammid-sonavottude_emotsioon_graafikul-1.png)



Lisan ühe näite sõnavõtu kohta, kus domineerivad positiivsed sõnad:

* __Urmas Reinsalu__ 30.03.2015: "*Palju õnne Eiki Nestorile! Me leidsime Isamaa ja Res Publica Liidus samuti, et Riigikogu juhatus peab olema tugev ja otsustuskindel, ning me esitame väga hea kandidaadi Riigikogu juhatusse. Ma sean üles Helir-Valdor Seederi kandidatuuri. Kes meist teda ei teaks! Palun hääletada ja toetada! Aitäh!*""  

ja teise näite, kus domineerivad negatiivsed sõnad:

* __Märt Sults__ 14.11.2016: "*Aitäh, härra spiiker! Hea minister! Mu küsimus on sutsu küüniline, aga see on selline. Kust kohast läheb haigekassa punane joon ja kust kohast hakkavad pihta nõndanimetatud ravimatud haigused, mida haigekassa ei finantseeri, kui lihtne haigus muutub varsti rahapuuduse tõttu ravimatuks haiguseks?*"












### Keelekasutus

Järgnevalt analüüsin Riigikogulaste keelekasutust selles võtmes, et kui keeruliselt või lihtsalt keegi ennast väljendab. Analüüsi aluseks võtan Riigikogu liikmete sõnavõttude [SMOG hinde](https://en.wikipedia.org/wiki/SMOG) (*Simple Measure of Gobbledygook*). SMOG iseloomustab teksti loetavust ja seda võib tõlgendada nii: mitu klassi peab inimene olema koolis läbinud, et tekstist aru saada. Arvutuste aluseks on lausete pikkused ja palju-silbiliste sõnade hulk. Kuna see hinne on mõeldud ennekõike ingliskeelsete tekstide analüüsiks, siis ma ei tea kui hästi see eesti keelele kohandub. Samas midagi võiks see iseloomustada küll.

Kuna Riigikogu liikmete sõnavõtud sisaldavad väga palju viiteid keerulistele õigusaktide nimedele ja muule juriidilisele tekstile, siis on need paratamatult üsna raskesti loetavad. Kui selle näitaja põhjal välja võtta kõige keerulisemalt ja kõige lihtsamalt ennast väljendav Riigikogu lige, siis need on vastavalt __Marko Mihkelson ja Valeri Korb__. Marko Mihkelsoni tekstist täielikult arusaamiseks oleks tinglikult vaja __18,5__ klassi haridust ja Valeri Korbi sõnavõttude mõistmiseks __13,4__ klassi haridust.

![]({{ site.url }}/img/riigikogu-stenogrammid-sonavotud_smog_graafikul-1.png)



Kui hinnata sõnavõttude lõikes nende loetavust, siis paar näidet lihtsalt mõistetavatest tekstidest on siin:

* __Henn Põlluaas__ 14.09.2015: *"Palun mikrofoni, jah! Hallo-hallo! Kas kostab? Kas ei kuule? Hallo!"* (SMOG = 5,7)

* __Martin Helme__ 26.10.2016: *"Aitäh! Meile lubati kolme ministrit, me näeme ainult kahte. Mis nüüd saab?"* (SMOG = 7,8)

Mõned näited keerulistest sõnavõttudest on järgmised:

* __Peeter Ernits__ 11.02.2016: *"Küsimus on see: kas kahekordne peaminister Tiit Vähi ei mõista rahvusvahelisi suhteid ja räägib riigivaenulikku juttu, nimetades Eestit tupikriigiks ning väites, et meil valitseb sõjahüsteeria ja selle tõttu takistab valitsus investeeringuid Ida-Virumaale?"* (SMOG = 24,5)

* __Viktor Vassiljev__ 19.01.2016: *"See on muidugi väga kurb, aga ma palun eelnõu toetada, sest seda ootavad tõesti väga paljud inimesed, kes tahaksid teile, lugupeetud koalitsioonisaadikud, ja ka meile, opositsioonisaadikutele, valimispäeval säravalt naeratada, demonstreerides oma loomulikke hambaid."* (SMOG = 24,5)



### Populaarsus ja eripära

Selleks, et tuvastada igale Riigikogu liikmele kõige iseloomulikumad sõnad kasutan mõõdikut *tf-idf* (term frequency–inverse document frequency). Sisuliselt aitab see tuvastada sõnu, mis on kõigi Riigikogulaste sõnavõttudes kokku suhteliselt haruldased, aga konkreetse inimese puhul sagedasemad. Sama meetodit kasutasin ka oma eelmises postituses [Eesti presidentide kõned](http://eilat.ee/2016-11-19-presidentide-koned/).

Selleks, et lõpptulemus hoomatav oleks, esitan iseloomulikud sõnad ainult top 10 *populaarse* Riigikogu liikme kohta. Populaarsuse hindamiseks kasutasin iga Riigikogulase Eesti Wikipedia lehe vaatamiste arvu. Tähelepanuväärne on, et __Martin Repinski__, kes vaatamiste arvu poolest on kõige populaarsem, tegi oma särava tulemuse ainult 4 päevaga. Kui enne valitsuse vahetust, novembri keskpaigas, oli huvi tema vastu leige (paar Wiki lehe vaatamist päevas), siis alates 19.11.2016 olid temast huvitatud kümned tuhanded inimesed päevas. Kuna see Wikipedia lehtede vaatamiste info on ka eradiseisvalt väga huvitav, siis ilmselt mõnes järgnevas postituses käsitlen seda põhjalikumalt. 

Mis puudutab iseloomulikke sõnu, siis päris mitme Riigikogu liikme puhul lähevad need üksikud sõnad üsna hästi kokku nende üldise kuvandiga. Erand on ilmselt __Priit Toobal__, kes iseloomulike sõnade järgi oleks justkui väga pühendunud usklik. Tegelikult on tegemist sõnavõttudega Keskerakonna korraldatud ööistungitelt 10.06.2015 ja teemaks riigipühade nimekirja täiendamine.

![]({{ site.url }}/img/riigikogu-stenogrammid-iseloomulikud_sonad_graafik-1.png)


### Kuidas?
Tehniliselt sarnaneb antud postitus paljuski minu eelmise postitusega [Eesti presidentide kõned](http://eilat.ee/2016-11-19-presidentide-koned/). Seetõttu ei hakka ma detaile siin kordama. Skript andmete laadimise ja analüüsi endaga on leitav Githubist: [https://github.com/toomase/riigikogu_stenogrammid](https://github.com/toomase/riigikogu_stenogrammid)
