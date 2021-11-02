---
layout: page
permalink: /intro/
title:  
pubs:
    - title: "Attack as Defense: Characterizing Adversarial Examples using Robustness"
      author: "Zhe Zhao, Guangke Chen, Jingyi Wang, Yiwei Yang, Fu Song, Jun Sun"
      journal: "ISSTA"
      year:    "2021, CCF-A"
      url:     "https://arxiv.org/abs/2103.07633"
      image:   "../images/A2D.png"

    - title: "BDD4BNN: A BDD-based Quantitative Analysis Framework for Binarized Neural Networks"
      author: "[Yedi Zhang](http://s3l.shanghaitech.edu.cn/people/yedizhang/), Zhe Zhao, Guangke Chen, Fu Song, Taolue Chen"
      journal: "CAV"
      year:    "2021, CCF-A"
      url:     "https://arxiv.org/abs/2103.07224"
      image:   "../images/BDD4BNN.png"

    - title:   "Who is Real Bob? Adversarial Attacks on Speaker Recognition Systems"
      author:  "Guangke Chen, Sen Chen, Lingling Fan, Xiaoning Du, Zhe Zhao, Fu Song, Yang Liu"
      journal: "IEEE S&P, Oakland"
      year:    "2021, CCF-A"
      url:     "https://arxiv.org/abs/1911.01840"
      image:   "../images/fakebob.jpg"

    - title:   "Taking Care of The Discretization Problem: A Comprehensive Study of the Discretization Problem and A Black-Box Adversarial Attack in Discrete Integer Domain"
      author:  "Yuchao Duan, Zhe Zhao, Lei Bu, Fu Song"
      note: "Co-first author"
      journal: "TDSC, early access"
      url:     "https://arxiv.org/abs/1905.07672"

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
{% if pub.note %} *({{pub.note}})*
{% endif %} *{{pub.year}}* {% if pub.doi %}[[doi]({{pub.doi}})]{% endif %}
{% if pub.media %}<br />Media: {% for article in pub.media %}[[{{article.name}}]({{article.url}})]{% endfor %}{% endif %}

{% endfor %}

### Award
3rd Place in CVPR2021 Security AI Challenger, 2021 

First Place of Baidu PaddlePaddle AI Adversarial Attack Contest, 2019

SIST Excellent Teaching Assistant, 2019

Excellent Graduate of Ocean University of China, 2016

### Teaching
Teaching Assistant for Software Engineering Spring 2019

### Service
ICECCS subreviewer, 2020

Student Volunteer@ISSTA 2019

ICECCS subreviewer, 2019

### Scholarship
China National Encouragement Scholarship, 2015