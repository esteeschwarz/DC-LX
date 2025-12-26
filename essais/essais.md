---
layout: page
show_meta: false
title: "content essais!"
subheadline: "linguistics / AVL essais"
# header:
#    image_fullwidth: "header_unsplash_5.jpg"
permalink: "/essais/"
---
<h3>AVL</h3>
<ul>
    {% for post in site.categories.AVL %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
<h3>LX</h3>
<ul>
    {% for post in site.categories.linguistics %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
