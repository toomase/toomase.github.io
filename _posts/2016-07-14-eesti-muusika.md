---
title: "Eesti muusika ehk 21 aastat R2 aastahitte"
author: "Toomas Eilat"
date: "2016-07-14"
layout: post
---






```
## Error in library(wordcloud): there is no package called 'wordcloud'
```

```
## Error in library(directlabels): there is no package called 'directlabels'
```
Raadio 2 on alates 1994. aastast korraldanud küsitluse populaarsemate Eesti laulude valimiseks. Kõik tulemused, kokku 21 aastat, on kättesaadavad veebilehelt [http://r2.err.ee/aastahitt/ajalugureg.php](http://r2.err.ee/aastahitt/ajalugureg.php). Need annavad hea ülevaate Eesti muusika lähiajaloost. Analüüsin pisut parimaid laule ja populaarsemaid artiste.

Kokku on aastahittide tabelis __880__ lugu, millest omakorda 845 on unikaalset (osad lood on edetabelis mitmel aastal). Selleks, et pisut esitajatest ja lauludest sügavamale vaadata, on vaja ka laulude sõnu. Nende leidmiseks kasutasin veebilehte [http://sasslantis.ee/](http://sasslantis.ee/). Sõnad õnnestus mul kokku leida __495__ loole (59%).

## Laulusõnad
Selleks, et võtta kokku, millest populaarsemad laulud räägivad, koostasin eestikeelsete laulude sõnade esinemissagedusel põhinevad sõnapilved. Seejuures kasutasin ainult sõnade algvorme. Sõnakorduste vältimiseks (näit mõne loo refräänis), tegin sõnapilved selle järgi, mitmes loos mingi sõna esineb. Esimesel pildil on populaarsemad nimisõnad ja teisel omadussõnad.


```
## Error in eval(expr, envir, enclos): could not find function "wordcloud"
```

```
## Error in eval(expr, envir, enclos): could not find function "wordcloud"
```
Järgmisel graafikul on võrreldud populaarsemaid nimi- omadus- ja tegusõnu kahel perioodi 1994-2005 ja 2006-2015. 

```
## Error in function_list[[i]](value): could not find function "direct.label"
```



<img src="{{ site.url }}/img/eesti-muusika-sonade_arv_laulus-1.png" style="display: block; margin: auto;" />


## Kuidas?
Andmed on kogutud PPA Facebooki seinalt (API abil). Andmetöötlus ja graafikud on tehtud R-s ning detailsemat skripti näeb Githubis: [https://github.com/toomase/politsei_koned](https://github.com/toomase/politsei_koned).
