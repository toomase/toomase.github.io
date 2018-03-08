---
title: "Presidendi vastuvõtu värvid"
author: "Toomas Eilat"
date: "2018-03-08"
layout: post
---







EV100 presidendi vastuvõtu vaatamisega tekkis mõte analüüsida peol tehtud pildigaleriisid. See on hea võimalus viia ennast pisut kurssi piltidelt info kogumisega. Esimene eesmärk on leida trende külaliste peoriiete värvitoonides läbi aastate. Samuti võimaldab [Kairos](https://www.kairos.com/) näotuvastus API tuvastada piltidelt teisi analüüsiväärilisi tunnuseid (inimese vanus, sugu, prillide olemasolu jne). Pisut täpsemalt kirjeldan metoodikat postituse lõpus.

Kokku õnnestus mul [ERR-i](https://err.ee) ja [Õhtulehe]() presidendi vastuvõtu galeriidest (2013-2018) kraapida ~2500 pilti. Kuigi huvitav oleks uurida pikemat perioodi, tunuds varasemate aastate galeriide leidmine ja kraapimine keerulisem.


### Populaarsed värvitoonid riietuses



Igalt pildilt tuvastasin kõigi inimeste kohta 2 kõige domineerivamat värvitooni. Järgnevatel graafikutel ongi kujutatud nende värvide esinemissagedust aastate lõikes.

Milline on domineeriv riietuse värvitoon kõigi külaliste peale kokku? 
Ettearvatult on kõige populaarsem värv must, mis domineerib umbes 60% külaliste riietuses. Erisusena paistab välja 2015. a, kus osa musta populaarsusest on üle võtnud hallid toonid. Seda fenomeni uurin allpool pisut detailsemalt.

![]({{ site.url }}/img/ev_aastapaeva_vastuvott-domineeriv_varv_kokku-1.png)

Milline on meestel domineeriv riietuse värvitoon? 80% meestest on selleks must ülikond ning kõigile teistele värvitoonidele jääb sealt kõrvalt üsna vähe ruumi. Erandina paistab välja halli värvi suhteline populaarsus 2015. aastal. Kui pisteliselt galeriist pilt vaadata, siis tundub, et see on osaliselt seletatav fotoseina valgustusega - osad mustad ülikonnad paistavad pildilt halli tooni. Teine tähelepanek on tumesiniste ülikondade populaarsuse kasv läbi aastate.


![]({{ site.url }}/img/ev_aastapaeva_vastuvott-domineeriv_varv_mehed-1.png)

Kui kõige domineerivam on meeste riietuses must värvitoon, siis järgmisena paistavad silma valge ja hallid toonid (trijiksärk).
![]({{ site.url }}/img/ev_aastapaeva_vastuvott-domineeriv_varv_2_mehed-1.png)


Milline on naiste kleitide domineeriv värvitoon? Kõige domineerivam on endiselt must, aga mitte enam mäekõrguse ülekaaluga (40%).

![]({{ site.url }}/img/ev_aastapaeva_vastuvott-domineeriv_varv_naised-1.png)

Kuna naiste kleitides on oluliselt rohkem värvi kui meeste riietuses, siis kasutan nende kirjeldamiseks ka laiemat värvipaletti. Alloleval graafikul tähistab iga mull ühte värvitooni vastaval aastal ning mulli suurus iseloomustab värvi populaarsust.
![]({{ site.url }}/img/ev_aastapaeva_vastuvott-domineeriv_varv_mullid_naised-1.png)

### Külalisi iseloomustavad tunnused

Kuna [Kairos](https://www.kairos.com/) näotuvastus API tuvastab pildilt veel erinevaid tunnuseid, siis tundub huvitav ka neid pisut lähemalt uurida.

Milline on meeste ja naiste osakaal aastate lõikes?

![]({{ site.url }}/img/ev_aastapaeva_vastuvott-kylalised_sugu-1.png)

Kui pildil on mees ja naine, siis kummal pool kumbki on? Kui enamasti on mees vasakul pool, siis millegipärast eristub 2016.a, kui mehed seisid meelsamini paremal ja naised vasakul pool.
![]({{ site.url }}/img/ev_aastapaeva_vastuvott-mees_parem_vasak-1.png)

Kuigi pildi pealt näo järgi inimese vanuse ennustamine võib olla väga ebatäpne, kandsin tulemused siiski graafikule. Eristuvana paistab sealt välja 2014.a, kui Presidendi külaliste hulgas oli erakordselt palju 45-aastaseid (või 45-sena näivaid inimesi).

![]({{ site.url }}/img/ev_aastapaeva_vastuvott-kylaliste_vanus-1.png)


### Kuidas?

Analüüsiks vajalikud galeriid otsisin käsitsi välja ERR ja Õhtulehe veebilehtedelt. Kasutasin just neid allikalid, kuna sealt oli kõige mugavam kraapida kogu galerii iga pildi url. Kui umbes 2500 pildi lingid olid olemas, siis jooksutasin need paari lainena läbi [Kairos](https://www.kairos.com/) näotuvastus API (tasuta päevalimiit 1500 päringut). Selle abil tuvastasin inimeste asukoha koordinaadid igal pildil ja muud tunnused (sugu, vanus jne). Inimeste asukohast lähtuvalt lõikasin välja 100x300px suuruse ala pildilt, et sealt automaatselt tuvastada riietuse värvitoonid. Selleks, et väga suurt hulka erinevaid värvitoone rohkem kokku grupeerida kasutasin k-nearest neighbors algoritmi. Selle abil leidsin igal pikslil olevale värvitoonile temale lähima värvitooni kahest värvipaletist: [COLORS - A nicer color palette for the web](https://htmlcolorcodes.com/color-names/) ja [Color Names - HTML Color Codes](http://clrs.cc/). Saadud tulemustest valisin iga inimese kohta välja 2 kõige populaarsemat värvitooni. Nii olid vajalikud toorandmed käes ja edasi võis tegeleda andmete ettevalmistamise ja visualiseerimisega. Detailsemalt saab R skriptiga tutvuda [githubis](https://github.com/toomase/ev_100).
