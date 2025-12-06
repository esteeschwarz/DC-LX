---
layout: page
show_meta: false
title: "AVl content!"
subheadline: "comparative literature essais"
header:
   image_fullwidth: "header_unsplash_5.jpg"
permalink: "/avl/"
---
<ul>
    {% for post in site.categories.avl %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>