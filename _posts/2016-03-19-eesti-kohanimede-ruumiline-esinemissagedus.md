---
title: "Eesti kohanimede ruumiline esinemissagedus"
author: "Toomas Eilat"
date: "2016-03-19"
layout: post
---







## Mis?
Inspireerituna Moritz Stefaner'i [blogipostitusest](http://truth-and-beauty.net/experiments/ach-ingen-zell/) tegin Eesti [kohanimeregistri](http://xgis.maaamet.ee/knravalik/) baasil väikese analüüsi kohanimedes sisalduvate sõnade ruumilisest esinemissagedusest. Kohanimeregisteris on üle 155 000 kande: linnad, tänavad, järved, mäed, poolsaared, bussipeatused, talud jne. Sellest andmebaasist otsisin kohanimesid, mis sisaldavad mingit sõna, näiteks _-nõmme-_ ja kuvasin kõik vastavad asukohad kaardile. 
Tumesinine toon näitab suurt esinemissagedust, heleroheline väikest ning kollane seda, et piirkonnas vastavat sõna sisaldavaid kohanimesid pole.

<img src="{{ site.url }}/img/eesti-kohanimede-ruumiline-esinemissagedus-nomme-1.png" title="" alt="" style="display: block; margin: auto;" />

See analüüs ei ole teaduslik ja ülimalt täpne lähenemine kohanimedele vaid pigem on eesmärk leida lihtsalt huvitavaid mustreid ja avastada Eestit uue nurga alt.


## Vastandid
Vaatasin kuidas jagunevad erinevad vastandid kohanimedes. Mitmed neist on väga levinud. Näiteks _-suur-_ esineb 1248-s ja _-väike-_ 1763-s kohanimes. Kui näiteks sõna _-suur-_ on üle Eesti jagunenud üsna ühtlaselt, siis sõna _-väike-_ on rohkem levinud Kagu- ja Põhja-Eestis.
<img src="{{ site.url }}/img/eesti-kohanimede-ruumiline-esinemissagedus-vastandid-1.png" title="" alt="" style="display: block; margin: auto;" />


## Mõisad, kirikud, lossid ja talud
Huvitav on näha, et _-mõis-_ on kohanimedes laiemalt levinud kui _-talu-_. Eriti paistab mõisade suurem konsentratsioon silma Lõuna-Eestis.
<img src="{{ site.url }}/img/eesti-kohanimede-ruumiline-esinemissagedus-mois_talu_kirik_loss-1.png" title="" alt="" style="display: block; margin: auto;" />

## Loodus
Lauget Eestimaad katab üle 8000 _-mäe-_ ja 1000 _-oru-_. Kui mäed asuvad kõikeal Eestis, siis orud on koondunud rohkem Lõuna-Eestisse.
<img src="{{ site.url }}/img/eesti-kohanimede-ruumiline-esinemissagedus-loodus-1.png" title="" alt="" style="display: block; margin: auto;" />

## Naabrid
Meie naabritest on kohanimedega kõige rohkem tunnustatud rootslasi, 141 korral. Vaeslapse osas on lätlased, kelle riigi nime on saanud 38 kohta. Kui _-vene-_ ja _-läti-_ ei moodusta kohanimedes populaarsemaid piirkondi, siis _-soome-_ on mõnevõrra levinum Lõuna- ja _-rootsi-_ Lõuna- ja Lääne-Eestis.
<img src="{{ site.url }}/img/eesti-kohanimede-ruumiline-esinemissagedus-naabrid-1.png" title="" alt="" style="display: block; margin: auto;" />

## Nimed
Kandsin kaardile ka 8 eesnime, mis tunde järgi tihedamini kohanimedes esinevad. Sellest väikesest valimist osutus kõige populaarsemaks _-jaani-_. Nimede põhjal joonistuvad välja mitmed päris huvitavad mustrid. Näiteks ei ole _-matsi-_ nimelisi kohtasid peaaegu üldse Põhja-Eestis. _-mardi-_ ei ole aga populaarne olnud Lõuna-Eestis.
<img src="{{ site.url }}/img/eesti-kohanimede-ruumiline-esinemissagedus-nimed-1.png" title="" alt="" style="display: block; margin: auto;" />

## Kuidas?
Kogu analüüs on tehtud R programmeerimiskeele abil. Koodiga võib tutvuta siin: [https://github.com/toomase/kohanimed](https://github.com/toomase/kohanimed)
