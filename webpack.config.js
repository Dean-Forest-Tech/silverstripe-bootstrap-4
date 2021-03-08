const Path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const PATHS = {
  MODULES: Path.resolve('node_modules'), // your node_modules folder name, or full path
  FILES_PATH: '../', // relative path from your css files to your other files, such as images and fonts
  ROOT: Path.resolve(), // the root path, where your webpack.config.js is located.
  SRC: Path.resolve('src'), // the root path, where your webpack.config.js is located.
  SCSS: Path.resolve('src/scss'), // the root path to your source files
  CSS: Path.resolve('css'), // the root path to your source files
  JS: Path.resolve('javascript'), // the root path to your built files
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
            `${PATHS.SCSS}/bundle.scss`
        ],
        editor: [
            `${PATHS.SCSS}/editor.scss`
        ]
    },
    output: {
        path: PATHS.ROOT,
        filename: 'javascript/[name].js',
        publicPath: PATHS.ROOT
    },
    module: {
        rules: [
            {
                test: /\.(sa|sc|c)ss$/,
                use: [
                {
                    loader: MiniCssExtractPlugin.loader,
                    options: {
                        hmr: process.env.NODE_ENV === 'development',
                    },
                },
                'css-loader',
                'sass-loader',
                ]
            },
            {
                test: /\.(png|jpe?g|gif)$/,
                use: [
                    {
                        loader: 'file-loader',
                        options: {
                            outputPath: 'images',
                            publicPath: '../images',
                            name: '[name].[ext]?[hash]'
                        },
                    },
                ]
            },
            {
                test: /\.(woff(2)?|ttf|eot|svg)(\?v=\d+\.\d+\.\d+)?$/,
                use: [
                    {
                        loader: 'file-loader',
                        options: {
                            name: '[name].[ext]',
                            outputPath: 'fonts/',
                            publicPath: '../fonts'
                        }
                    }
            ]   
            }
        ]
    },
    plugins: [
        new MiniCssExtractPlugin(
            {
                path: PATHS.ROOT,
                filename: 'css/[name].css',
                chunkFilename: 'css/[id].css',
            }
        )
    ],
    resolve: {
        // Expose Jquery Globally
        alias: {
            jquery: "jquery/src/jquery"
        }
    }
};
