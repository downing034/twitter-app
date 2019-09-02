# This app is designed to be a twitter clone

## Getting Started

To get started with the app, clone the repo and then install the needed gems with bundler:

```
$ bundle install --without production
```

Next, migrate the database so tables are properly created:
```
$ rails db:migrate
```

Finally, give the test suite a run to verify everything is up and running as expected:
```
$ rails test
```

If the suite passes, you should successfully be able to run the app in a local server:
```
$ rails s
```
