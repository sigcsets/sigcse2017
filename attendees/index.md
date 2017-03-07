---
title: For Attendees
showTitle: true
---

This year, we are at the [Washington State Convention Center (WSCC)](http://www.wscc.com/), and the main conference hotel is the [Sheraton Seattle Hotel](http://www.sheratonseattle.com/) in Seattle, Washington.

This page will contain everything you need for registration, reserving a room, obtaining visas, and finding a roommate. For now, we want to make sure that rate information is available early to attendees.

<div class="row" style="margin-top: 20px; margin-bottom: 20px;">
{% callout info %}
<p>Everything you need for:
  <ul>
    <li> <a href="#registering">registering for SIGCSE</a>, </li>
    <li> <a href="#registrationrates">this year's rates</a>, </li>
    <!--
    <li> <a href="travelgrants.html">applying for a travel grant from SIGCSE,</a></li>
    -->
    <li> <a href="#reserving">reserving a room</a>,</li>

    <li> <a href="#roommatedb">finding a roommate in the roommate database</a>,</li>
  
    <li> figuring out <a href="#travel">how to travel to {{site.data.main.conferenceCity}}</a>, and</li>
    <li> <a href="#stufftodo">what to do once you are there</a></li>

  </ul>
  is on this page.
</p>
{% endcallout %}
</div>

<a name="registering"></a>

## Registering for SIGCSE {{site.data.sigcse.year}}

<!--
# NOTES FROM NOV 23 2015 - FIXME
Early registration rates --  Apply through February 2.
Late registration rates -- Apply from February 3, through February 23.
Registration closed -- From February 24 through March 1, while we prepare registration packets
Onsite registration -- Available beginning Wednesday, March 2, at 3:00 PM, and as shown above

<div class="row">
{% callout info %}
Onsite registration will be open <b>Wednesday</b> from 3:00PM to 9:30PM, <b>Thursday</b> from 7:30AM to 5:30PM, <b>Friday</b> from 8:00AM to 5:00PM, and <b>Saturday</b> from 8:30AM to 11:45AM and 2:00PM to 3:00PM.
{% endcallout %}
</div>
-->


SIGCSE {{site.data.sigcse.year}} takes place between {{site.data.sigcse.date.month}} {{site.data.sigcse.date.start}} and {{site.data.sigcse.date.month}} {{site.data.sigcse.date.end}} of {{site.data.sigcse.year}}.

As always, we encourage attendees to register early. This helps us with our planning, and in return, you get lower registration rates!

{% if site.data.sigcse.registration.isopen %}
<div class="alert alert-success text-center">
<span class="glyphicon glyphicon-home" aria-hidden="true"></span> <a href="{{site.data.sigcse.registration.url}}">Register now!</a>
</div>
{% else %}
<div class="text-center">
  <hr>
  Registration will open soon!
  <hr>
</div>
{% endif %}

<p>Also, if you are not currently a SIGCSE member, you should <b>consider joining at the same time that you register</b> for the conference. Professionals can <b>save between $30 and $55</b>, while both professionals and students <b>save time</b> by not having to fill out a separate membership form.  The <a href="http://sigcse.org/sigcse/membership/benefits">benefits of SIGCSE membership</a>  are too numerous to list here, but they include the quarterly publications <i>ACM Inroads</i> and the <i>SIGCSE Bulletin</i>, free access to SIGCSE publication archives, access to the SIGCSE-ANNOUNCE and SIGCSE-MEMBERS mailing lists, and the opportunity to network within a community of computing professionals.</p>

Professionals should choose one of the "Non-member joining SIGCSE" registration categories, which are <b>less expensive</b> than the Non-member category. Students simply choose the "Student Non-member" registration category, and then don't opt-out of the included membership (that's right -- it couldn't be much easier). Alternatively, you could <a href="http://sigcse.org/sigcse/membership">join SIGCSE</a>, wait for your membership number, and then register for the conference using the "Member" category.

But wait! There's more! <b>Student volunteers</b> get reimbursed for their conference registration, so they actually <b>get free SIGCSE membership</b> when they join at the same time that they register for the conference. Important: to get this benefit, students must register as volunteers through a system separate from conference registration.

<a name="registrationrates"></a>

### Registration Rates

<div class = "row" style = "font-weight: bold;">
    <div class = "col-sm-2"> When </div>
    <div class = "col-sm-6"> Dates </div>
    <div class = "col-sm-2"> Members </div>
    <div class = "col-sm-2"> Non-Members </div>
</div>
{% for row in site.data.registration.improved %}
  {% if row.alert %}
  <div class = "row" style="padding-top: 15px;">
    <div class = "col-sm-12 {{row.alert}} text-center">
    {{row.date}}
    </div>
  </div>
  {% else %}
  <div class = "row">
      <div class = "col-sm-2"> {{row.cat}} </div>
      <div class = "col-sm-6"> {{row.date}} </div>
      <div class = "col-sm-2"> ${{row.members}} </div>
      <div class = "col-sm-2"> ${{row.nonmembers}} </div>
  </div>
  {% endif %}
{% endfor %}

<div class = "row" style = "padding-bottom: 20px;">&nbsp;</div>

#### K-12 Educators, Workshops, and Students

<div class="row" style="margin-top: 20px; margin-bottom: 20px;">
  <div class="col-md-11 col-md-offset-1">
    <div class="table-responsive">
      <table>
{% for e in site.data.registration.other %}
        <tr class="{{e.alert}}">
          <td style="padding-top: 10px; padding-right: 30px; padding-bottom: 10px;"><b>{{e.category}}</b></td>
          <td>{{e.rates}}</td>
        </tr>
{% endfor %}
      </table>
    </div>
  </div><!-- end row6 -->
  <!--
  <div class="col-md-4 col-md-offset-1">
    <div class="text-center">
      <img
        src="/images/amazing-people-in-amazing-sigcse2015-shirts-300.png"
        alt="Amazing People in Amazing SIGCSE 2015 Shirts"
        width="100%"
        class="image-responsive"><br>
        <em>New this year - purchase a SIGCSE 2015 t-shirt for only $6.
          <b>Pre-orders only</b>.  Order when you register for the conference.</em>
    </div>
  </div>
  -->
</div>



<!-- <div class="row" style="margin-top: 20px; margin-bottom: 20px;">
  <div class="col-md-11 col-md-offset-1">
    <div class="table-responsive">
      <table>
{% for e in site.data.registration.deadlines %}
        <tr class="{{e.alert}}">
          <td style="padding-top: 10px; padding-right: 30px; padding-bottom: 10px;"><b>{{e.category}}</b></td>
          <td>{{e.date}}</td>
        </tr>
{% endfor %}
      </table>
    </div>
  </div>
</div> -->


<!-- {% if site.data.main.isregistrationopen %}
<div class="text-center">
  <hr>
<h3><a href="{{site.data.main.registrationurl}}">The Registration Link</a></h3>
<hr>
</div>
{% else %}
{% callout info %}
A link for registration will be made available here when we finish dusting off the ol' PDP-11 that's been running things since 1971. Just replacing a few tubes, and we'll be ready to go...
{% endcallout %}
{% endif %} -->


### Regarding Visas

The following is the official word from <a href="mailto:supportletters@acm.org">supportletters@acm.org</a> regarding letters of support for visas. Your requests should be emailed to <a href="mailto:supportletters@acm.org">supportletters@acm.org</a> with the information described below.

<div class="well">
  <p>
Visa support letters are answered in the order they are received. You will receive a PDF letter by email within the next 4-5 business days.  Please note we do not fax visa support letters.  The PDF serves as a signed electronic version of the original letter which will be mailed to your current mailing address.  If you do not receive the letter by post mail on time for your visa appointment, please print out your PDF letter and take it with you.
 </p>
 <p>
Please be sure you have included all of the following information below in your original email:
 </p>

<ol>
  <li>Your name as it appears on your passport </li>

  <li>Your current postal mailing address</li>

  <li>The name of the conference you wish to attend</li>

  <li>Your Registration Confirmation Number</li>

  <li>If you have any papers accepted for the conference, please provide the title and indicate whether you are the ‘sole author’ or a ‘co- author’</li>
</ol>
</div>

Note that it could take some time for your request to be honored; leave plenty of time.

&nbsp;



<a name="reserving"></a>

## Reserving a Room

There are four conference hotels with special conference room rates.  All
four are close to the Washington State Convention Center and are within
easy walking distance of each other.  The primary conference hotel is the
**Sheraton Seattle**.

{% callout info %}
Several hotels have sold out of rooms in our conference block on some
nights.  If you try to book online and do not see any rooms available
at your preferred hotel, or you are quoted a different rate than the
conference rate shown below, <b>please call the hotel instead</b>.  All
of the hotels have agreed to honor the conference rate for available
regular rooms (note: the conference block rooms are available Tuesday
March 7 through Saturday March 11; non-conference rates may apply outside
of these dates).
{% endcallout %}

+   **<a href="http://www.sheratonseattle.com/">Sheraton Seattle</a>** (<a href="https://www.starwoodmeeting.com/events/start.action?id=1609202098&key=14E8C405">reservations</a>)<br/>
    Room rate: <s>$185/night + tax</s> (only upgraded, more expensive rooms left)<br/>
    Deadline: February 7, 2017<br/>
    (if you phone direct and ask for the SIGCSE rate, you may still be able to get the group rate)<br/>
    Address: 1400 6th Ave, Seattle, WA 98101<br/>
    Phone: <a href="tel:+1-206-621-9000">+1-206-621-9000</a><br/>
    Phone (direct): <a href="tel:+1-206-447-5547">+1-206-447-5547</a>

+   **<s><a href="http://seattle.grand.hyatt.com/">Grand Hyatt Seattle</a></s>** (<a href="https://aws.passkey.com/go/ACMSIGSCE2017GrandHyatt">reservations</a>) (now <b>SOLD OUT</b>)<br/>
    Room rate: <s>$185/night + tax</s> (now <b>SOLD OUT</b>)<br/>
    Deadline: <s>February 7, 2017</s> (now <b>SOLD OUT</b>)<br/>
    Address: 721 Pine St, Seattle, WA 98101<br/>
    Phone: <a href="tel:+1-206-774-1234">+1-206-774-1234</a>

+   **<a href="http://olive8.hyatt.com/">Hyatt at Olive 8</a>** (<a href="https://aws.passkey.com/go/ACMSIGSCE2017Olive8">reservations</a>)<br/>
    Room rate: $185/night + tax<br/>
    Deadline: <b>February 17</b>, 2017 (note extension!)<br/>
    Address: 1635 8th Ave, Seattle, WA 98101<br/>
    Phone: <a href="tel:+1-206-695-1234">+1-206-695-1234</a>

+   **<s><a href="http://roosevelthotel.com/">The Roosevelt Hotel</a></s>** (<a href="https://reservations.travelclick.com/97459?hotelId=97459&groupid=1489846#/guestsandrooms">reservations</a>) (now <b>SOLD OUT</b>)<br/>
    Room rate: <s>$159/night + tax</s> (now <b>SOLD OUT</b>)<br/>
    Deadline: <s>February 7, 2017</s> (now <b>SOLD OUT</b>)<br/>
    Address: 1531 7th Ave, Seattle, WA 98101<br/>
    Phone: <a href="tel:+1-206-621-1200">+1-206-621-1200</a>

<!--

<p>So <a href="{{site.data.main.bookingURL}}">go reserve your room now</a>. Conference room rates are guaranteed until {{site.data.main.hotelguaranteedate}}.  Please make your reservations before that date to ensure the SIGCSE rate.</p>

<p>If you encounter any difficulties in booking, don't be afraid to use the phone. The Sheraton staff will be glad to assist you. </p>


</div>
  <div class="col-md-2 col-md-offset-1 text-center">
    <img src="{{site.base}}/images/memphis/memphis-38-200.png" width="200" class="image-responsive" ></img>
  </div>
</div>


## *Probably* Needed: Overflow Options

The conference hotel is pretty full, and these are our contracted overflow hotels. They're really close to the conference center.

* **Mariott Courtyard** ([reservations](http://www.marriott.com/meeting-event-hotels/group-corporate-travel/groupCorp.mi?resLinkData=SIGCSE%202016%5EMEMMP%60ACMACMA%7CACMACMB%60133.00-133.0%60USD%60false%604%60;MEMCD%60ACMACMA%7CACMACMB%60133.00%60USD%60false%604%603/1/16%603/7/16%602/1/16&app=resvlink&stop_mobi=yes))

  Booking Code: ACMB

  Deadline: Feburary 1st, 2016

  75 Jefferson Avenue, Memphis, TN  38103

  Phone: <a href="tel:901-522-2200">901-522-2200</a>

* **Mariott SpringHill Suites** ([reservations](http://www.marriott.com/meeting-event-hotels/group-corporate-travel/groupCorp.mi?resLinkData=SIGCSE%202016%5EMEMMP%60ACMACMA%7CACMACMB%60133.00-133.0%60USD%60false%604%60;MEMCD%60ACMACMA%7CACMACMB%60133.00%60USD%60false%604%603/1/16%603/7/16%602/1/16&app=resvlink&stop_mobi=yes))

  Booking Code: ACMA

  Deadline: Feburary 1st, 2016

  85 West Court Avenue, Memphis, TN  38103

  Phone: <a href="tel:901-522-2100">901-522-2100</a>

### YET MORE HOTELS

In no particular order, these additional hotels are generally within easy transportation distance (walking, bus) of the hotel. We recommend you use Google Maps to figure out what it looks like "on the ground" before you blindly reserve space into one of these.

<ul>
{% for hotel in site.data.additionalhotels %}
<li> <b>{{hotel.name}}</b> <br>
  <ul>
    <li> Phone: {{hotel.phone}} </li>
    <li> {{hotel.address}} </li>
    {% if hotel.code %}
    <li> CODE: {{hotel.code}} </li>
    {% endif %}
  </ul>
</li>
{% endfor %}
</ul>

-->

<span class="anchor" id = "roommatedb"></span>

## Find a Roommate!

You can also use the [SIGCSE roommate database](http://sigcse.rit.edu/roommates/) to find someone to room with. This is the preferred database of SIGCSE members around the world for finding roommates at the SIGCSE Technical Symposium. Honest.


<a name="travel"></a>

## Getting to SIGCSE {{site.data.sigcse.year}}

### {{site.data.sigcse.airport.name}} (Airport Code: {{site.data.sigcse.airport.code}})

<div class="row">
  <div class="col-md-12">
<p>
  Our airport is {{site.data.sigcse.airport.name}} (<a href="{{site.data.sigcse.airport.url}}">{{site.data.sigcse.airport.url}}</a>).
</p>
<p>
  The airport's phone number is <a href="tel:{{site.data.sigcse.airport.phone}}">{{site.data.sigcse.airport.phone}}.</a>
</p>

<h3>Ground Transportation</h3>

<p>
There are many options for getting from the airport to the conference, including <a href="http://www.portseattle.org/Sea-Tac/Parking-and-Transportation/Ground-Transportation/Pages/Public-Transit.aspx">light rail</a> ($3), <a href="http://www.portseattle.org/Sea-Tac/Parking-and-Transportation/Ground-Transportation/Pages/Taxis-and-Limos.aspx">taxis</a> (~$40), <a href="http://www.portseattle.org/Sea-Tac/Parking-and-Transportation/Ground-Transportation/Pages/Bus-Shuttle-Courtesy.aspx">shuttles</a> (~$20), and <a href="http://www.portseattle.org/Sea-Tac/Parking-and-Transportation/Ground-Transportation/Pages/tnc.aspx">rideshares</a> (Uber, Lyft, Wingz, etc.) (~$27-40). Light rail typically runs on time and takes 40 minutes.  Driving can take anywhere from 20-45 minutes depending on traffic.
</p>

<h4>Link Light Rail</h4>

<p>
  The least expensive way to get from the airport to the convention center/conference hotels is by light rail.  Trains depart the airport station every 6-15 minutes from 5 a.m. to midnight Monday through Saturday (6 a.m. to 11:19pm on Sundays). Some walking is required: 10-15 minute walk from baggage claim to the airport light rail station, and then 5 minutes (1.5 to 2.5 blocks) from Westlake station to the conference hotels. The <a href="http://m.soundtransit.org/Fares-and-Passes/Link-fares">fare</a> is $3 one way from SeaTac Airport station to Westlake station (the station closest to the convention center and conference hotels) and takes about 40 minutes. 
</p>

<p>
Schedules: <a href="http://m.soundtransit.org/sites/default/files/schedules/link-light-rail-northbound.pdf">Northbound to Downtown/UW</a>, <a href="http://m.soundtransit.org/sites/default/files/schedules/link-light-rail-southbound.pdf">Southbound to SeaTac Airport</a>, <a href="http://m.soundtransit.org/schedules?direction=outbound#40_100479">Interactive Schedule</a>. 
</p>

<p>
<a href="http://www.portseattle.org/Sea-Tac/Maps-and-Directions/Pages/Terminal-to-Link-Light-Rail.aspx">This map</a> and <a href="http://www.portseattle.org/Sea-Tac/Parking-and-Transportation/Ground-Transportation/Pages/Public-Transit.aspx">this video</a> show how to walk from the airport terminal to the light rail station. Follow the signs to “Link Light Rail”. In short, cross from the terminal over to the 4th floor of the parking garage using the skybridges found one level above the baggage claim (one level below check-in). The walkway is covered and well-lit, and is separated from the main area of the garage. <a href="http://www.portseattle.org/Sea-Tac/Passenger-Services/Pages/Accessibility.aspx">Wheelchair service is available</a>. Purchase your ticket from the machines as soon as you enter the light rail station, do this <b>before</b> heading up to the train platform. Return tickets can be purchased at any of the downtown tunnel stations. Hang on to your ticket, as you may be asked to show it to a fare inspector on request (light rail is a proof-of-payment, honor-based system).
</p>

<p>
You may enjoy <a href="http://m.soundtransit.org/sites/default/files/documents/pdf/201404_startonlinkmap.pdf">reading about</a> some of the <a href="http://m.soundtransit.org/Rider-Guide/public-art/guide-art-link-light-rail">art in the light rail stations</a>.
</p>

<p>
<b>To get to the hotels from Westlake light rail station</b>: Exit the train and walk towards the front of the train.  Take the escalator on your right (perpendicular to the train) signed: “5th Ave. & Pine St”. Once at the top of the escalator, head towards Nordstrom and continue following signs for “5th & Pine/Nordstrom” and escalators up until you emerge onto Pine Street, between 5th and 6th Ave. Turn to your left and walk to the corner of Pine and 6th, which puts you <b>1-2 blocks from all four conference hotels</b>. 
</p>

<p>From corner of Pine St. and 6th Ave:</p>
<p>
<li>Sheraton Seattle - cross Pine (towards Eileen Fisher) and walk one block on 6th.  Entrance on 6th.
</li>
<li>The Roosevelt Hotel - cross 6th (towards Pacific Place mall) and walk one block on Pine. Cross Pine to the entrance on corner of Pine and 7th.
</li>
<li>Grand Hyatt Seattle - is immediately across 7th Ave from the Roosevelt. Entrance on 7th and also on Pine.
</li>
<li>Hyatt at Olive 8 - cross 6th (towards Pacific Place mall) and walk two blocks on Pine. Turn left on 8th and walk half a block. Entrance on 8th.
</li>
</p>

<h4>Shuttle Services</h4>
<p>
  <a href="http://www.portseattle.org/Sea-Tac/Parking-and-Transportation/Ground-Transportation/Pages/Bus-Shuttle-Courtesy.aspx">Several companies</a> offer shared van shuttle service for around $20 including <a href="https://shuttleexpress.com/seattle/airport/downtown-airporter/">Shuttle Express Downtown Airporter</a> and <a href="http://www.speedishuttleseattle.com/">Speedi Shuttle</a>.
</p>

<h4>Rideshares</h4>
<p>
  <a href="https://www.lyft.com/cities/seattle">Lyft</a>, <a href="https://www.uber.com/airports/sea-tac/">Uber</a> and <a href="https://www.wingz.me/airport/sea/">Wingz</a> provide services at Sea-Tac Airport.  The <a href="http://www.portseattle.org/Sea-Tac/Parking-and-Transportation/Ground-Transportation/Pages/tnc.aspx">pickup area can be found here</a>. 
</p>

<h4>Note</h4>
<em>Last year, ground transport information was researched by your webmaster, who knew nothing. This year, this information is provided by a colleague with expert, local knowledge. Hooray for local knowledge! Thank you Ruth!</em>

