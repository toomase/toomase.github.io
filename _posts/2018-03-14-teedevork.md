---
title: "Eesti linnade teedevõrk"
author: "Toomas Eilat"
date: "2018-03-14"
layout: post
---







Ajendatuna blogipostituse [Square-Mile Street Network Visualization](http://geoffboeing.com/2017/01/square-mile-street-network-visualization/) kenadest visuaalidest soovisin sarnaselt kujutada teedevõrgustikku ka Eesti linnades. Allolevatel kaartidel on näidatud 1km raadiusega ringi sees teed ja tänavad eri Eestis piirkondades. 

Esimene kaartide kogumik kujutab 8 vabalt valitud linna teedevõrgustikku.





![]({{ site.url }}/img/teedevork-linnad-1.png)

Järgmistel kaartidel on kõigi Tallinna linnaosade teede ja tänavate vaade.

![]({{ site.url }}/img/teedevork-linnaosad-1.png)

Lisaks kujutasin veel 4 vabalt valitud Tallinna piirkonda.

![]({{ site.url }}/img/teedevork-tallinn_muud-1.png)


### Kuidas?

Visualiseerimiseks kasutasin endale huvitavamana ja tuttavamana tunduvaid piirkondasid Eestis. [Google Maps API](https://developers.google.com/maps/) abil tuvastasin märksõna järgi vastava asukoha koordinaadid. Seejärel tekitasin asukoha ümber 1 km raadiusega ringi, mille sees on kuvatud [OpenStreetMap](https://www.openstreetmap.org/) teedevõrgustik.
Detailsemalt saab R skriptiga tutvuda [githubis](https://github.com/toomase/linnade_km2).
