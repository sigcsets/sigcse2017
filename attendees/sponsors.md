---
title: Supporter Sessions
showTitle: true
---

{% assign prevdate = "" %}

{% for event in site.data.sponsor-sessions %}

{% assign thisdate = event.date %}
{% if thisdate != prevdate %}
<h2 class="alert alert-info">{{thisdate}}</h2>
{% endif %}

<h3>{{event.name}}: {{event.title}}</h3>
<p><b>Time: {{event.time}}</b><br/>
<b>Room: {{event.room}}</b></p>

{{event.abstract}}

{% assign prevdate = thisdate %}
{% endfor %}
