---
title: "Minu elu termomeetris"
author: "Toomas Eilat"
date: "2016-07-26"
layout: post
---







Nägin blogipostituses [The Weather of My Life](http://livingwithdata.com/life_weather.html) ühte graafikut, mis kujutab autori elu läbi temperatuuri prisma. Kuna tulemus tundus väga lahe, siis Otsustasin samsuguse pildi ka oma elust teha.

Alloleval graafikul tähistab iga punkt ühte päeva. Kokku on graafikule kantud perioodist 29.07.1984 - 31.12.2015 __'r temp %>% ungroup() %>% tally() %>% .$n'__ päeva. Välistatud on liigaastate 29. veebruarid.

<img src="{{ site.url }}/img/minu-elu-termomeetris-minu_elu_termomeetris-1.png" style="display: block; margin: auto;" />

## Kuidas?
Idee selleks analüüsiks andis blogipostitus [50 Years of Pop Music](http://kaylinwalker.com/50-years-of-pop-music/). Andmed aastahiti tulemuste kohta on kogutud R2 veebilehelt [http://r2.err.ee/aastahitt/ajalugureg.php](http://r2.err.ee/aastahitt/ajalugureg.php) ning laulusõnad pärinevad andmebaasist [http://sasslantis.ee/](http://sasslantis.ee/). Lisaks oma tavapärasele töövahendile R, kasutasin seekord tekstianalüüsiks esmakordselt ka Pythonit ja [Estnltk library't](http://estnltk.github.io/estnltk/1.4/index.html). 
Analüüsi skript asub Githubis: [https://github.com/toomase/eesti_muusika](https://github.com/toomase/eesti_muusika).
