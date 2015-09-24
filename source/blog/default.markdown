---
title: "Day One: Writing Form Fields"
date: 2015-09-24 13:21 UTC
tags: 90daysofux
---

Today is my first day of #90DaysofUX. Today I want to practice writing effective form labels.

Let's imagine that we want to order a pizza from a fictional pizza joint.

<form id="pizzaForm">
<p style="font-size: 1.5em;">Welcome to PizzaRat.com </p>
<p>Please select a pizza size.</p>
<select name="pizzaSize">
  <option value="16">Default pizza</option>
  <option value="6">Personal Pan: 6" (Round)</option>
  <option value="10">Small: 10" (Round)</option>
  <option value="13">Medium: 13" (Round)</option>
  <option value="16">Large: 16" (Round)</option>
  <option value="18">Extra-Large: 18" (Round)</option>
  <option value="48">Extra-Large: 48" x 6" (Rectangular)</option>
  <option value="custom">Custom pizza</option>
</select>

<div id="shape" style="display:none;">
<p>Please select a pizza shape.</p>
<select name="pizzaShape">
  <option value="round">Round</option>
  <option value="rect">Rectangular</option>
</select>
</div>

<div id="round" style="display:none;">
<p>Please specify a diameter for your round pizza.</p>
  <label for="diameter" class="inline">Diameter</label>
  <input type="text" class="inline" name="diameter">
  <p class="inline units">in</p>
</div>
<div id="rect" style="display:none;">
<p>Please specify a width and height for your rectangular pizza.</p>
  <label for="width" class="inline">Width</label>
  <input type="text" class="inline" name="width">
  <p class="inline units">in</p>
  <p class="inline multiplier">x</p>
  <label for="height" class="inline">Height</label>
  <input type="text" class="inline" name="height">
  <p class="inline units">in</p>
</div>
<div type="submit" id="submit">
<p>Order Pizza</p>
</div>
<div type="submit" id="post-submit" style="display:none;">
<p>Success</p>
</div>
<div id="formThanks" style="display: none;">
<p>Thank you for ordering from PizzaRat.com!</p>
</div>
</form>

This isn't a great form. There are lots of ways we could make this form better. We could:

* Make the submit button actually submit some data
* Hide or disable form fields after submit
* Use the 'thank you' message to confirm the order details
* Add validation for fields
* Improve the look and feel of the form
* Improve the placement for conditional fields

and we could keep iterating on technology and design until we make a practically perfect pizza order form.

There's at least one basic problem with this form that could immediately disrupt user experience that isn't related to how it works, looks, or behaves. It's a poorly written form label.

What is a **default pizza**?

Is that default based on what's popular? Is it default based on what I ordered last time?

If I'm in a hurry or unsure what to order from PizzaRat.com, I might stick with the default pizza and hit submit, not knowing at all what I'll receive, because this form option label doesn't tell me the shape or size of the default pizza.

<br/>
<br/>

##Applying this concept in real life

The PizzaRat form is a silly example. It was inspired by a real life scenario I encountered yesterday.

Someone wrote in to ask me, "What is the Default desktop?"

![defaultBrowser](/img/defaultDesktop.png)

To which I thought, "Hmm. I'm not sure. And, we should make this better."

