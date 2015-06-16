/**
 * Constants
 */
var THEME_NAME = '_blank';
var PUBLIC_PATH = '../../../../public';
var ASSET_PATH = PUBLIC_PATH + '/themes/' + '_blank';

// libraries
var gulp = require('gulp');
var autoprefixer = require('gulp-autoprefixer');
var uglify = require('gulp-uglify');
var uglfiycss = require('gulp-uglifycss');
var concat = require('gulp-concat');
var sass = require('gulp-sass');
var rename = require('gulp-rename');

/**
 * Low-level tasks for script and styles
 */
gulp.task('scripts', function() {
  return gulp.src('scripts/*')
    .pipe(concat('script.js'))
    .pipe(gulp.dest(ASSET_PATH));
});
gulp.task('styles', function() {
  return gulp.src('styles/main.scss')
    .pipe(sass.sync().on('error', sass.logError))
    .pipe(autoprefixer())
    .pipe(rename('style.css'))
    .pipe(gulp.dest(ASSET_PATH));
});

/**
 * Watch all file changes
 */
gulp.task('default', function() {
  gulp.watch('styles/*', ['styles']);
  gulp.watch('scripts/*', ['scripts']);
});

/**
 * Production build
 */
gulp.task('build', ['styles', 'scripts'], function() {
  gulp.src(ASSET_PATH + '/build.js')
  	.pipe(uglify())
    .pipe(rename({ extname: 'min.js' }))
    .pipe(gulp.dest(ASSET_PATH));

  gulp.src(ASSET_PATH + '/build.css')
  	.pipe(uglifycss())
    .pipe(rename({ extname: 'min.css'}))
  	.pipe(gulp.dest(ASSET_PATH))
});
