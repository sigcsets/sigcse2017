---
title: Workshops
showTitle: true
---

{% assign prevdate = "" %}

{% for ws in site.data.workshops %}

{% assign thisdate = ws.date %}
{% if thisdate != prevdate %}
<h2 class="alert alert-info">{{thisdate}}</h2>
{% endif %}

<h3>{{ws.number}}: {{ws.title}}</h3>
<p><b>{{ws.presenters}}</b><br/>
<b>{{thisdate}}</b><br/>
<b>Room: {{ws.room}}</b></p>

{{ws.abstract}}

{% assign prevdate = thisdate %}
{% endfor %}
