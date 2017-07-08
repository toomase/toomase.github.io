---
title: "Minu elu termomeetris"
author: "Toomas Eilat"
date: "2016-07-26"
layout: post
---







Nägin blogipostituses [The Weather of My Life](http://livingwithdata.com/life_weather.html) ühte graafikut, mis kujutab autori elu läbi temperatuuri prisma. Kuna tulemus tundus väga lahe, siis otsustasin samsuguse pildi ka oma elust teha.

Alloleval graafikul tähistab iga punkt ühe päeva keskmist temperatuuri (ööpäevased miinimumid ja maksimumid erinevad sellest oluliselt). Kokku on graafikule kantud __11469__ päeva perioodist 29.07.1984 - 31.12.2015. Lihtsustuse mõttes vaatasin ainult ühe asukoha, Tallinna, andmeid. Välistatud on liigaastate 29. veebruarid.

<img src="{{ site.url }}/img/minu-elu-termomeetris-minu_elu_termomeetris-1.png" style="display: block; margin: auto;" />

## Kuidas?
Nagu ka eelnevalt mainisin, siis suures osas põhineb see graafik blogipostituses [The Weather of My Life](http://livingwithdata.com/life_weather.html) nähtul. Temperatuuri andmete pärimiseks kasutasin R library't [stationaRy](https://github.com/rich-iannone/stationaRy). Kogu skript andmete laadimise ja graafiku joonistamisega asub Githubis: [https://github.com/toomase/minu_elu_termomeetris](https://github.com/toomase/minu_elu_termomeetris).
