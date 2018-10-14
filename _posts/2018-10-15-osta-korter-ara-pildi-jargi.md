---
title: "Osta korter ära (pildi järgi)"
author: "Toomas Eilat"
date: "2018-10-15"
layout: post
---








Olen pikka aega soovinud mõnes analüüsis kasutada [Keras't](https://keras.rstudio.com/) ja *deep learning'ut*. Otsustasin selle õppimiseks kasutada piltide klassifitseerimist. Kraapisin 2018.a augustis [kv.ee](https://kinnisvaraportaal-kv-ee.postimees.ee/) lehelt info kõigi korteri müügikuulutuste kohta (~11K). Eesmärk oli ehitada mudel, mis suudaks kõik kuulutuste ava-pildid jagada 6 klassi: elutuba, magamistuba, köök, vannituba, tühi tuba, (pilt tehtud)õuest. Kuna antud analüüsis oli minu jaoks lõpptulemusest huvitavam mudeli ehitamise ja treenimise protsess, siis kirjeldan seekord pisut põhjalikumalt just seda.

Nagu öeldus alustasin ca 11K pildi allalaadimisega. Selleks, et deep learning mudelit treenida oli mul vaja maksimaalselt suurt hulka treeningandmeid (pildid koos õigete tunnustega). See oli kogu analüüsis ka kõige aeganõudvam faas. Ehitasin eraldi väikese veebirakenduse, mille abil sain pilte manuaalselt TAG'da. Kokku TAG'sin ära ~1500 pilti. Kuna kuulutuste ava-piltideks on toad väge eri kaaluga (enamlevinud pilt õuest ja harvad pildid vannitoast), siis genereerisin harvemini esinenud tubade pilte juurde.

Mudeli treenimiseks kasutasin lisaks oma TAG'tud piltidele ka eeltreenitud piltide klassifitseerimise mudelit vgg16. Kuna sellise mudeli treenimine on CPU-põhises masinas väga aeganõudev, siis kasutasin AWS masinat GPU-dega. Mudeli ennustuste täpsuseks sain ~85%. Samas tundus, et harva esinevaid vanni- ja magamistoa pilte mudel väga täpselt siiski ennustada ei suuda. Pistelise tulemuste kontrolli põhjal võis aga üldiselt tulemuste täpsusega täitsa rahule jääda.

Allolevatel piltidel on näide igast toast. Rohelisega on märgitud see ala pildil, mille põhjal mudel oma ennustuse peamiselt tegi.

Antud näite puhul on kööki peamiselt iseloomustanud pliit ja kraanikause ümbrus.
![]({{ site.url }}/img/osta-korter-ara-kook-1.png)

Elutoas on mudel ennustuse teinud diivani, tugitoolide ja teleka põhjal.
![]({{ site.url }}/img/osta-korter-ara-elutuba-1.png)

Magamistoas on kõige olulisem roll voodil.
![]({{ site.url }}/img/osta-korter-ara-magamistuba-1.png)

Vannitoas on tähtsal kohal plaaditud seinad ning wc-pott, kraanikauss ja pesumasin.
![]({{ site.url }}/img/osta-korter-ara-vannituba-1.png)

Õuest tehtud pildi puhul on ennustamisel abi olnud maja fassaadist ja taevast.
![]({{ site.url }}/img/osta-korter-ara-ouest-1.png)

Tühja tuba on selle näite puhul iseloomustanud suur põranda pind.
![]({{ site.url }}/img/osta-korter-ara-tyhi_tuba-1.png)


## Tulemuste analüüs

Selleks, et mitte ainult metoodikat kirjeldada, lisan ka mõned huvitavamad graafikud kuulutuste ava-piltide ja korteri tunnuste vaheliste seoste kohta.

Pisut üle poole kuulutuste ava-piltidest on tehtud õuest (maja välisvaated).
![]({{ site.url }}/img/osta-korter-ara-ava_pilt-1.png)

Uuemate korterite (ehitusaasta 2015+) puhul on üle 2/3 kuulutuste ava-pilt tehtud õuest. Varasemate ehitusaastatega korterite puhul on pisut rohkem pilte tubadest.
![]({{ site.url }}/img/osta-korter-ara-ehitusaasta-1.png)

Huvitav on see, et nii päris odavatele korteritele (maksumus ...-20K) kui ka kallimatele korteritele (maksumus 100K-...) on iseloomulikud õuest tehtud kuulutuste ava-pildid. Keskmise hinnaga korterite puhul on pilte pisut rohkem tehtud tubadest. 
![]({{ site.url }}/img/osta-korter-ara-maksumus-1.png)


## Kuidas?
Analüüsi tegemisel sain abi raamatust [Deep Learning with R](https://www.amazon.com/Deep-Learning-R-Francois-Chollet) ning paljudest blogipostitustest. Kõige enam väärivad äramärkimist järgmised:
  - [Explaining Keras image classification models with lime](https://shirinsplayground.netlify.com/2018/06/keras_fruits_lime/)
  - [lime v0.4: The Kitten Picture Edition](https://blogs.rstudio.com/tensorflow/posts/2018-03-09-lime-v04-the-kitten-picture-edition/)
  - [It's that easy! Image classification with keras in roughly 100 lines of code.](https://shirinsplayground.netlify.com/2018/06/keras_fruits/)

Detailsemalt saab R koodiga tutvuda Githubis: [https://github.com/toomase/kinnisvara_kuulutused](https://github.com/toomase/kinnisvara_kuulutused).
