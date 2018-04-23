---
layout: page
title: Archive
published: true
header: true 
permalink: /archive/
years:
- 2018
- 2017
- 2016
- 2015
---

{% for year in page.years %}
{% assign y1 = year | plus: 0 %}
# {{ y1 }}
<ul>
{% for post in site.posts %}
	{% assign y2 = post.date | date: '%Y' | plus: 0 %}
	{% if y1 == y2 %}
		<li style="line-height:1.5em">{{ post.date | date:"%d %b" }} &middot; <a href="{{ post.url }}">{{ post.title }}</a></li>
	{% endif %}
{% endfor %}
</ul>
{% endfor %}