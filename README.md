## The SIGCSE TS Website

The SIGCSE TS website is a statically-rendered site. Nothing on the live site is dynamic (beyond Javascript). 

### Required Tools: *NIX, Jekyll

The SIGCSE TS website is built using Jekyll.

To work on it, the first thing you will need to do is install Jekyll. 

[https://jekyllrb.com/](https://jekyllrb.com/)

On the Mac, I followed the installation instructions on the Jekyll website. 

    gem install jekyll bundler

I also have had success with this Ruby-based software on Linux, and have never tried building this site on Windows. I think many things would fail if you try, and cannot recommend it.

### Developing

To develop the site, I run

    jekyll s

which renders the site on a local test server. You should then be able to connect using your browser:

    http://localhost:4000/

Now, as you edit, you can save your work, Jekyll will automatically render the changes, and you can refresh your browser page to see what you've done.

### Publishing

There used to be a Makefile. It did a lot of things. Then, I got lazy, so I wrote a small bash script. I should probably write a Makefile again. The makefile used to minify pages and do many other things... this site is smaller and simpler than the site from last year, so I haven't worked those things into the build yet. This is a form of laziness, as it introduces platform dependencies and possible points of breakage between machines.

To upload the site to the staging area, I use

    ./_tools/upload.bash staging

To upload to the live site, I use

    ./_tools/upload.bash live

To upload to both, I use

    ./_tools/upload.bash all

It is a good idea to make sure, when publishing live, to make sure to update the staging site as well, so no one wonders why they are out of sync.

The upload should happen via rsync over SSH, so if you have a valid key loaded, there should be no issues.

### Managing the Site Year to Year

These might also be read as "points of gotcha" when working with the current site. Fragility of naming abounds in any rendering framework: beware!

The site itself is a mess of best-guess datastructures in YAML that are rendered, at various points, into content. On one hand, a genuine content management system with the ability to set site-wide variables would allow us to render the entire site year-to-year with minimal fuss. However, we would also need to commit to a more common template/structure, or we would need to have someone in charge of the website who does website design and development really well. That, and we'd have to run a dynamic service, with a full DB, and that would represent a whole additional host of problems.

My recommendation going forward would be that the datastructures be cleaned up, the site format be standardized, and we stop trying to "innovate" the website design year-to-year. We would, I think, do well to have one, consistent look/layout, and leave it---and, in doing so, we could work on improving the *content* of the site year-to-year.

For the future, I would also recommend standardizing how data comes to the webmaster. It usually comes as Word documents, text files, spreadsheets, notes in emails... if we could get Google Sheets for all tabular data, etc., it would make translating these things (eg. lists of APC chairs) into the site a lot easier. Currently, it is an error-prone process where information is often copy-pasted and edited by hand. As computer scientists, we should be able to do better. I do not know what the best way to do this is, as the management for the conference changes every year, and one year is barely enough time to develop standard practices. Hence, this may be too difficult with annual rotations of leadership.

Having all of the dates early in the process, so the site does not have to be rendered piecemeal/incrementally would also be good. This is one of the largest bottlenecks in publishing the site: dates, rates, and other information are not known at the time the site needs to go live, and as a result, the site goes live one piece at a time. If we can't get information up front, then the next webmaster might come up with a better way to do this within the Jekyll framework, so that it is *easy* to render the site one piece at a time. (Boolean flags could be used; I started to do this, and no longer trust their integrity/correctness. Careful attention should be paid in this regard.)

My suspicion is the next webmaster will throw this entire site out, just as I did the site before me. (It was a PHP site that rendered every page on every view, and included things in a way that I found confusing.) I wish the next webmaster luck, and am happy to help (matt at jadud dot com) if you decide to stay with this format. If you throw it out, I also wish you luck, and highly recommend you think about how to get all of the data in a common format so that you can render the site in as straight-forward a manner as possible.

#### Puzzles

Zach B. does a puzzle hunt every year -- or has for the past several years. He has an SSH key in the site, and I usually just create a directory for him, and let him do his thing. The puzzle hunt is not "integrated" into the site design itself.

