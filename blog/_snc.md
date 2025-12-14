---
layout: page
show_meta: false
title: "test content!"
subheadline: "SNC essais"
header:
   image_fullwidth: "header_unsplash_5.jpg"
permalink: "/snc/"
---
<ul>
    {% for post in site.categories.avl %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>

# codeblocks
how code looks: R
```r
get.r<-function(s){
  basis<-3
  x<-basis+s
  
  
  i<-x-basis
  p<-i-1
  q<-x^i
  y<-x+p
  z<-y^i
  q<-z
  r1<-q/x
r2<-sqrt(q)
print(r1)
print(r2)
print(z)
print("---")
print(i<-z^r2)
print((b<-z*1/r1))
print(q<-(z*1/r1)*x)
#print(q)
print(r1<-sqrt(q))
}
get.r(0)
```


# .rb test call
this Hello should be replaced by a dummy var. its not. was, but no