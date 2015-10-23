---
title: "Day Fourteen: Barrettes"
date: 2015-10-22 11:00 UTC
tags: 90DaysofUX
---

Have you *heard* of [Elizabeth Heard barrettes](http://elizabethheard.com/)? (See what I did there?)

Elizabeth works with [Factory Girls](http://www.factorygirlsatl.com/), a fashion incubator operating out of [Strongbox West](http://www.strongboxwest.com/), and she also happens to make super-adorable hair bows and barrettes for grown women.

![grown women](/img/grownwoman.gif)

<sub>I'm a *grown* woman. I can do *whatever* I want.</sub>

Tonight Tech Talent South gathered up a group of about 20 skilled web developers, designers, and UXers for a hack night to help Elizabeth update some items on her website. Here's the catch: it's a Squarespace site.

The room immediately starts twittering...

> "Wait - is there even version control?"

> "How do we find the code for this template?"

> "Who will manage the credentials?"

> "Can we all be logged into Squarespace at once?"

Legitimate questions, all.

Here's what I learned about Squarespace tonight:

**Lots of things are conveniently built in**; you just need to know where to look.

For example, we wanted to add some social media icons to the footer on Elizabeth's homepage. While I was busy fumbling around in the page editor trying to figure out how to inject some Font Awesome icons and hyperlink them, a woman on my team kindly pulled up [the documentation](https://support.squarespace.com/hc/en-us/articles/205814598-Displaying-social-icons) for enabling social media icons on Squarespace sites. Apparently Elizabeth had them set to 'hidden' and making them appear in the footer was as simple as flipping a switch in the settings.

![show icon](/img/showicon.jpg)

**It's super easy to apply styles with custom CSS.**

Once I enabled the social media icons I wanted to make them grey by default and pink when we hover over them. I went to **Design > Custom CSS** and easily inserted some styles to make this happen. I also found a way to set these colors in the UI under **Design > Style Editor**, but there is no option there to set a color for the icon on hover.

![css](/img/designCSS.png){:half}

![style editor](/img/styleEditor.png){:half}

**It's NOT super easy to replace the default social icons with images.**

For example, if I want to customize the social media icons to be fancy hand-drawn icons instead of the defaults, I might need to either use a CSS background image or hide the default social media icons and build my own using the page editor.

![fumbly](/img/fumbly.gif)

<sub>This is me trying to find how to edit the source code for the social icons.</sub>

**It's NOT super easy to position images inline with text on a page.**

Elizabeth had a sweet idea to replace a sub-header 'Snail Mail' with an image of a snail inline with the word 'mail.' We couldn't figure out how to insert the image inline with the text. My friend Sam ended up creating an image in Photoshop to combine the image with the text, which isn't a best practice for web design or development. Once we had the image we needed to do math to estimate the width and height of our image so that the text looks like 20.8 px font. Then we ran into some issues with resolution.

![snail](/img/snail.png)
<sub>This is what we get when we add the snail image to the page content.</sub>

![snail mail](/img/snail-mail.png)
<sub>And, here's our hodgepodge png to position the snail inline with the text.</sub>

Squarespace excites me because it gives owners like Elizabeth the power to manage gorgeous websites to support their businesses. Squarespace also scares me because the limitations built into the editor to protect us from errors inspire us to do great - terrible! yes, but great - things to bring our dream designs to life.