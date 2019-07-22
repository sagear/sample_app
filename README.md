# Ruby on Rails Tutorial sample application

This is the sample application for
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](https://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/).

## License

All source code in the [Ruby on Rails Tutorial](https://www.railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see the
[*Ruby on Rails Tutorial* book](https://www.railstutorial.org/book).
Then commit the changes as follows:

$ git commit -am "Improve the README"
You may recall from Section 1.4.4 that we used the Git command git commit -a -m "Message", with flags for “all changes” (-a) and a message (-m). As shown in the second command above, Git also lets us roll the two flags into one using git commit -am "Message".

Since we’ll be using this sample app throughout the rest of the book, it’s a good idea to create a new repository at Bitbucket and push it up:

$ git remote add origin git@bitbucket.org:<username>/sample_app.git
$ git push -u origin --all # pushes up the repo and its refs for the first time