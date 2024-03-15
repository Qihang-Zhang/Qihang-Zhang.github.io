---
layout: page
permalink: /publications/
title: Publications
description:
years: [2023]
nav: true
nav_order: 2
---
<!-- _pages/publications.md -->
Reference: <a href="https://scholar.google.com/citations?user=A_h5posAAAAJ&hl">Google Scholar</a> profile.
<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>





<br/><br/>
