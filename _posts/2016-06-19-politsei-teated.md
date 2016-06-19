---
title: "Politseile laekunud väljakutsed 24H jooksul"
author: "Toomas Eilat"
date: "2016-06-19"
layout: post
---







Ühel talvisel reedel vastu laupäeva (04.03.2016 - 05.03.2016) viis Politsei läbi aktsiooni, mille käigus postitati 24 tunni jooksul Facebooki infot numbrile 112 tulnud väljakutsete kohta. Kokku laekus selle aja jooksul __668__ teadet, mis annavad päris hea ülevaate sellest, kuidas paistab elu Eestimaal läbi politsei silmade.

Proovin läbi erinevate graafiku tüüpide teadetes olevat infot pisut visualiseerida. Alustuseks üks animatsioon, mis kujutab tundide lõikes teadete arvu. Tumedamat tooni postid kujutavad öötunde ning heledamad päevast aega. Maksimaalselt laekus teateid ühe tunni jooksul õhtul kella 19 ajal (__43__ teadet). Huvitava kokkusattumusena saabus kõige vähem teateid aga hommikul kell 7 (__11__ teadet).

![Kõned kokku päeva jooksul](http://toomase.github.io/img/politsei-teated-koned.gif)

Kui vaadata detailsemalt liiklusega seotud väljakutseid, siis oodatult on palju kõnesid tipptunnil pärast tööd, kell 18.00 - 20.00. Samas üllatavalt vähe on teateid hommmikusel tipptunnnil ning suurema arvu väljakutsetega paistab pigem silma lõuna aeg.

<img src="{{ site.url }}/img/politsei-teated-liikluse_teated-1.png" style="display: block; margin: auto;" />

Kõige rohkem laekus numbrile 112 joobes inimestega seotud teated, 24H jooksul __211 __ teadet. Suuruselt järgmise valdkonna, liiklusega, oli pea poole vähem kõnesid. Reede õhtule kohaselt saavutab teadete arv oma kõrgpunkti kella 20.00-st ja hakkab vähenema alles öösel 03.00 ajal.

<img src="{{ site.url }}/img/politsei-teated-joobes_inimene_teated-1.png" style="display: block; margin: auto;" />

Alloleval interaktiivsel graafikul on näidatud olisemate teemade väljakutsete arv tundide lõikes. Iga punkt tähistab ühte teadet ning mida suurem see punkt on, seda rohkem tähelepanu vastav teade Facebooksi pälvis (Like´de arv). Graafiku kohal hiirega liikudes kuvatakse teadete sisu.

<iframe frameborder="0" width="800" height="500" 
        sandbox="allow-same-origin allow-scripts"
        scrolling="no" seamless="seamless"
        src="/files/politsei-teated.html">
</iframe>

## Kuidas?
Andmed on kogutud PPA Facebooki seinalt (APi abil). Andmetöötlus ja graafikud on tehtud R-s. Detailsem skript on üleval Githubis: [https://github.com/toomase/politsei_koned](https://github.com/toomase/politsei_koned).
