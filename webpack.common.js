const Webpack = require('webpack');
const Path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const ESLintPlugin = require('eslint-webpack-plugin');
const PATHS = {
  MODULES: Path.resolve('node_modules'),
  ROOT: Path.resolve(),
  SRC: Path.resolve('src')
};

module.exports = {
    entry: {
        bundle: [
            `${PATHS.MODULES}/jquery/dist/jquery.js`,
            `${PATHS.MODULES}/popper.js/dist/umd/popper.js`,
            `${PATHS.MODULES}/tether/dist/js/tether.js`,
            `${PATHS.MODULES}/bootstrap/dist/js/bootstrap.js`,
            `${PATHS.MODULES}/imagesloaded/imagesloaded.js`,
            `${PATHS.MODULES}/@fortawesome/fontawesome-free/js/all.js`,
            `${PATHS.SRC}/javascript/script.js`
        ],
        bundlecss: [
            `${PATHS.SRC}/scss/bundle.scss`
        ],
        editor: [
            `${PATHS.SRC}/scss/editor.scss`
        ]
    },
    output: {
        path: PATHS.ROOT,
        filename: 'javascript/[name].js',
        publicPath: PATHS.ROOT
    },
    target: ['web', 'es5'],
    module: {
        rules: [
            {
                test: /\.(sa|sc|c)ss$/,
                use: [
                    MiniCssExtractPlugin.loader,
                    'css-loader',
                    'sass-loader',
                ]
            },
            {
                test: /\.(png|jpe?g|gif)$/,
                type: 'asset/resource',
                generator: {
                    filename: '[name][ext]',
                    publicPath: '../images',
                    outputPath: 'images'
                }
            },
            {
                test: /\.(woff(2)?|ttf|eot|svg)(\?v=\d+\.\d+\.\d+)?$/,
                type: 'asset/resource',
                generator: {
                    filename: '[name][ext]',
                    publicPath: '../fonts',
                    outputPath: 'fonts'
                }
            }
        ]
    },
    plugins: [
        new MiniCssExtractPlugin(
            {
                filename: 'css/[name].css',
                chunkFilename: 'css/[id].css',
            }
        ),
        new ESLintPlugin({
            files: ['src/javascript/*.js'],
        }),
        new Webpack.ProvidePlugin({
            $: 'jquery',
            jQuery: 'jquery',
            'window.jQuery': 'jquery'
        })
    ]
};
