---
title: My Favorite Little Hack Sharing CX Optimization Ideas
date: 2018-02-17 01:00 UTC
tags: code, hacks, communication, design
---

Optimizing a customer experience isn't always about building a new and beautiful feature from scratch. Sometimes, it means sweating the details and looking for ways to improve existing features that already exist. 

Little things like tweaking some [microcopy](https://uxplanet.org/microcopy-tiny-words-with-a-huge-ux-impact-90140acc6e42) or giving more visual prominence to a specific call to action can drive measurable improvements to conversion rates and product adoption.

And, if you're not the person who has the power and authority to design or develop those tweaks yourself, you're going to need a way to communicate your ideas for changes in a way that will let you:

* Clearly present your proposal in context, and
* Gather reactions and feedback quickly

Some changes are small enough that you can say, 

_"Hey—I wonder what would happen if we made that button that links to the plan pricing calculator read 'View plan options' instead of 'Subscribe'?"_ 

(Spoiler alert: WAY more people are going to click it!)

But, what if it's more than a couple of words worth of a change? Should you write all your specs down in a feature brief? Start sketching a wireframe? Book a meeting with a designer to help you flesh out your idea?

Those are all great ways to start! But, they might require some time and people wrangling, too.

What if you want to get your idea out there _fast_? 

Here's where my favorite little hack comes in: design your idea in the browser.

## How to Use Your Browser's Dev Tools to Hack Together Your Idea

### First, decide what you want to change.

For the purposes of this example, let's imagine that we're using FullStory to understand how people interact with our Knowledge Base at [help.fullstory.com](https://help.fullstory.com/). Maybe we've learned that users who visit the FullStory Cookbook are more likely to unlock value in FullStory faster, but our [Click Maps](https://www.fullstory.com/features/click-maps/) report shows us that most people never visit the Cookbook from our Knowledge Base's homepage.

![KB Click Maps](/img/KBclickMaps.png)

<sub>Wow! The Cookbook is the _eleventh_ most clicked thing on the page.</sub>

At this point, you might want to propose an experiment: could we move the Cookbook container further up the page and tweak the copy to make it more clear what the Cookbook is? What might that look like?

### Control + Click > Inspect Element.

![Step One](/img/Step1InspectElement.png)

With help.fullstory.com open in Google Chrome on a MacBook, you can hit **control + click** on your keyboard and then select **'Inspect Element'** to get at the source code behind the page. 

(Note: if you're on a PC, it'll probably be more like right-click > 'Inspect Element.' )

This is where the magic starts.

### Edit as HTML

Poke around in the source code (HTML) until you've found the div or container for the part of the page that you want to move.

![Step Two](/img/Step2EditasHTML.png)

In the HTML, while you're hovering right over the part of the page that you want to move (it should be highlighted in your browser view), control + click again and select **'Edit as HTML'** to open the little window where you can access the raw source code for just that div. 

Copy all of it. Keep it on your clipboard.

![Step Three](/img/step3copyHTMLforDiv.png)

Then, scroll up through the HTML for the page until you find the div or container where you'd like to move your content. 

In this case, let's say we want to position the Cookbook modal in the div with the class "wrapper," right above the div that has all of the little guides in columns.

Control + click to 'Edit as HTML' again and paste your source code in the container.

![Step Four](/img/step4moveHTML.png)

Click away to any other part of the source code in the dev tools editor to effectively save the change. 

![Step Five](/img/step5TinkerWithCSS.png)

Once you've got the container moved into the correct hierarchy on the page, you may notice that some of the styling is a little bit off. From here, click to highlight the code that you've moved and then head over to the Styles editor to add some CSS rules.

Click right under **"element.style"** and write some inline CSS that will apply only to the element you've moved.

Don't worry too much about making sure the CSS rules are the right ones; just use trial and error until you've got something that looks like what you see in your head.

![Step Six](/img/Step6ReviewHack.png)

Looky there! Now you've got a quick and dirty mock up of what the Cookbook modal would look like if we moved it further up the page.

### Keep Tinkering

Now that the modal is in the right position, you can edit the HTML again to update the copy (words) inside the container. 

![Step 7](/img/step7EditCopy.png)

Keep repeating the process of editing and tinkering until you've made all of the changes that you want to propose.

![Step 8](/img/finalHack.png)

### Screenshot It!

Once you've got the page in your browser looking good enough to communicate the spirit of your idea, **snap a screenshot** (shift + command + 4, drag crosshairs, let go). Now you have a cheap mock up that you can share with other people. 

If you need to be extra clear, you may want to open the screenshot in Preview (or Google Slides or Canva or whatever you prefer!) and **annotate it** with some descriptions of what you've moved:

![Step 9](/img/finalHackWithAnnotations.png)

Someone might look at this mock and think, "Hmmm. Actually, I'm not loving the way that this looks..." or "That string of text looks long. Let me help you come up with something shorter and snappier..." 

The most important thing is that now you have something visual that represents the change you imagine might work. It's something concrete that helps you get the idea out of your head and in front of other people so you can generate reactions and more ideas. 

### A Few Warnings About This Hack

Code in the browser can be fragile, and if it at any time you let the page reload, the HTML and CSS will reset, and you'll lose all your work. For this reason, I recommend only using this hack for visualizing small changes. 

Also, the whole purpose of this hack is to make something _fast._ If you find that you're spending more than 30 minutes trying to get an idea to "look right," it might be worth booking a meeting with a designer or switching to a different process to document your idea.

---

I developed this hacky little habit out of necessity at my first tech support job. 

We had an in-app wizard that I thought was out of whack. I wanted to submit some ideas to my UX team, and I knew that a bunch of written specifications in a JIRA ticket weren't gonna cut it. At the time, I imagined that a _real_ designer would probably use something like Photoshop to mock up their ideas, but I couldn't afford a license and I failed at convincing my COO that I needed a seat in the company Creative Cloud account. So, I started with 'Inspect Element' and put together an imperfect but effective visual artifact that helped spring open a conversation with the right folks.

All this to say—if you have the skills, tools, time, or resources to create more perfect prototypes, absolutely do that! But, if you have an idea for a product or feature improvement that you want to share quickly, don't let a lack of access hold you back. Inspect Element and get crackin'.