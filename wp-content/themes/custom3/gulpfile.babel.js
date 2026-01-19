const { src, dest, watch, series, parallel } = require('gulp');
const yargs = require('yargs');
const sass = require('gulp-sass')(require('sass')); // Set the Sass compiler explicitly
const cleanCss = require('gulp-clean-css');
const gulpif = require('gulp-if');
const postcss = require('gulp-postcss');
const sourcemaps = require('gulp-sourcemaps');
const autoprefixer = require('autoprefixer');
const imagemin = require('gulp-imagemin');
const webpack = require('webpack-stream');
const named = require('vinyl-named');
const browserSync = require('browser-sync');

const PRODUCTION = yargs.argv.prod;

// Создание экземпляра сервера BrowserSync
const server = browserSync.create();

// Определение задачи для перезагрузки браузера
const reload = function(done) {
  server.reload();
  done();
};

// Определение задачи стилей
exports.styles = function() {
  return src(['src/scss/main.scss'])
    .pipe(gulpif(!PRODUCTION, sourcemaps.init()))
    .pipe(sass().on('error', sass.logError))
    .pipe(gulpif(PRODUCTION, postcss([autoprefixer])))
    .pipe(gulpif(PRODUCTION, cleanCss({ compatibility: 'ie8' })))
    .pipe(gulpif(!PRODUCTION, sourcemaps.write()))
    .pipe(dest('dist/css'))
    .pipe(server.stream());
};

// Определение задачи для стилей vendor
exports.vendorStyles = function() {
  return src(['src/vendor/**/*.scss'])  // Adjust the source path as needed
    .pipe(gulpif(!PRODUCTION, sourcemaps.init()))
    .pipe(sass().on('error', sass.logError))
    .pipe(gulpif(PRODUCTION, postcss([autoprefixer])))
    .pipe(gulpif(PRODUCTION, cleanCss({ compatibility: 'ie8' })))
    .pipe(gulpif(!PRODUCTION, sourcemaps.write()))
    .pipe(dest('dist/css'))
    .pipe(server.stream());
};

// Определение задачи для обработки изображений
exports.images = function() {
  return src('src/img/**/*.{jpg,jpeg,png,svg,gif}')
    .pipe(gulpif(PRODUCTION, imagemin()))
    .pipe(dest('dist/img'));
};

// Определение задачи отслеживания изменений
exports.watchForChanges = function() {
  watch('src/scss/**/*.scss', exports.styles);
  watch('src/vendor/**/*.scss', exports.vendorStyles);  // Watch for vendor styles changes
  watch('src/images/**/*.{jpg,jpeg,png,svg,gif}', series(exports.images, reload));
  watch('src/js/**/*.js', series(exports.scripts, reload));
  watch("**/*.php", reload);
};

// Определение задачи сборки скриптов
exports.scripts = function() {
  return src('src/js/common.js')
    .pipe(named())
    .pipe(webpack({
      module: {
        rules: [
          {
            test: /\.js$/,
            use: {
              loader: 'babel-loader',
              options: {
                presets: ['@babel/preset-env']
              }
            }
          }
        ]
      },
      mode: PRODUCTION ? 'production' : 'development',
      devtool: !PRODUCTION ? 'inline-source-map' : false,
      output: {
        filename: '[name].js'
      },
    }))
    .pipe(dest('dist/js'));
};

// Определение задачи для запуска локального сервера
exports.serve = function(done) {
  server.init({
    proxy: "http://agro"
  });
  done();
};

// Определение задачи разработки
exports.dev = series(parallel(exports.styles, exports.vendorStyles, exports.images, exports.scripts), exports.serve, exports.watchForChanges);

// Определение задачи сборки проекта
exports.build = series(parallel(exports.styles, exports.vendorStyles, exports.images, exports.scripts));

// Экспорт задачи разработки как задачи по умолчанию
exports.default = exports.dev;
