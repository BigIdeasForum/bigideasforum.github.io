---
layout: page
permalink: /presenter/
title: Presenter
---
 
<div id="archives">
{% assign sorted_cats = site.categories | sort %}
{% for category in sorted_cats %}
  <div class="archive-group">
    {% capture category_name %}{{ category | first }}{% endcapture %}
    <div id="#{{ category_name | slugize }}"></div>
    <p></p>
    
    <h3 class="category-head">{{ category_name }}</h3>
    <a name="{{ category_name | slugize }}"></a>
	{% assign sorted_posts = site.categories[category_name] | sort:"title" %}
    {% for post in sorted_posts %}
    <article class="archive-item">
      <li><a href="{{ site.baseurl }}{{ post.url }}">{{post.title}}</a></li>
    </article>
    {% endfor %}
  </div>
{% endfor %}
</div>