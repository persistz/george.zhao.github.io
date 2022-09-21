---
layout: page
permalink: /intro/
title: 
pubs:
    - title: "Precise Quantitative Analysis of Binarized Neural Networks: A BDD-based Approach"
      author: "Yedi Zhang, **Zhe Zhao**, Guangke Chen, Fu Song, Min Zhang, Taolue Chen"
      journal: "TOSEM, CCF-A"
      url: "https://dl.acm.org/doi/abs/10.1145/3563212"

    - title: "QVIP: An ILP-based Formal Verification Approach for Quantized Neural Networks"
      author: "Yedi Zhang, **Zhe Zhao**, Guangke Chen, Fu Song, Min Zhang, Taolue Chen, Jun Sun"
      journal: "ASE"
      year:    "2022, CCF-A"
      url: "https://chentaolue.github.io/pub-papers/ase22.pdf"

    - title: "AS2T: Arbitrary Source-To-Target Adversarial Attack on Speaker Recognition Systems"
      author: "Guangke Chen, **Zhe Zhao**, Fu Song, Sen Chen, Lingling Fan, Yang Liu"
      journal: "TDSC, CCF-A"
      url: "https://arxiv.org/abs/2206.03351"

    - title: "CLEVEREST: Accelerating CEGAR-based Neural Network Verification via Adversarial Attacks"
      author: "**Zhe Zhao**, Yedi Zhang, Guangke Chen, Fu Song, Taolue Chen and Jiaxiang Liu"
      journal: "SAS"
      year:    "2022, CCF-B"
      url: "https://conf.researchr.org/details/sas-2022/sas-2022-papers/13/CLEVEREST-Accelerating-CEGAR-based-Neural-Network-Verification-via-Adversarial-Attac"
      # url:     "https://dl.acm.org/doi/10.1145/3460319.3464822"
      # image:   "../images/A2D.png"

    - title: "Attack as Defense: Characterizing Adversarial Examples using Robustness"
      author: "**Zhe Zhao**, Guangke Chen, Jingyi Wang, Yiwei Yang, Fu Song, Jun Sun"
      journal: "ISSTA"
      year:    "2021, CCF-A"
      url:     "https://dl.acm.org/doi/10.1145/3460319.3464822"
      # doi:     "https://dl.acm.org/doi/10.1145/3460319.3464822"
      image:   "../images/A2D.png"
      slides:  "../slides/attack-as-defense.pdf"
      code:    "https://github.com/S3L-official/attack-as-defense"

    - title: "BDD4BNN: A BDD-based Quantitative Analysis Framework for Binarized Neural Networks"
      author: "[Yedi Zhang](http://s3l.shanghaitech.edu.cn/people/yedizhang/), **Zhe Zhao**, Guangke Chen, Fu Song, Taolue Chen"
      journal: "CAV"
      year:    "2021, CCF-A"
      url:     "https://arxiv.org/abs/2103.07224"
      image:   "../images/BDD4BNN.png"

    - title:   "Who is Real Bob? Adversarial Attacks on Speaker Recognition Systems"
      author:  "Guangke Chen, Sen Chen, Lingling Fan, Xiaoning Du, **Zhe Zhao**, Fu Song, Yang Liu"
      journal: "IEEE S&P, Oakland"
      year:    "2021, CCF-A"
      url:     "https://arxiv.org/abs/1911.01840"
      image:   "../images/fakebob.jpg"
      code:    "https://github.com/FAKEBOB-adversarial-attack/FAKEBOB"
      slides:  "https://guangkechen.site/FAKEBOB/Oakland2021-Session-5-GuangkeChen-WhoisRealBob.pdf"
      video:   "https://www.youtube.com/watch?v=ZRfkcojsUD4"
      website: "https://sites.google.com/view/fakebob/home"
      blog:    "https://zhuanlan.zhihu.com/p/165665859"


    - title:   "Taking Care of The Discretization Problem: A Comprehensive Study of the Discretization Problem and A Black-Box Adversarial Attack in Discrete Integer Domain"
      author:  "Lei Bu\\*, **Zhe Zhao\\***, Yuchao Duan, Fu Song"
      note: "Co-first author\\*"
      journal: "TDSC, CCF-A"
      url:     "https://www.computer.org/csdl/journal/tq/5555/01/09453106/1ulCF8QBphC"
      code: "https://github.com/persistz/derivative-free-attack"

    # - title:   "Paper title in 3-7 words that sound like Clingon"
    #   author:  "M. McFly, D. Kirk, L. Skywalker, H.J. Potter, I. Jones, H. Houdini"
    #   journal: "Transactions on Black Magic"
    #   note:    "(presented at Oz)"
    #   year:    "2012"
    #   url:     "http://publish-more-stuff.org"
    #   doi:     "http://dx.doi.org"
    #   image:   "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fimages.moviepostershop.com%2Fthe-matrix-movie-poster-1999-1020518087.jpg&f=1"
    #   media:
    #     - name: "IMDB"
    #       url:  "http://www.imdb.com/title/tt0133093/"

---

### Publications

{% assign thumbnail="left" %}

{% for pub in page.pubs %}
{% if pub.image %}
{% include image.html url=pub.image caption=""  
width="300px" align="right" %}
{% endif %}
[**{{pub.title}}**]({% if pub.internal %}{{pub.url | prepend: site.baseurl}}{% else %}{{pub.url}}{% endif %})<br />
{{pub.author}}<br />
*{{pub.journal}}*
{% if pub.note %} *({{pub.note}})* {% endif %} {% if pub.year %}*{{pub.year}}* {% endif %} {% if pub.doi %}[[doi]({{pub.doi}})]{% endif %} {% if pub.arxiv %}[[doi]({{pub.arxiv}})]{% endif %} <br /> {% if pub.code %}[[code]({{pub.code}})]{% endif %} {% if pub.slides %}[[slides]({{pub.slides}})]{% endif %} {% if pub.video %}[[video]({{pub.video}})]{% endif %} {% if pub.website %}[[website]({{pub.website}})]{% endif %} {% if pub.blog %}[[blog]({{pub.blog}})]{% endif %}
{% if pub.media %}<br />Media: {% for article in pub.media %}[[{{article.name}}]
({{article.url}})]{% endfor %}{% endif %}

{% endfor %}

### Award & Scholarship

5th Place in CVPR 2022 AISafety Challenge Track2 (AEs detection competition), 2022

Merit Prize in <a href="https://security.oppo.com/challenge/home.html">OPPO 2021 Security AI Challenge</a>

China National Scholarship, 2021

3rd Place in ACM MM 2021 Robust Logo Detection Competition, 2021 

3rd Place in <a href="https://aisecure-workshop.github.io/amlcvpr2021/">CVPR 2021 White-box Adversarial Attacks Competition</a>, 2021 

First Place of <a href="https://aistudio.baidu.com/aistudio/competition/detail/15">Baidu PaddlePaddle AI Adversarial Attack Contest</a>, 2019

SIST Excellent Teaching Assistant, 2019

Excellent Graduate of Ocean University of China, 2016

China National Encouragement Scholarship, 2015

### Teaching
Teaching Assistant for Software Engineering, Spring 2019

### Service
Committee: OSDI and Usenix ATC AEC (2022), ISSTA AEC (2022)

Reviewer: ISSRE (2022, 2021), ICECCS (2022, 2020, 2019), ICICS (2022, 2021), CAV (2020), AsianHOST (2022)

Student Volunteer: ISSTA (2019)