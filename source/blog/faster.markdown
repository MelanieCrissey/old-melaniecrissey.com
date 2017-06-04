---
title: Must Load Faster
date: 2017-06-04 09:00 UTC
tags: 76DaysofCX
---

Warning: strong opinions ahead. 

###If you're not going to do the work to make your website load faster, don't bother monitoring it for performance.

Sure. Set up some basic availability alerts so that you can wake up in the middle of the night when your site goes down. Invest in some load testing, so you'll know your site can handle it when you finally go viral.

But if you're not planning to do something about the perceived speed of you website, why do you care about time to first meaningful paint?

Running performance monitoring to make your website faster is like wearing a FitBit to improve your health: it only works if you choose to take the extra steps.

![data](/img/baseline.jpg)

<sup>Data ain't sh!t if you're not gonna do the work.</sup>

Your baseline doesn't matter if you're not going to try to hold the line or do better. Your industry benchmark doesn't matter if everyone in your industry is comfortable using the same bloated, laggy platform.

Web performance isn't a race. It's not enough to beat the person behind you by a few hairs.

Web performance is an ongoing practice that requires you to compete with the best version of your site. And, every deploy that you _don't_ practice web performance threatens the user experience you're delivering. 

##Web Performance Directly Affects User Experience

The speed and reliability of your website affects user experience. You could design the most beautiful onboarding interaction imaginable, but if it takes more than 4 seconds to load, will anyone even see it?

At a more basic level, the sheer weight of your website - in terms of the data that you require your end-users to consume - passes real life costs along to your end-users. This is especially important if your website serves anyone in the roughly 70% of the rural world that's still operating on a 2G network as their primary mode of internet access.

Even if 83% of your core users are on Desktop on a good network, it's important to consider the opportunity of delivering a fantastically fast experience to the users who aren't.

![FullStory Traffic Stats](/img/FullStoryTraffic.jpg)

<sup>I use <a href="https://fullstory.com/free">FullStory Free</a> so that I can keep an eye on my traffic and robot visitors.</sup>

A fast-loading website can measurably improve experiences in real life.

###Here's a quick story about great mobile #webperf in the wild:

Today I left my house to go meet a friend for coffee. Before I got out of my neighborhood, I encountered an obviously well-loved dog who was roaming along the sidewalk, human-free. Tried as I might, I couldn't coax the sly little puppernugget to jump into my car. And, not wanting to be late for my meeting, I didn't exactly have time to park and put on a chase.

I grabbed my phone, hopped on [Nextdoor.com](https://historicwhitlockavenue.nextdoor.com/news_feed/), logged in, and quickly posted a "Heads up!" alert with the description and location of the pup.

![nextdoor](/img/nextdoor.jpg)

The whole process took about 6 seconds, and I was back en route.

By the time that I landed at the coffee shop, pulled out my laptop, connected to wi-fi, and re-visited the thread, a neighbor had posted to confirm that the little dog was safe. It had hardly wandered out of its own yard.

Even if the sweet little doggo was never in any real danger, the Nextdoor web app did the job it was supposed to do. It allowed me to quickly and conveniently share urgent information with my neighbors.

If the Nextdoor app hadn't loaded quickly from my phone, how would that have affected my experience?

When things feel urgent, speed matters. 

##Web Performance Directly Affects Customer Experience

As end-users, we all benefit when applications load quickly. As businesses that generate revenue online, our bottom lines hinge on it.

Whether you sell ad views or mattresses, fidget spinners or a SaaS app, the customers who visit your web properties expect them to render quickly on mobile and desktop. The difference in [100 ms of load time could mean the difference between selling more product](https://wpostats.com/2015/11/04/walmart-revenue.html) or losing impatient customers to competitors who are only one Google Search away.

##Putting Web Performance into Practice

Now y'all know that I'm 110% bought into the idea that web performance matters. 

Even though my personal blog doesn't generate revenue, I do at least _consider_ the performance of this site. I have some performance limitations due to the way that I host my site on Heroku, and even more limitations due to my personal novice as a developer and the amount of time I'm willing to dedicate to resolving issues. Still, I'm always aiming for a median load time of 2 seconds. Anything I can do to make my site load faster is good.

![waterfall](/img/waterfall.jpg)

As such, every once in a while, I run a [free Rigor Optimization Scan](https://rigor.com/free-performance-report) to check myself.

Today I ran a scan and the results were... not so great.

What gives?

Turns out, I haphazardly deployed a few things that threw off my performance:

* A third-party script called LogRocket added 25 KB of resources without far-future caching,
* A few images - including a favicon file - weren't completely optimized,
* An extra copy of jQuery got included because I installed a gem that I didn't need, and 
* My fun new emoji library included a whopping **474 URLs** of transparent .png files.

![emojis](/img/EmojiLibrary.png)

Yikes.

<i class="em em-anguished"></i>

This, my friends, is where we decide whether or not we want to **do the work**.

Today, I made a decision to optimize a few images and remove some unused scripts. I also made the choice to keep my emoji library until I can find a more performant way to implement it.

It didn't have to be this way. I could have checked myself before I wrecked myself.

##Imagine Knowing That Your Site Could Never Get Slower

With the tools available on the market, I could have tested my web performance in every deploy. If I'd been competing with the best version of my self, I wouldn't have let that unoptimized .png library into production.

Certainly, at some point, I may need to accept some performance impact where the benefits of the service or elements clearly outweigh the costs. Even then, I should have a system in place to ensure that new additions are optimized for the smallest possible impression.

Whether you deploy once a year or a few times a day, it is entirely possible to include web performance practices in your workflow so that you never get slower. If you have a revenue-generating website, this never-get-slower methodology should be a no-brainer. 

##Adopt the Mindset

If you aren't in a position to ensure that your site never gets slower, you can at least adopt a #webperf mindset in your next web project.

Marketers, let's consider how fast our new landing page needs to render before we take it to launch.

Writers, let's commit to optimizing images in every blog post.

Creatives, let's consider the data cost of that auto-play video before pitching the next big ad campaign.

Developers, let's make performance a priority before encouraging others to include our scripts on their sites.

Together, we can make the web a better place. We just need to choose to do the work.


















