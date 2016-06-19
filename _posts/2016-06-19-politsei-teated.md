---
title: "Politseile laekunud teated 24H jooksul"
author: "Toomas Eilat"
date: "2016-06-19"
layout: post
---






```
## Source: local data frame [24 x 2]
## 
##     tund     n
##    <dbl> <dbl>
## 1      7    11
## 2      9    11
## 3      5    13
## 4      6    15
## 5     10    15
## 6     11    16
## 7      4    18
## 8     13    20
## 9      8    21
## 10    14    22
## ..   ...   ...
```

Ühel talvisel reedel vastu laupäeva (04.03.2016 - 05.03.2016) viis Politsei läbi aktsiooni, mille käigus postitati 24 tunni jooksul Facebooki infot numbrile 112 tulnud väljakutsete kohta. Kokku laekus selle aja jooksul __668__ teadet, mis annavad päris hea ülevaate sellest, kuidas paistab elu Eestimaal välja läbi politsei silmade.

Proovin läbi erinevate graafiku tüüpide teadetes olevat infot pisut visualiseerida. Alustuseks üks animatsioon, mis kujutab tundide lõikes teadete arvu. Tumedamat tooni postid kujutavad öötunde ning heledamad päevast aega. Maksimaalselt laekus teateid ühe tunni jooksul õhtul kella 19 ajal, __43__. Huvitava kokkusattumusena saabus kõige vähem teateid aga hommikul kell 7, __11__.

<img src="{{ site.url }}/img/politsei-teated-teated_kokku-1.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-2.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-3.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-4.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-5.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-6.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-7.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-8.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-9.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-10.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-11.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-12.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-13.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-14.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-15.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-16.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-17.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-18.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-19.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-20.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-21.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-22.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-23.png" style="display: block; margin: auto;" /><img src="{{ site.url }}/img/politsei-teated-teated_kokku-24.png" style="display: block; margin: auto;" />



<iframe frameborder="0" width="800" height="600" 
        sandbox="allow-same-origin allow-scripts"
        scrolling="no" seamless="seamless"
        src="/files/politsei-teated.html">
</iframe>

## Kuidas?
Nagu ikka, tegin andmetöötluse ja visualiseerimise R-s. Lähtekoodiga võib tutvuda siin: [https://github.com/toomase/temperatuur](https://github.com/toomase/temperatuur). Inspiratsiooni sain blogipostitusest: [How to: Weather Radials](http://jkunst.com/r/how-to-weather-radials/).
