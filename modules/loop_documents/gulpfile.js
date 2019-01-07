'use strict';

var argv = require('yargs')
    .describe('env', 'Environment to process (dev, test, prod)')
    .default('env', 'prod')
    .help('h')
    .alias('h', 'help')
    .epilog('copyright 2015')
    .argv;
var gulp = require('gulp');

// Plugins.
var sass = require('gulp-sass');
var replace = require('gulp-replace');

var sourcemaps = require('gulp-sourcemaps');
var gulpif = require('gulp-if');

// We only want to process our own non-processed JavaScript files.
var sassPath = ['./**/*.scss', '!node_modules/**'];

var devMode = argv.env == 'dev';

/**
 * Process SCSS using libsass
 */
gulp.task('sass', function () {
  gulp.src(sassPath)
    .pipe(sourcemaps.init())
    .pipe(sass({
      outputStyle: 'nested',
      includePaths: [
        'node_modules/compass-mixins/lib',
        // Zen grids is downloaded as a library using drush make.
        '../../libraries/zen-grids/stylesheets'
      ]
    }).on('error', sass.logError))
    .pipe(gulpif(devMode, sourcemaps.write()))
  // Replace some comments (/*! with /*) to support https://www.drupal.org/project/style_settings.
    .pipe(replace(new RegExp('(/*)!(\\s*(?:setting\|variable):)', 'g'), '$1$2'))
  // Output in same folder as source.
    .pipe(gulp.dest(function (file) {
        return file.base;
    }));
});

/**
 * Watch files for changes and run tasks.
 */
gulp.task('watch', function() {
  gulp.watch(sassPath, [ 'sass' ]);
});

gulp.task('build', [ 'sass']);

gulp.task('default', [ 'build' ]);
