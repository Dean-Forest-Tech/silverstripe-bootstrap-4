module.exports = {
    root: true,
    ignorePatterns: ['dist', 'node_modules'],
    rules: {
      'no-param-reassign': 0,
      'max-len': [
        'error',
        {
          ignoreUrls: true,
          code: 80,
        },
      ],
      'prefer-template': 'off',
      indent: [1, 2],
      'object-curly-spacing': 1,
      'no-multiple-empty-lines': [
        1,
        {
          max: 1,
          maxEOF: 1,
        },
      ],
      'no-var': 1,
      camelcase: 1,
      'no-new-wrappers': 1,
      'no-nested-ternary': 1,
      'no-console': process.env.NODE_ENV === 'production' ? 2 : 0,
      'no-template-curly-in-string': 1,
      'no-self-compare': 1,
      'import/prefer-default-export': 0,
      'func-names': [1, 'as-needed'],
      'arrow-body-style': 1,
      semi: [1, 'never'],
      'import/no-extraneous-dependencies': ['off', { devDependencies: false }],
    },
    env: {
      browser: true,
      es6: true,
      jquery: true
    },
    extends: ['eslint:recommended', 'airbnb-base'],
    globals: {
      Atomics: 'readonly',
      SharedArrayBuffer: 'readonly',
    },
    parserOptions: {
      ecmaVersion: 11,
      sourceType: 'module',
    },
    settings: {
      'import/resolver': {
        webpack: {
          config: './webpack.common.js',
        },
      },
    },
  }