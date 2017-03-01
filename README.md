# Elmer news

This a clone of [Hacker-news](news.ycombinator.com) written in [Elm]

[![CircleCI](https://circleci.com/gh/ThibautGery/hn-elm/tree/master.svg?style=svg)](https://circleci.com/gh/ThibautGery/hn-elm/tree/master)

## Requirements
 * [nodeJS](https://nodejs.org/en/)
 * [Elm](https://www.npmjs.com/package/elm) : `npm install -g elm`
 * [Elm-test](https://www.npmjs.com/package/elm-test) : `npm install -g elm-test`
 * [Webpack](https://webpack.js.org/): `npm install -g webpack`

## Commands

### Install the dependencies

```bash
npm install
```
### Run the app

```bash
npm run dev
```
Go to [localhost:3000/hn-elm/](http://localhost:3000/hn-elm/)

### Build the application

```bash
npm run build
```

### Run the tests

```bash
npm test
```

### Publish to Github Pages

```bash
node ./publish.js
```


[Elm]: http://elm-lang.org/
