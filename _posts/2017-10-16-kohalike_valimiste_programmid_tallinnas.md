---
title: "Erakondade 2017.a kohalike valimiste programmid Tallinnas"
author: "Toomas Eilat"
date: "2017-10-16"
layout: post
---







Leidsin ühe huvitava R paketi [ggpage](https://github.com/EmilHvitfeldt/ggpage), mis võimaldab korraga visualiseerida pikemaid tekste. Kuna parasjagu on käimas kohalikud valimised, siis otsustasin katsetada seda visualiseerimise viisi erakondade Tallinna valimisprogrammide tekstidel. Alustuseks laadisin alla kõigi Tallinnas kandideerinud erakondade programmid.

Allolevatel visuaalidel on iga erakonna kogu valimisprogramm Tallinnas. <span style="color:red">Punase</span> värviga on tähistatud negatiivse tooniga sõnad ja <span style="color:blue">sinisega</span> positiivsed.




![]({{ site.url }}/img/kohalike-valimiste-programmid-tallinnas-programmi_visuaal-1.png)![]({{ site.url }}/img/kohalike-valimiste-programmid-tallinnas-programmi_visuaal-2.png)![]({{ site.url }}/img/kohalike-valimiste-programmid-tallinnas-programmi_visuaal-3.png)![]({{ site.url }}/img/kohalike-valimiste-programmid-tallinnas-programmi_visuaal-4.png)![]({{ site.url }}/img/kohalike-valimiste-programmid-tallinnas-programmi_visuaal-5.png)![]({{ site.url }}/img/kohalike-valimiste-programmid-tallinnas-programmi_visuaal-6.png)

Lisaks võrdlen omavahel erakondade programme ja tuvastan igale erakonnale kõige iseloomulikumad sõnad. Selleks kasutan mõõdikut *tf-idf* (term frequency–inverse document frequency). Sisuliselt aitab see tuvastada sõnu, mis on kõigi erakondade programmides kokku suhteliselt haruldased, aga konkreetse erakonna puhul sagedasemad. Sama meetodit kasutasin ka näites ühes varasemas postituses [Eesti presidentide kõned](http://eilat.ee/2016-11-19-presidentide-koned/).

![]({{ site.url }}/img/kohalike-valimiste-programmid-tallinnas-erakondade_iseloomulikud_sonad-1.png)


### Kuidas?

Andmete kraapimise, analüüsi ja visualiseerimise skriptiga saab tutvuda [githubis](https://github.com/toomase/erakondade_programm_tallinnas).
