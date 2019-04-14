---
title: "XIII Riigikogu liikmete aktiivsus"
author: "Toomas Eilat"
date: "2019-04-14"
layout: post
---









Riigikogu XIII koosseis pidas veebruari lõpus oma viimase istungi. Seetõttu tekkis mõte analüüsida Riigikogu liikmeti aktiivsust. Inspiratsiooniallikaks oli blogipostitus [How I built a scraper to measure activity of MPs](http://www.maartenlambrechts.com/2016/10/03/how-i-built-a-scraper-to-measure-activity-of-mps.html?utm_content=bufferc8a3e&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer), kus Maarten Lambrechts analüüsib Belgia parlamendisaadikute aktiivsust.

Selleks, et Riigikogu liikmete aktiivsust hinnata, kraapisin [Riigikogu kodulehelt](http://riigikogu.ee) XIII koosseisu kohta iga saadiku sõnavõttude, kirjalike küsimuste, arupärimiste ja kirjutatud artiklite andmed. Seejärel liitsin kokku kirjalike tegevuste andmed ja võrdlesin neid suuliste sõnavõttude arvuga Riigikogu suures saalis. 

Mõned nüansid, millega tuleb analüüsi puhul arvestada:
  * Välistatud on Riigikogu juhatuse liikmed kuna neil on ebaproportsionaalselt palju sõnavõtte, mille sisu on midagi stiilis "Martin Helme, palun!". Ehk siis sõnavõtud, millega antakse lihtsalt saadikutele sõna.
  * Arvesse on võetud Riigikogu koosseis seisuga märts 2019. Kui mõni saadik on Riigikogus olnud vähem kui 4 aastat (näit Reformierakonna varasemad ministrid), siis neil ongi lihtsalt lühem aeg olnud sõnavõttude / kirjutiste kogumiseks.

Allolevalt graafikult on näha, et sellise loogika järgi aktiivsust hinnates, on teistest nii sõnavõttudes kui kirjutiste arvus üle Andres Herkel Vabaerakonnast. Läbinisti (mediaan)keskmist saadikut esindab Mart Nutt Isamaast. EKRE tuumik, eesotsas Helmede, Madisoni ja Põlluaasaga paistavad samuti silma suure aktiivsusega.

![]({{ site.url }}/img/riigikogu-liikmete-aktiivsusaktiivsus_kokku-1.png)

Kui võrrelda omavahel erinevaid fraktsioone, siis teistest eristuvad Isamaa ja Sotside saadikud ühtlase keskmisest madalama aktiivsusega. Tõenäoliselt on see osaliselt seotud faktiga, et mõlemad erakonnad olid terve 4-aastase perioodi koalitsioonis. See omakorda võiks tähendada väiksemat motivatsiooni sõnavaõttudega esineda ja kirjalikke küsimusi ja arupärimisi esitada. Omapärane on Vabaerakonda iseloomustav graafik, kus hästi aktiivsete saadikute kõrval on 2 väga passiivset.

![]({{ site.url }}/img/riigikogu-liikmete-aktiivsusaktiivsus_fraktsiooniti-1.png)

## Kuidas?
Nagu öeldud, siis andmed on kraabitud [Riigikogu kodulehelt](http://riigikogu.ee). Lisaks kasutasin saadikute poolt kirjutatud artiklite loetelu pärimiseks [Google Cache](https://support.google.com/websearch/answer/1687222?hl=en) andmeid. Põhjus on selles, et andmete kraapimise hetkeks olid osad eelmise koosseisu andmed juba Riigikogu kodulehelt eemaldatud.
Kogu skript on leitav Githubist: [https://github.com/toomase/riigikogu _aktiivsus](https://github.com/toomase/riigikogu_aktiivsus).
