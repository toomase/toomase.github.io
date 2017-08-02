---
title: "Eestlaste liikumisharjumused"
author: "Toomas Eilat"
date: "2017-08-02"
layout: post
---










Olen pikalt tahtnud analüüsida eestlaste sporditegemise- ja liikumisharjumusi. Väga sobiva andmestiku selleks pakub populaarne spordi äpp [Endomondo](https://www.endomondo.com/). Kuigi otseselt Endomondo andmeid läbi API ei jaga, on paljude kasutajate trenni andmed avalikud ja seetõttu ka veebist kraabitavad. Täpsemalt kirjeldan andmete kogumise protsessi postituse lõpus. 
Lisaks huvile spordi ja sporditegemisega seotud andmete vastu oli analüüsi ajendiks ka twitteris viimastel nädalatel trendinud uus graafiku tüüp [joyplot](https://twitter.com/hnrklndbrg/status/883675698300420098). 

Kokku kasutasin analüüsis Endomondos logitud 4735 eestlase 75805 trenni andmeid peamiselt 2017. aastast. Alloleval graafikul on detailsem pilt top 30 spordiala lõikes. Selgelt kõige populaarsemad on käimine, jooksmine ja rattasõit.

![]({{ site.url }}/img/harrastussport-top_spordialad-1.png)

### Millal trenni tehakse?

Võrdlesin 15 populaarsema spordiala lõikes, mis kellaajal trenni peamiselt tehakse. Esmalt vaatan ajalist jaotust nädalavahetusel. Tööpäevi ja nädalavahetusi on mõistlik eraldi vaadata kuna tööpäevade trennid on tõenäoliselt tugevalt mõjutatud tööajast. Pildilt eristuvad selgelt mõned spordialad:
  * aeroobikal, ringtreeningul ja tantsimisel on päevas kaks tippu, kella 12 ja 7 ajal
  * jooksmine, käimine ja jalgrattasõit on kella 12-8 üsna ühtlaselt jaotunud
  * maastikuratta sõit, golf, suusatamine ja matkamine on ühe tipuga kella 3 ajal

![]({{ site.url }}/img/harrastussport-nadalavehtus_kell-1.png)

Tööpäevadel langeb suure enamuse spordialade harrastamise tippaeg kella 7-8 juurde. Üldisest mustrist erinevad kogu päev populaarne käimine, matkamine ja suusatamine. Samuti hakkab silma väga terava tipuga kella 6-7 vahel orienteerumine (päevakute algusaeg?). Pisut üllatav on hiline golfimängimine, aga see on ilmselt seletatav pikema sõiduajaga Tallinnast.

![]({{ site.url }}/img/harrastussport-toopaev_kell-1.png)


Lisaks kellaajale vaatasin ka nädalapäevade lõikes erinevate spordialade harrastamist. Kõige rohkem tehakse sporti kolmapäeval ja pühapäeval ning kõige vähem reedel.

![]({{ site.url }}/img/harrastussport-trenni_paev-1.png)

Spordialad jagunevad laias laastus kolmeks selle järgi, mis päevadel neid harrastatakse: rohkem tööpäevadel (trennid siseruumides), rohkem nädalavahetusel (trennid õues) ja võrdselt läbi nädala.

![]({{ site.url }}/img/harrastussport-trenni_paev_spordiala-1.png)


### Inimese vanus ja spordiala

Alloleval graafikul on inimeste vanuseline jaotus spordialade lõikes. Väga sarnane on vanuseline jaotus kolmel kõige populaarsemal spordialal (käimine, jooksmine, rattasõit). Teistest spordialadest eristuvad suusatamine väga ühtlase jaotusega läbi vanusegruppide ja näiteks golf kahe küüruga (populaarsem 25 ja 37 aastaste hulgas).

![]({{ site.url }}/img/harrastussport-trenn_vanus-1.png)

Lisaks tegelikele trenni andmetele uhurisin ka kasutajate nimetatud lemmik spordiala lõikes vanuselist jaotust. Sellel pildil on huvitavad kolme rattasõidu ala erinevused: jalgratast meeldib transpordiks kasutada pisut noorematel (30 aastased), maastikurattaga meeldib sõita pisut vanematel (40 aastased), aga rattaga meeldib üldiselt sporti teha nii 30 kui 40 aastastel.

![]({{ site.url }}/img/harrastussport-lemmik_spordiala_vanus-1.png)


### Kuidas?
Selle analüüsi raskus seisnes paljuski andmete saamises. Nagu ma postituse alguses kirjutasin, Endomondo ei paku otseselt oma andmeid läbi API avalikult kasutamiseks. Seetõttu tuli andmestik kraapida läbi Endomondo veebilehe avalike profiilide. Selleks, et saada kätte just eestlaste profiilid, otsisin käsitsi välja hulga Eesti _challangeid_ (a-la "Eesti jookseb 2017"). Sealt edasi kraapisin _challangitel_ osalenud avalikelt profiilidelt viimase 20 trenni andmed. Täpsema andmete kraapimise, -töötlemise ja visualiseerimise R koodiga saab tutvuda githubis: [https://github.com/toomase/harrastussport](https://github.com/toomase/harrastussport).
