---
title: In the Middle
date: 2014-07-07 05:50 UTC
tags:
---

Confession: I wrote bad code.

I pulled some terribly tacky voo-doo magic to give this site the appearance of a functioning blog. On the back end my posts were a [strategic hot mess](/img/strategichotmess.jpg). I manually hard-coded my posts _twice_ - once on the post's URL and again on the blog index page - to fake looping in content.

My rookie move was uncool and unsustainable. Last night I made a copy of my blog and researched better methods.

And, by _researched_ I mean that I asked [Alan Crissey](https://twitter.com/alancrissey) for his professional opinion. He introduced me to Middleman.

[Middleman](http://middlemanapp.com/) is a Ruby gem / site generator that has a handy extension for [blogging](http://middlemanapp.com/basics/blogging/). Unlike real life middlemen, Middleman is neat, helpful, and saves time. Now I can easily create new posts from the command line, write them in [markdown](http://whatismarkdown.com/), and list recent articles on my blog page.

When I installed Middleman, I broke a few things:

* Without [NavLynx](https://gist.github.com/greypants/3279194), my navigation no longer highlighted the current page. I had to use a differemt helper.  
* Embedded content won't display because markdown doesn't support iframes.

I also improved some things:

* Dropped my obsolete Gallery.
* Simplified stylesheets.
* Gave my About page a makeover.
* Added a favicon. <i class="fa fa-rebel"></i>

Thus far the trickiest thing about using Middleman was figuring out how to deploy to Heroku (more on that later).

Phew! It felt good to get that off my chest. Here's to brighter, better blogging. 

 