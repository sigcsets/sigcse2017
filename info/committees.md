---
layout: default
title: Committees
---

{% assign rows = 2 %}
{% assign cellstyle = "col-md-6" %}

{% for comm in site.data.committees %}
{% assign ctr = 0 %}
<div class = "row">
<h2> {{comm.name}}</h2>
<a name = "{{comm.name | remove: " " }}"></a>
  {% for memb in comm.members %}
    {% if ctr == rows %}
</div>
<div class = "row" style = "margin-top: 30px;">
{% assign ctr = 0%}
    {% endif %}
    {% assign ctr = ctr | plus: 1 %}
<div class = "{{cellstyle}}">
  <table  width = "100%">
    <tr>
      <td  colspan = "2">
        <h4>{{memb.role}}</h4>
      </td>
    </tr>
    <tr>
      <td width = "20%" > <b> Name: </b> </td>
      <td> {{memb.name}} </td>
    </tr>
    <tr>
      <td> <b> Institution: </b> </td>
      <td> {{memb.inst}} </td>
    </tr>
    <tr>
      <td> <b> Email: </b> </td>
      <td> <a href = "mailto:{{memb.email}}">{{memb.email}}</a> </td>
    </tr>
  </table>
</div>  
  {% endfor %}
</div> <!-- row -->
{% endfor %}
