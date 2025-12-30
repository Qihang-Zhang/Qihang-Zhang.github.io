---
layout: page
permalink: /publications/
title: Publications
description:
years: [2025, 2023]
nav: true
nav_order: 2
---
<!-- _pages/publications.md -->
Reference: [Google Scholar](https://scholar.google.com/citations?user=A_h5posAAAAJ&hl) Profile

\* indicates equal contribution
<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
