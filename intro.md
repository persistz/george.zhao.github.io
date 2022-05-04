---
layout: page
permalink: /intro/
title: 
pubs:
    - title: "Attack as Defense: Characterizing Adversarial Examples using Robustness"
      author: "**Zhe Zhao**, Guangke Chen, Jingyi Wang, Yiwei Yang, Fu Song, Jun Sun"
      journal: "ISSTA"
      year:    "2021, CCF-A"
      url:     "https://dl.acm.org/doi/10.1145/3460319.3464822"
      # doi:     "https://dl.acm.org/doi/10.1145/3460319.3464822"
      image:   "../images/A2D.png"

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

    - title:   "Taking Care of The Discretization Problem: A Comprehensive Study of the Discretization Problem and A Black-Box Adversarial Attack in Discrete Integer Domain"
      author:  "Lei Bu\\*, **Zhe Zhao\\***, Yuchao Duan, Fu Song"
      note: "Co-first author\\*"
      journal: "TDSC, early access"
      url:     "https://www.computer.org/csdl/journal/tq/5555/01/09453106/1ulCF8QBphC"
      # doi:     "https://www.computer.org/csdl/journal/tq/5555/01/09453106/1ulCF8QBphC"

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
{% if pub.note %} *({{pub.note}})* {% endif %} {% if pub.year %}*{{pub.year}}* {% endif %}
{% if pub.doi %}[[doi]({{pub.doi}})]{% endif %}
{% if pub.arxiv %}[[doi]({{pub.arxiv}})]{% endif %}
{% if pub.media %}<br />Media: {% for article in pub.media %}[[{{article.name}}]
({{article.url}})]{% endfor %}{% endif %}

{% endfor %}

### Award

Merit Prize in <a href="https://security.oppo.com/challenge/home.html">OPPO 2021 Security AI Challenge</a>.

3rd Place in ACM MM 2021 Robust Logo Detection Competition, 2021 

3rd Place in CVPR 2021 White-box Adversarial Attacks Competition, 2021 

First Place of Baidu PaddlePaddle AI Adversarial Attack Contest, 2019

SIST Excellent Teaching Assistant, 2019

Excellent Graduate of Ocean University of China, 2016

### Teaching
Teaching Assistant for Software Engineering Spring 2019

### Service
Committee: OSDI and Usenix ATC AEC (2022), ISSTA AEC (2022)

Reviewer: ICECCS (2022, 2020, 2019), ICICS (2021), ISSRE (2021), CAV (2020)

Student Volunteer: ISSTA (2019)

### Scholarship
China National Scholarship, 2021

China National Encouragement Scholarship, 2015