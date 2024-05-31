# rescript-commander

Rescript bindings for the [Commander javascript library](https://github.com/tj/commander.js)

This is a work in progress, contributions are welcome !

## Installation

Install required packages via `npm`:

```sh
npm install rescript-commander commander
```

Then add `rescript-express` to your `bsconfig.json`'s or `rescript.json`'s' `bs-dependencies`:

```diff
 {
   "bs-dependencies": [
+    "rescript-commander"
   ]
 }
```

## Build

- Build: `npm run res:build`
- Clean: `npm run res:clean`
- Build & watch: `npm run res:dev`
