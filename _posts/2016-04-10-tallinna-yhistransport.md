---
title: "Tallinna ühistransport ühes päevas"
author: "Toomas Eilat"
date: "2016-04-10"
layout: post
---







Koostasin kaardi, mis kujutab ühte päeva Tallinna ühistranspordis. Arvesse võtsin kõikide busside, trollida ja trammide sõidud teisipäeval, 22. märtsil 2016. Kokku läbiti sellel päeval ca __98 000 km__ Tallinna tänavaid. Iga tehtud sõit jätab endast kaardile maha peenikese kollase joone. Mida rohkem sõite ühel tänaval tehakse, seda rohkem kollaseid jooni sinna koguneb. 

<img src="{{ site.url }}/img/tallinna-yhistransport-soidud-1.png" title="" alt="" style="display: block; margin: auto;" />

## Kuidas?
Alusandmetena kasutasin ühistranspordi gps andmeid aadressilt: [http://soiduplaan.tallinn.ee/gps.txt](http://soiduplaan.tallinn.ee/gps.txt). Kuna see fail sisaldab ainult hetkeseisu kõigi busside, trollide ja tarmmide asukohaga, siis salvestasin andmestiku päeva jooksul 15 sekundiste vahedega maha. Analüüsiks ja visualiseerimiseks kasutasin R programmeerimiskeelt. Koodiga võib tutvuta siin: [https://github.com/toomase/yhistransport](https://github.com/toomase/yhistransport). Inspiratsiooni sain blogipostitusest [Where People Run in Major Cities](http://flowingdata.com/2014/02/05/where-people-run/).
