---
layout: page
show_meta: false
title: "LX in content!"
subheadline: "linguistics essais"
header:
   image_fullwidth: "header_unsplash_5.jpg"
permalink: "/linguistics/"
---
<ul>
    {% for post in site.categories.linguistics %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>