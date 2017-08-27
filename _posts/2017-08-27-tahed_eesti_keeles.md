---
title: "Tähtede jaotus eestikeelsetes sõnades"
author: "Toomas Eilat"
date: "2017-08-27"
layout: post
---









Otustsasin teha veel ühe postituse, kus esikohal on uus ja huvitav graafikutüüp [joyplot](https://twitter.com/hnrklndbrg/status/883675698300420098). Kasutan seda, et visualiseerida tähtede jaotust eestikeelsetes sõnades. Eesmärgiks on näidata iga tähe kohta, kas see esineb eesti keeles rohkem sõna alguses, keskpaigas või lõpus.

Andmeallikana kasutan eesti keele [ilukirjanduse korpusest](http://www.cl.ut.ee/korpused/segakorpus/eesti_ilukirjandus_1990/) random 1 miljonit sõna. Igas sõnas tuvastan kõigi tähtede suhtelise asukoha ning summeritud tulemusest tulebki kokku joyplot. Inspiratsiooni sain blogipostitusest [Graphing the distribution of English letters towards the beginning, middle or end of words](http://www.prooffreader.com/2014/05/graphing-distribution-of-english.html).

Allolevalt graafikult on näha, et näiteks P-täht esineb eesti keeles enamasti sõna alguses, D-täht pigem sõna lõpus ja kõige populaarsem, A-täht, on jaotunud ühtlasemalt, aga on enam levinud sõnade teises pooles.

![]({{ site.url }}/img/tahed-eesti-keelestahtede_esinemissagedus-1.png)


### Kuidas?

Lühidalt kirjeldasin metoodikat juba postituse alguses, aga täpsemalt saab andmeanalüüsi detailidega tutvuda [githubis](https://github.com/toomase/tahed_eesti_keeles).
