---
title: "Kõik teed viivad Paenastisse"
author: "Toomas Eilat"
date: "2017-07-09"
layout: post
---







Tegin selle postituse inspireerituna erinevatest visuaalidest, mis kujutavad seda kuidas kõik teed viivad Rooma (või mõnda muusse linna), [This Map Shows That All Roads Basically Do Lead to Rome](https://www.citylab.com/design/2015/12/this-map-shows-that-all-roads-basically-do-lead-to-rome/420093/). Otsustasin sarnase pildi teha Eesti geograafilise keskpunkti, __Paenasti__, kohta.

Kaardi joonsitamiseks leidsin kõik Eesti linnad, vallad, alevid, alavikud, linnaosad ja random 1000 küla. Seejärel arvutasin Google maps API abil välja teekonna igast asukohast Paenastisse ja saadud teed kandsin ühele kaardile.

<img src="{{ site.url }}/img/koik-teed-viivad-paenastisse-teed_paenastisse-1.png" style="display: block; margin: auto;" />


## Kuidas?
Alusandmetena kasutasin [Eesti kohanimeregistris](http://xgis.maaamet.ee/knravalik/) sisalduvad andmeid linnade, valdade, külade jne kohta. Andmetöötluseks ja visualiseerimiseks kasutasin R programmeerimiskeelt. Koodiga võib tutvuta siin: [https://github.com/toomase/koik_teed_laulasmaale](https://github.com/toomase/koik_teed_laulasmaale) (esimeses versioonis leidsin teekonna Laulasmaale).
