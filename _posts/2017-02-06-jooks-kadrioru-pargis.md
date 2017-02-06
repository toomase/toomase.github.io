---
title: "Jooks Kadrioru pargis"
author: "Toomas Eilat"
date: "2017-02-06"
layout: post
---





Olen päris mitu aastat kasutanud [Endomondot](https://www.endomondo.com/), et logida oma jooksu trennide gps rajad. Andmeid on aja jooksul kogunenud päris palju ning oleks patt neid mitte mõnes analüüsis ära kasutada. Kuna üldise statistikaga saavad trenni äpid ise üsna hästi hakkama, siis tahtsin proovida midagi muud.

Redditi postitus, [Two years of running, all at once](https://www.reddit.com/r/dataisbeautiful/comments/5ng255/two_years_of_running_all_at_once_oc/), andis hea idee teha animatsioon kõigist oma jooksu trennidest. Selleks, et tulemus oleks konkreetsem, visualiseerisin ära umbes 250 jooksu (perioodist 2011-2016), mis on tervenisti toimunud Kadrioru pargis.

<video src="http://toomase.github.io/files/kadrioru_pargi_jooks.mp4" width="600" height="600" controls preload></video>


## Kuidas?
Animatsiooni tegemiseks laadisin rakendusega [Tapiriik](https://tapiriik.com/) alla kõik oma Endomondosse salvestatud trennid. Seejärel kasutasin R-i, et välja filtreerida ainult Kadrioru pargis tehtud jooksud ning andmed animatsiooniks ette valmistada. R paketi [gganimate](https://github.com/dgrtwo/gganimate) abil tegin valmis lõpliku animatsiooni. Kood andmete ettevalmistamise ja animeerimisega asub Githubis: [https://github.com/toomase/minu_jooks](https://github.com/toomase/minu_jooks). Andmeid ma seekord Githubi ei lisanud.
