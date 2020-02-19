# Using Fossil as an information repository

I'm a big fan of the [Fossil](https://fossil-scm.org/home/doc/trunk/www/index.wiki) system for version control. One of the many nice things is its usefulness as an information repository. I've used it that way for a while, but over time I've come to use it quite a lot. (This is not surprising. It's nice to have all your information in one place. Once you get a certain amount of information into Fossil, it becomes your go-to tool for storing things.)

You can set up a Fossil repo on a CGI server. You then have your own personal cloud notes storage. Something you might not realize immediately is that Fossil has good search built into it, and you can restrict your search to just the wiki if you want. Create a new wiki page for each major topic. For instance, you might have the following:

- C++ programming
- Statistics
- Machine learning
- Cool links
- Home repair
- Finances

Every time you have a piece of information you want to save, edit that wiki page. You can do it right from your browser if you want. At the top, add the new information. To make it easy to search, you can add tags. I use tags of the form `tag_foo`. I'd prefer Twitter style hashtags, like `#foo`, but I don't know how to specify `#` as a search character. It's ignored if you type `#foo` into the search box, so it treats the search the same as just `foo`. There's probably a way to fix that; I've never dug into it.

After a while your wiki file might be getting large. In that case, create a new wiki page with `2` appended at the end, then `3`, and so on. For your finances, the first page is titled `finances`, the second `finances2`, the third `finances3`, and so on. There's no disadvantage to creating extra pages other than on the index page that gets generated (you'll have a ton of pages listed), but it's not exactly fun to work your way through a 20,000 line file even if you know that file contains your search term.

Eight to ten wiki pages is the sweet spot for me at this point. Maybe that will change as I accumulate more notes.

Another thing to keep in mind is that it's really easy to add a new repo, so maybe you want different repos for work and home, or for different types of work, or whatever. The problem is that your notes are then scattered across multiple places, and you can't search multiple repo wikis, so you'd have to be sure the information held in the different repos really is independent.

Here's what's really nice. You might decide you want a more sophisticated and reliable notes system. You want a database and good backups. A Fossil repo *is* an SQL database (SQLite to be specific) and it *is* easy to back it up with a simple pull operation. You get all that for free. Once I realized that, it felt good putting my notes into Fossil, because it was hard to think of a better information repository. Easy entry, good search, the reliability and peace of mind of a distributed version control system. It's hard to see how you can do better than that.

{Let's see how well this is working in five years. One rule of thumb is that it takes 500 pages of letter-sized paper for one MB of storage. 100 MB is 50,000 pages. This post is under 4k of text. The full, uncompressed FreeBSD Handbook is only 3.5 MB. In order to get to 100 MB of data - something SQLite can handle very easily - I'd have to write the equivalent of thirty FreeBSD Handbooks! That would be a hell of a lot of notes. My goals are: 20 pages of notes, then 50, then 100. At that point, I'll be at about 200K of data. I can't imagine this being a problem for *any* single person's notes collection.}