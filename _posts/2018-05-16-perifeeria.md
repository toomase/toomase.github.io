---
title: "Perifeeria"
author: "Toomas Eilat"
date: "2018-05-16"
layout: post
---





Selles analüüsis proovisin leida punktid Mandri-Eestis ja suurte saartel, mis asuvad teedest võimalikult kaugel. Välja valisin 20 sellist punkti. Kõige kaugemal on lähimast teest (7,1 km) kaks punkti Ida-Virumaal, Narva jõe lähedal. Neile punktidele järgnevad asukohad Alam-Pedja looduskaitsealal ja Emajõe suursoos. Üldiselt on kõigile perifeersetele punktidele iseloomulik, et nad asuvad mõnes suuremas rabas või soos. Erandiks on ainult üks Matsalu rahvuspargis paiknev punkt. 

Allolev kaart on interaktiivne. Paremalt ülevalt nurgast saab sisse lülitada Esri ortofoto aluskaardi ning kuvada välja igale punktile lähedal olevad sood ja rabad. Kaardi avamiseks täisekraanil kliki sellel <a href="http://toomase.github.io/files/perifeeria.html" target="_blank">lingil</a>.

<iframe frameborder="0" width="900" height="600" 
        sandbox="allow-same-origin allow-scripts"
        scrolling="no" seamless="seamless"
        src="/files/perifeeria.html">
</iframe>


## Kuidas?

Alustuseks jagasin kogu Eesti ruutudeks. Selleks kasutasin Maaameti [Eesti topograafilise kaardi ruudustikku 1:2000](https://geoportaal.maaamet.ee/docs/pohikaart/epk2T_SHP.zip?t=20180403102949). Seejärel leidsin [OSRM teenuse](http://project-osrm.org/) abil iga kaardiruudu keskpunkti (kokku ~40 000 punkti) kauguse lähimast teest. Selleks, et perifeersete punktide asukohta veel täpsemaks ajada jagasin kõige kaugemad kaardiruudud veel omakorda 25-ks alamruuduks ja tuvastasin nendest kõige kaugema punkti.

Detailsed R skriptid asuvad Githubis: [https://github.com/toomase/kaugus_kohast](https://github.com/toomase/kaugus_kohast).
