1. Filename : prettier.config.js

```js
const options = {
  arrowParent: "avoid",
  singleQuote: true,
  bracketSpacing: true,
  endOfLine: "lf",
  semi: false,
  tabWidth: 2,
  trailingComma: "none",
};

module.exports = options;
```

2. Filename jsconfig.json

```js
{
  "compilerOptions": {
    "module": "commonjs",
    "target": "es6",
    "checkJs": false
  },
  "exclude": [
    "node_modules"
  ]
}
```
