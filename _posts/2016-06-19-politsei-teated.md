---
title: "Politseile laekunud väljakutsed 24H jooksul"
author: "Toomas Eilat"
date: "2016-06-19"
layout: post
---







Ühel talvisel reedel vastu laupäeva (04.03.2016 - 05.03.2016) viis Politsei läbi aktsiooni, mille käigus postitati 24 tunni jooksul Facebooki infot numbrile 112 tulnud väljakutsete kohta. Kokku laekus selle aja jooksul __668__ teadet, mis annavad päris hea ülevaate sellest, kuidas paistab elu Eestimaal läbi politsei silmade.

Proovin läbi erinevate graafiku tüüpide teadetes olevat infot pisut visualiseerida. Alustuseks üks animatsioon, mis kujutab tundide lõikes teadete arvu. Tumedamat tooni postid kujutavad öötunde ning heledamad päevast aega. Maksimaalselt laekus teateid ühe tunni jooksul õhtul kella 19 ajal (__43__). Huvitava kokkusattumusena saabus kõige vähem teateid aga hommikul kell 7 (__11__).

![Kõned kokku päeva jooksul](http://toomase.github.io/img/politei-teated-koned.gif)


<img src="{{ site.url }}/img/politsei-teated-liikluse_teated-1.png" style="display: block; margin: auto;" />


Interaktiivne graafik

<iframe frameborder="0" width="800" height="500" 
        sandbox="allow-same-origin allow-scripts"
        scrolling="no" seamless="seamless"
        src="/files/politsei-teated.html">
</iframe>

## Kuidas?
Nagu ikka, tegin andmetöötluse ja visualiseerimise R-s. Lähtekoodiga võib tutvuda siin: [https://github.com/toomase/temperatuur](https://github.com/toomase/temperatuur). Inspiratsiooni sain blogipostitusest: [How to: Weather Radials](http://jkunst.com/r/how-to-weather-radials/).
