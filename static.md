# Static site generation

There are approximately a bazillion static site generators floating around. This post is what I'd like in a static site generator.

1\. Support for Pandoc. That lets me write in any format I want. I'm not the biggest fan of markdown. I use it because it's what's most supported and it sort of works.

2\. No restrictions on file names. I don't like having to, for instance, include the date in the file name. What if it gets updated? What if I have multiple posts on the same day?

3\. Good theme. That means customization is easy.

4\. Support for equations.

5\. Put the title in the first line of a post, like this: `title: Why dogs eat yellow snow`.

6\. Index creation using the title of each post.

7\. Tag support.

8\. Rebuilding only the new/changed input files or recently changed files.

The remaining question is the ordering of the posts in the index. I *think* the answer is to have a post creation command that puts a timestamp (including seconds) on the second line. Something like this:

```
title:
created: 2020-02-19 21:15:02
```

Maybe even allow the title to be an argument to the call.