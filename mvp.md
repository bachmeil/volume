# The Minimal Viable Program

The late Joe Armstrong once wrote [a great blog post](https://joearms.github.io/index.html#2014-06-25%20Minimal%20Viable%20Programs) titled "Minimal Viable Programs". The post starts

> A minimal viable program is the smallest program that solves a particular problem. It is small and beautiful. It has no additional features.
> 
> If you removed a single feature it would be totally useless. If you added a new feature that feature would not be essential, you could use the program without making use of the new feature.

I love MVPs. He describes their ticket system. Creating a new ticket meant you had a text file containing

```
ticket: 23
responsible:joe@erix
status:open
title: ?
----
Describe your problem here
```

To list all open tickets, you'd call a shell script that greps for 'status:open':

```
#!/bin/sh
grep 'status:open' ${HOME}/tickets/* | wc
```

A lot of programmers think it's an atrocity to do something like this. They'd even say that's not a real program. I think that's backwards. Not only is this a *real program*, it's *real programming*. Lots of people can type into a file until they have code that passes certain tests. That's sufficient to say you have a program. (And a lot of programmers don't do much in the way of testing, so all that matters is that they're satisfied.)

Good programming means you provide the minimum required functionality while minimizing the complexity of your program. The least complex code is the code that's not written, so as much as possible, you should try to *avoid writing code*.

Something that leads to tremendous complexity today is the user interface/user experience. The goal is to provide something that looks good, that requires no thought and no typing. There's nothing wrong with that if that's what you're after. If you want to get your work done, a less complex solution is better. Going back to the ticketing system, what if you wanted a way to classify tickets by client? If you had a GUI solution involving a database server, you'd need to change the schema, you'd have to write a bunch of additional code to capture the client name, to edit the ticket in case you misspelled something, and to output reports in the browser or app. Does that make you more productive? Not at all. You have to remember how to use the GUI, and in terms of getting your work done, a script to search for a particular client and write the results to the screen is as easy and clean as you're going to get.

Additionally, if it's easy to customize, we'll do more customizing to get exactly what we want. With an MVP, customization is trivial. Maybe you add one line to grep something using a particular regular expression. *When it's that easy, you'll actively seek things to customize.* You'll be really darn productive. When you're working with a behemoth, you're willing to put up with a lot of pain in order to avoid changing anything.

Always strive to write MVPs for your own use. It's amazing what happens when you free yourself to focus on functionality rather than style, when you write for your use case rather than something that can scale to 50,000 times what you need. This is the strength of the Unix world. I plan to do more MVP programming as time passes.