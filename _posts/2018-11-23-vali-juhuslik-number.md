---
title: "Vali juhuslik number"
author: "Toomas Eilat"
date: "2018-11-23"
layout: post
---








Käisin 21. novembril [Tallinna Õismäe Gümnaasiumi](http://oismae.tln.edu.ee/) reaal- ja loodusainete nädalal rääkimas 9.-12. klassi õpilastele andmeanalüüsist. Ettekande käigus tegin väikese eksperimendi, mille eesmärk oli vaadata, kui hästi oskavad kuulajad juhuslikke numbreid valida. Mõte selleks tekkis twitteri postitusest [Asking 100 people for a random number from 1 to 10](https://twitter.com/MathiasLeroy_/status/986253218433896449).

Selleks, et andmeid koguda, ehitasin ühe lihtsa shiny äpi, milles iga kuulaja sai telefonis valida juhuslikke numbreid vahemikust 1-10.
![](http://toomase.github.io/img/vali-juhuslik-number_shiny.png){width=300px}

Kokku valis numbreid 130 õpilast. Aktiivsemad nendest valisid 20-30 numbrit ning passiivsemad 2-3. Eksperimendi tulemustest selgus, et juhuslikke numbreid ei suuda inimesed väga hästi valida. Selgelt domineerivad "juhuslikus valimis" numbrid 6, 7 ja 8. Väga vähe on aga valitud numbrit 1, mis mingil põhjusel ei tundunud õpilastele piisavalt juhuslik. Väga sarnased olid tulemused ka inspiratsiooniks olnud twitteri postituses.

![]({{ site.url }}/img/vali-juhuslik-numbernumbrid_kokku-1.png)

Kuna valitud numbrite arv oli vastajate hulgas väga erinev, siis proovisin järgmisel graafikul vähendada kõige aktiivsemate õpilaste mõju lõpptulemustele. Selleks jätsin valikusse alles vastajad, kes olid valinud vähemalt 3 numbrit ning igaühe kohta valisin kuus korda välja kolm juhuslikku numbrit. Üldjoontes on jaotus sarnane esimese pildiga. Peamine erinevus on selles, et ka number 5 liikus populaarsemate juhuslike numbrite hulka.



![]({{ site.url }}/img/vali-juhuslik-numbernumbrite_valik-1.png)

## Kuidas?
Andmete kogumist kirjeldasin juba eelnevalt. Kogu skript (koos shiny äpiga) on leitav Githubist: [https://github.com/toomase/random_number](https://github.com/toomase/random_number).
