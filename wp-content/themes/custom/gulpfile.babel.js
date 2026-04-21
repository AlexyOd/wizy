const fs = require('fs');
const path = require('path');
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

const VENDOR_SCSS_GLOB = 'src/vendor/**/*.scss';
const MAIN_SCSS = path.join(__dirname, 'src', 'scss', 'main.scss');

/** Есть ли хотя бы один .scss под src/vendor (папка может отсутствовать). */
function hasVendorScssFiles() {
  const root = path.join(__dirname, 'src', 'vendor');
  if (!fs.existsSync(root)) {
    return false;
  }
  function walk(dir) {
    const entries = fs.readdirSync(dir, { withFileTypes: true });
    for (const e of entries) {
      const full = path.join(dir, e.name);
      if (e.isDirectory()) {
        if (walk(full)) {
          return true;
        }
      } else if (e.name.endsWith('.scss')) {
        return true;
      }
    }
    return false;
  }
  return walk(root);
}

// Создание экземпляра сервера BrowserSync
const server = browserSync.create();

// Определение задачи для перезагрузки браузера
const reload = function(done) {
  server.reload();
  done();
};

// Определение задачи стилей (если нет main.scss — без ошибки glob)
exports.styles = function(done) {
  if (!fs.existsSync(MAIN_SCSS)) {
    console.warn('[gulp] styles: пропуск — нет файла src/scss/main.scss');
    done();
    return;
  }
  return src(['src/scss/main.scss'])
    .pipe(gulpif(!PRODUCTION, sourcemaps.init()))
    .pipe(sass().on('error', sass.logError))
    .pipe(gulpif(PRODUCTION, postcss([autoprefixer])))
    .pipe(gulpif(PRODUCTION, cleanCss({ compatibility: 'ie8' })))
    .pipe(gulpif(!PRODUCTION, sourcemaps.write()))
    .pipe(dest('dist/css'))
    .pipe(server.stream());
};

// Определение задачи для стилей vendor (только если есть matching .scss)
exports.vendorStyles = function(done) {
  if (!hasVendorScssFiles()) {
    done();
    return;
  }
  return src([VENDOR_SCSS_GLOB])
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
  if (fs.existsSync(path.join(__dirname, 'src', 'scss'))) {
    watch('src/scss/**/*.scss', exports.styles);
  }
  if (fs.existsSync(path.join(__dirname, 'src', 'vendor'))) {
    watch(VENDOR_SCSS_GLOB, exports.vendorStyles);
  }
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
