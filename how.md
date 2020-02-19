# How I Build This Site

This is not a heavily designed site.

## Index Page

The index page is written in raw html. No particular reason, I just want to write html every so often. If html had better link syntax, markdown wouldn't exist. The index is not generate; I add links to each post manually.

## Posts

I type posts (including this one) in markdown format. The markdown is converted to html using Pandoc:

```
pandoc -s $(name).md -o $(name).html --template=template.html --metadata pagetitle='Page of Content'
```

(This is actually an entry in a Makefile, where I pass the parameter `name` to give the name of the file.)

The template file `template.html` is the template used by Pandoc to generate the post. It's as minimalist as possible. The styling is quite minimal. The most important thing is that it sets the max width to 760px. Here's the whole thing, taken from [this site](http://bettermotherfuckingwebsite.com/). My site is actually slightly more minimalist than that one because I've removed one of the CSS declarations. The full template is

```
<head>
<style type="text/css">body{margin:40px
auto;max-width:760px;line-height:1.6;font-size:20px;padding:0
10px}h1,h2,h3{line-height:1.2}</style>
<script type="text/javascript" id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js">
</script>
</head>
<body>
$body$
<br><a href="index.html">&#10004; Return To Index</a>
</body
```

I added the MathJax CDN in case I write something with equations. For plain text sites, those three lines could be removed.

## Netlify

I use Netlify to deploy the site. That means I push the site to Github and it's automatically updated. I find Netlify very easy to work with.

## My Text Editor

I use Textadept to type my posts.