---
title: "Punase tulega üle tee"
author: "Toomas Eilat"
date: "2019-09-03"
layout: post
---








Avastasin ühe huvitava mudeli, mille abil piltidelt erinevaid objekte tuvastada, [You only look once (YOLO)](https://pjreddie.com/darknet/yolo/). Antud süsteemi suur pluss on see, et ta võimaldab kiiresti ja täpselt eeltreenitud mudeli abil piltidelt objekte tuvastada. Seejuures ei ole vaja väga palju riistvara.

Selleks, et YOLO mudelit katsetada otsustasin proovida tuvastada [Tallinna liikluskaameratel](http://ristmikud.tallinn.ee/) punase tulega teed ületavaid jalakäiaid. Plaan oli seda teha läbi paari etapi:

1. Salvesta maha liikluskaamera pilt
2. Tuvasta, kas jalakäiatel põleb valgusfooris punane tuli.
3. Lõika pildist välja ainult sõidutee osa
4. YOLO mudeli abil tuvasta, kas sõiduteel on mõni inimene

Esialgu proovisin kõik need etapid läbi teha nö reaal-ajas. See tähendab, et kohe kui pildi maha salvestasin, jooksutasin läbi ka kõik järgnevad protsessid, kuni inimeste tuvastamiseni välja. Head tulemust see ei andnud, kuna erinevad etapid vajasid palju seadistamist ja nii tuli kogu tegevust korduvalt otsast alata. Seetõttu otsustasin iga etapi läbi jooksutada eraldi.


### 1. Salvesta maha liikluskaamera pilt




Üsna suurest hulgast ristmike kaameratest valisin [Viru väljaku ülekäiguraja kaamera](http://ristmikud.tallinn.ee/last/cam104.jpg). Peamine põhjus oli selles, et antud kaamerapilt on võrreldes teistega suhteliselt selge ning proovimise käigus suutis mudel suhteliselt hästi inimesi pildilt tuvastada. Mõne teise, suurema ristmiku puhul oli pilt hägusam ning segavaid faktoreid rohkem.

Liikluskaamera pilte salvestasin maha 26. augustil 2019. Selleks, et objektide tuvastamist päris mitte igalt kaadrilt tegema hakata, laadisin pilte iga 10-30 sekundi tagant, ajavahemikus 7:45 - 23:45. Kokku laadisin alla 2849 pilti, ~175 igas tunnis. 

![]({{ site.url }}/img/punase-tulega-yle-tee-liikluskaamera_pildid_koik-1.png)

Siin üks näide tiheda liiklusega Viru väljaku ülekäigust 26.08.2019, kl 14:16:

![Viru väljaku ülekäik 26.08.2019, kl 14:16](https://github.com/toomase/toomase.github.io/raw/master/img/viru_valjak_1.jpg)


### 2. Tuvasta, kas jalakäiatel põleb valgusfooris punane tuli.

Kui kõik toorandmed piltide kujul olid olemas, tuli järgmise sammuna neist eristada pildid, kus jalakäiatel on punane tuli ning autodel roheline. Selle tegemiseks lõikasin kõigilt piltidelt välja 8x8 piksliga ruudu, täpselt valgusfoori tule pealt. Sellelt väikselt pildilt tuvastasin RGB värvid. Otsuse tegemine toimus selle põhjal, kas domineeriv on roheline või punane värv.

Kokkuvõttes osutus just see etapp kõige keerulisemaks. Seda seetõttu, et päeva jooksul erinevas päikesevalguses paistab foori tuli nendel suhteliselt madala kvaliteediga piltidelt välja väga erinevalt. Allolevalt pildilt on näha foorituli päeva jooksul iga 2 tunni tagant.



![Roheline foorituli läbi päeva](https://github.com/toomase/toomase.github.io/raw/master/img/auto-foor-roheline.jpg)




Kokku tuvastasin 1264 pilti jalakäiate punase tulega. Nagu allolevalt graafikult näha, siis õhtutundidel valitud reeglid väga hästi ei toiminud ning kella 21-23 ajast õnnestus tuvasta ainult üksikud punase tulega pildid.

![]({{ site.url }}/img/punase-tulega-yle-tee-liikluskaamera_punane_foorituli-1.png)


### 3. Lõika pildist välja ainult sõidutee osa

Jalakäiate punase fooritulega piltidest lõikasin välja ainult osa sõiduteest, et sealt siis järgmises sammus tuvastada inimesil. Selle eesmärk oli, et mudel ei tuvastaks jalakäiad kõnniteel vaid ainult sõiduteel.


### 4. YOLO mudeli abil tuvasta, kas sõiduteel on mõni inimene




Järgneva sammuna jooksutasin YOLO mudelit kõigil jalakäiate punase tulega sõidutee piltidel. Mudel tuvastas kokku inimesi 33-lt pildilt. Allolevatel piltidel on mõned näited, kus mudel on tuvastanud õigesti punase tulega teed ületava jalakäia. Ülemisel pildil on toorik, mis on liikluskaamerast alla laetud ning alumisel pildil sõidutee osa koos objekti tuvastusega YOLO mudeli abil.




![Punase tulega teel](https://github.com/toomase/toomase.github.io/raw/master/img/punas-tulega-teel-1.jpg)

![Punase tulega teel](https://github.com/toomase/toomase.github.io/raw/master/img/punas-tulega-teel-2.jpg)

Lisaks täpsetele ennustustele, tuvastas mudel jalakäiana sõiduteel ka näiteks lahtises turismibussis istuva inimese ja kaubaautol oleva reklaampildi. Samuti ei olnud täpsed kõik tuvastatud punased foorituled jalakäiatele (ja samal ajal roheline autodele), mistõttu mõned inimesed on tuvastatud sõiduteed ületamas rohelise tulega.





![Vale tuvastus](https://github.com/toomase/toomase.github.io/raw/master/img/punas-tulega-teel-vale-1.jpg)

![Vale tuvastus](https://github.com/toomase/toomase.github.io/raw/master/img/punas-tulega-teel-vale-2.jpg)


## Kuidas?
Andmete allalaadimise, puhastamise ja modelleerimise skript on leitav Githubist: [https://github.com/toomase/ristmike_liikluskaamerad](https://github.com/toomase/ristmike_liikluskaamerad).
