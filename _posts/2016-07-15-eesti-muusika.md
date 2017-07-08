---
title: "Eesti muusika ehk 21 aastat R2 aastahitte"
author: "Toomas Eilat"
date: "2016-07-15"
layout: post
---






Raadio 2 on alates 1994. aastast korraldanud küsitluse populaarsemate Eesti laulude valimiseks. Kõik tulemused, kokku 21 aastat, on kättesaadavad veebilehelt [http://r2.err.ee/aastahitt/ajalugureg.php](http://r2.err.ee/aastahitt/ajalugureg.php). Need annavad hea ülevaate Eesti muusika lähiajaloost. Analüüsin pisut parimaid laule ja populaarsemaid artiste.

Kokku on aastahittide tabelis __880__ lugu, millest omakorda 845 on unikaalset (osad lood on edetabelis mitmel aastal). Selleks, et pisut esitajatest ja lauludest sügavamale vaadata, on vaja ka laulude sõnu. Nende leidmiseks kasutasin veebilehte [http://sasslantis.ee/](http://sasslantis.ee/). Sõnad õnnestus mul kokku juurde lisada __495__ loole (59%).

## Laulusõnad
Selleks, et võtta kokku, millest populaarsemad laulud räägivad, koostasin eestikeelsete laulude sõnade esinemissagedusel põhinevad sõnapilved. Seejuures kasutasin ainult sõnade algvorme. Sõnakorduste vältimiseks (näit mõne loo refräänis), tegin sõnapilved selle järgi, mitmes loos mingi sõna esineb. Esimesel pildil on populaarsemad nimisõnad ja teisel omadussõnad.

<img src="{{ site.url }}/img/eesti-muusika-sonapilv_nimisonad-1.png" style="display: block; margin: auto;" />
<img src="{{ site.url }}/img/eesti-muusika-sonapilv_omadussonad-1.png" style="display: block; margin: auto;" />

Järgmisel graafikul on võrreldud 20 populaarsemat nimi- omadus- ja tegusõnu kahel perioodi 1994-2005 ja 2006-2015.

<img src="{{ site.url }}/img/eesti-muusika-slopegraph-1.png" style="display: block; margin: auto;" />

## Erinevad sõnad lauludes
Keskmiselt on ühes laulus 82 unikaalset sõna. Kõige suurema sõnavaraga paistavad silma hip-hop ja räpi lood. Esimesel kohal on __373__ erineva sõnaga Ä-Rühma Popmuusik ning unikaalsete sõnade poolest viimasel kohal Vaiko Epliku Moonaliisa. 

<img src="{{ site.url }}/img/eesti-muusika-sonade_arv_laulus-1.png" style="display: block; margin: auto;" />

## Artistid 
Läbi R2 aastahiti ajaloo on selgelt kaks kõige populaarsemat artisti __Terminaator__ ja __Smilers__, kellel on vastavalt __43__ ja __41__ lugu edetabelis. Allolev heatmap annab ülevaate 25 populaarsema artisti karjääri kohta. Ka siin eristuvad need kaks kõige populaarsemat artisti, kelle lood on peaaegu katkematult aastahiti edetabelisse jõudnud. Alles viimastel aastatel on Terminaatori populaarsus vähenema hakanud. Teised artistid figureerivad edetaelis kõik oluliselt lühemal perioodil. 

<img src="{{ site.url }}/img/eesti-muusika-top_artistid-1.png" style="display: block; margin: auto;" />

Lisaks lugude arvule edetabelis vaatasin ka artistide poolt saadud häälte arvu kokku läbi ajaloo. Kuigi rohkem lugusid, tähendab ka rohkem hääli, siis mõnevõrra on pilt eelmisest heatmapist erinev. Üksikud ülipopulaarsed lood aitavad mõne artisti selles nimekirjas ettepoole. Ääremärkusena lisan, et kõige populaarsem lugu 4304 häälega on __Tanel Padar & The Sun - Võta Aega__.

<img src="{{ site.url }}/img/eesti-muusika-artistide_haalte_arv-1.png" style="display: block; margin: auto;" />

## Kuidas?
Idee selleks analüüsiks andis blogipostitus [50 Years of Pop Music](http://kaylinwalker.com/50-years-of-pop-music/). Andmed aastahiti tulemuste kohta on kogutud R2 veebilehelt [http://r2.err.ee/aastahitt/ajalugureg.php](http://r2.err.ee/aastahitt/ajalugureg.php) ning laulusõnad pärinevad andmebaasist [http://sasslantis.ee/](http://sasslantis.ee/). Lisaks oma tavapärasele töövahendile R, kasutasin seekord tekstianalüüsiks esmakordselt ka Pythonit ja [Estnltk library't](http://estnltk.github.io/estnltk/1.4/index.html). 
Analüüsi skript asub Githubis: [https://github.com/toomase/eesti_muusika](https://github.com/toomase/eesti_muusika).
