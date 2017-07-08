---
title: "Reis läbi Eesti linnade"
author: "Toomas Eilat"
date: "2016-05-11"
layout: post
---





Kaardil on optimaalne teekond läbi kõigi Eesti linnade (47). Kokku tuleb autoga kõigi linnade külastamiseks minimaalselt läbida __1762 km__. Järjest sõites kuluks selleks __34 h__. Interaktiivse kaardi nägemiseks kliki alloleval pildil või sellel <a href="http://toomase.github.io/files/reis_labi_eesti_linnade.html" target="_blank">lingil</a>.

<a href="http://toomase.github.io/files/reis_labi_eesti_linnade.html" target="_blank"><img border="0" alt="Reis-labi-linnade" src="http://toomase.github.io/img/reis-labi-eesti-linnade-teekond.png"></a>


## Kuidas?
Optimaalse teekonna leidmine kõigi linnade külastamiseks on arvutuslikult keeruline. Põhjus on selles, et võimalikke kombinatsioone on väga palju. Tegemist on probleemiga, mida tuntakse nime all [Travelling salesman problem](https://en.wikipedia.org/wiki/Travelling_salesman_problem). Selle lahendamiseks kasutasin spetsiaalseid algoritme, mille abil leidsin optimaalse linnulennulise järjekorra, kuidas linnasid läbida. Sellest omakorda arvutasin google maps API abil teekonnad mööda maanteid. Täpsemalt võib R lähtekoodiga tutvuda siin: [https://github.com/toomase/reis_ymber_eesti](https://github.com/toomase/reis_ymber_eesti). Idee sain blogipostitusest [Computing the optimal road trip across Europe](http://www.randalolson.com/2015/03/10/computing-the-optimal-road-trip-across-europe/).
