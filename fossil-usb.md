# Using Fossil With a USB Drive

Although Fossil is a great solution for many things, there is one disadvantage relative to Git. There's no Github, Gitlab, or Bitbucket. Even smaller players like sr.ht and SourceForge are primarily for Git. It's really simple to set up Fossil as a CGI app *if you already have a CGI server like Apache running*, but that one "if" is a problem for a lot of people. I already have CGI server using Apache, so it doesn't really affect me, but that's not true for everyone.

There is [Chisel](http://chiselapp.com/), but that's not exactly a perfect replacement for Github. Want to find a public repo? Here's [a list of all public repos](http://chiselapp.com/repositories/). By clicking randomly, you'll see that some of those projects haven't been updated in ten years. I'm not going to be critical of a free service, but I'm not going to trust it with my private repos if they don't even use https and they're using a version of Fossil that's four years behind the last stable release.

This is a quick guide to using a USB drive as your "cloud". I know, it's not the same. It's nonetheless *very secure* and *requires no setup*. The only real security weakness is losing your USB disk. In that case, you are indeed in trouble. On the other hand, eliminating the internet from the chain greatly simplifies a lot of things. It's just simpler to work with files on your hard drive than it is to deal with the network and keeping things in sync.

## Creating a repo

Starting at the very beginning, you need to create a new Fossil repo. I'm going to assume you're able to install Fossil.

Open the repo directory in the terminal (or PowerShell if you're on Windows) and run:

```
fossil new repo1.fossil
```

That will create a new repo using the default styling and default settings that come with Fossil. The default styling isn't necessarily pretty, so you might want to copy your CSS customizations from an existing repo. Or maybe you have other custom settings that you prefer to the defaults. In that case, you can add the `--template` option:

```
fossil new --template /path/to/existing/repo repo1.fossil
```

Whichever of the above commands you ran, you need to open the repo in order to use it:

```
fossil open repo1.fossil
```

You now have a new repo that's ready for use. I'll add that since you did all of this locally, you didn't have to mess around with passwords as you would with Github, for instance. You can avoid dealing with passwords by using SSH, but that requires some knowledge to get set up. Alternatively, you could use git to create a new repo on your hard drive directly, but all you have is a bare git repo. There's no web gui with a bug tracker, wiki, etc. that you get out of the box with Fossil. To access the web GUI, run this command from the repo directory:

```
fossil ui
```

## Adding files to the repo

At this point, all you have is a bare repo, so it's time to add some files. Suppose you create a document called `file.txt` that holds some random text. Tell Fossil to track it and then commit it to your repo:

```
fossil add file.txt
fossil commit -m "Added a new file"
```

The next step isn't necessary, but it's useful. Open the web GUI:

```
fossil ui
```

A tab in your default browser should open up to the homepage of your repo. Click on the "Files" tab at the top. You should see `file.txt` (plus any other files you've added to your repo). As far as version control is concerned, there's nothing more you need to do. With each commit to the repo, any changes to `file.txt` will be recorded. The downside is that everything is saved only on the hard drive of your computer. If the hard drive quits working, or if your house burns down, you lose the entire repo. Neither is likely to happen, but it's 2020 and we know enough to back up our data, and we do our work on more than one computer.

The dead simple approach is to use a USB drive for backups and portability. It's also the case that when you're working with large files, avoiding transferring files over the network and cloud storage limitations/expenses can be nice.

## Cloning to the USB drive

Open your USB disk in the terminal (or PowerShell) and clone your repo:

```
fossil clone /path/to/repo1.fossil repo1.fossil
fossil open repo1.fossil
```

That's it. You now have a fully backed up repo holding all your files plus tickets, wiki pages, etc. that you can carry with you anywhere you want.

## Keeping things in sync

Over time, you'll modify your existing files and add new files to the repo. To pull those changes to the USB drive:

```
fossil pull /path/to/repo1.fossil
```

You can usually get away with omitting the repo location:

```
fossil pull
```

If you plan to work on the files while they're on your USB drive, as would be the case if you create the repo on your work computer but want to edit some of the files in the evening on your home computer, you'll need to commit your changes and then instead of pulling, do the following when you get back to your work computer:

```
fossil sync
```
