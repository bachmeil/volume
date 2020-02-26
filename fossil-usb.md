# Using Fossil With a USB Drive

Although Fossil is a great solution for many things, there is one disadvantage relative to Git. There's no Github, Gitlab, or Bitbucket. Even smaller players like sr.ht and SourceForge are primarily for Git. It's really simple to set up Fossil as a CGI app *if you already have a CGI server like Apache running*, but that one "if" is a problem for a lot of people. I already have CGI server using Apache, so it doesn't really affect me, but that's not true for everyone.

There is [Chisel](http://chiselapp.com/), but that's not exactly a perfect replacement for Github. Want to find a public repo? Here's [a list of all public repos](http://chiselapp.com/repositories/). By clicking randomly, you'll see that some of those projects haven't been updated in ten years. I'm not going to be critical of a free service, but I'm not going to trust it with my private repos if they don't even use https and they're using a version of Fossil that's four years behind the last stable release.

This is a quick guide to using a USB drive as your "cloud". I know, it's not the same. It's nonetheless *very secure* and *requires no setup*. The only real security weakness is losing your USB disk. In that case, you are indeed in trouble. On the other hand, eliminating the internet from the chain greatly simplifies a lot of things. It's just simpler to work with files on your hard drive than it is to deal with the network and keeping things in sync.

Starting at the very beginning, you need to create a new Fossil repo. If you want to use the default styling, assuming Fossil is installed, enter the repo directory and run:

```
fossil new repo1.fossil
```

If you already had a Fossil repo elsewhere on your computer and you wanted to use it as a template for this one, you'd add the `--fossil` option:

```
fossil new --template /path/to/repo repo1.fossil
```

Open the repo:

```
fossil open repo1.fossil
```

You can then add files to the repo or view the web interface using `fossil ui`. Suppose you create a document called `file.txt` holding some text. Tell Fossil to track it and then commit it to your repo:

```
fossil add file.txt
fossil commit -m "Added a new file"
```

Now open your USB disk in the terminal and clone it:

```
fossil clone /path/to/repo1.fossil repo1.fossil
fossil open repo1.fossil
```

You now have a fully backed up repo that you can carry with you anywhere you want. Suppose you add more files to the repo as you did with `file.txt`. When you're ready to pull the new content on to your USB drive, do

```
fossil pull /path/to/repo1.fossil
```

or, in most cases, you can just do

```
fossil pull
```

If you plan to work on the files on your USB, you'll need to commit your changes and then instead of pulling, do

```
fossil sync
```

That's pretty much all there is to it. This workflow works well, it requires no setup, there are no security issues, and since it doesn't require you to use the network, it works particularly well if you have large files.