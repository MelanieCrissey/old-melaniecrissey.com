---
title: "Day Two: Mobile First"
date: 2015-09-25 20:56 UTC
tags: 90DaysofUX
---

If you visited [yesterday's blog post](/blog/default.html) on a mobile device you may have noticed something odd:

<img alt="Pizza Rat Form" style="width: 300px;" src="/img/pizzaRat.jpg">

The 'Order Pizza' button looked awkwardly small. The text wrapped.

Crestfallen, I realized that I broke one of my favorite rules: **design for mobile first.**

Now, I'll acknowledge that 'mobile first' shouldn't be the rule for all sites or web apps. Context matters.

We've recently seen products that were previously mobile-only native apps expand to accomodate users with web app offerings. (Oh hey, [Instagram](http://blog.instagram.com/post/35068144047/announcing-instagram-profiles-on-the-web).) And, there's something very romantic about content designed for a specific widths and heights. (Oh hey, Wes Anderson using [three aspect ratios for Grand Budapest Hotel](http://www.slate.com/blogs/browbeat/2014/03/06/grand_budapest_hotel_aspect_ratios_new_wes_anderson_movie_has_three_different.html).)

This is a simple blog. Until I have analytics data to suggest otherwise, I want to present content assuming that you're on a device with a small screen, and I want to adjust the design if you're reading on a larger screen.

With this in mind, today I updated my CSS media queries to

```
@media only screen and (min-width : 600px)
```

Now the default CSS styles are designed for small screens, and special styles are applied if you're on a viewport that's greater than 600px wide.