# How I Build This Site

This is not a heavily designed site.

## Index Page

The index page is written in raw html. No particular reason, I just want to write html every so often. If html had better link syntax, markdown wouldn't exist. The index is not generate; I add links to each post manually.

## Posts

I type posts (including this one) in markdown format. The markdown is converted to html using Pandoc:

```
pandoc -s $(name).md -o $(name).html --template=template.html --mathjax --metadata pagetitle='Page of Content'
```

(This is an entry in a Makefile, where I pass the parameter `name` to identify the file.)

The template file `template.html` is the template used by Pandoc to generate the post. It's as minimalist as possible. The most important thing, in the widescreen era, is that it sets the max width to 760px. I honestly don't understand why browsers default to fullscreen display. No sane person would think that makes sense.

Here's the entire template file, with most of the CSS borrowed from [this site](http://bettermotherfuckingwebsite.com/). My site is actually slightly more minimalist than that one because I removed the CSS declaration that changed the font color, which made it harder to read. The full template is

```
<head>
<style type="text/css">body{margin:40px
auto;max-width:760px;line-height:1.6;font-size:20px;padding:0
10px;font-family:sans}h1,h2,h3{line-height:1.2}</style>
<script type="text/javascript" id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js">
</script>
</head>
<body>
$body$
<br><a href="index.html">&#10004; Return To Index</a>
</body
```

I added the MathJax CDN in case I write something with equations. For posts with no equations, you can reduce that further while still having a readable site:

```
<head>
<style type="text/css">body{margin:40px
auto;max-width:760px;line-height:1.6;font-size:20px;padding:0
10px;font-family:sans}h1,h2,h3{line-height:1.2}</style>
</head>
<body>
$body$
<br><a href="index.html">&#10004; Return To Index</a>
</body
```

The call to Pandoc becomes

```
pandoc -s $(name).md -o $(name).html --template=template.html --metadata pagetitle='Page of Content'
```

## Netlify

I use Netlify to deploy the site. It's linked to a private repo on Github. The site is automatically updated on every push to the server. There's a minor amount of work to do to set up Netlify, but once it's done it's an absolute dream because you never have to think about it again. Just push to Git and go do something else.

## Version Control

Although I'm a big fan of Fossil, I have a private repo on Github so I can let Netlify do the deployment for me. I never have to think about *any* of the details related to deployment.

## My Text Editor

I use Textadept to type my posts.