gulp = require 'gulp'
browserSync = require 'browser-sync'
reload = browserSync.reload

# ================================= Task

gulp.task 'serve', ->
  browserSync.init {
    server: {
      baseDir: './'
    }
  }

  gulp.watch('./*.html').on 'change', browserSync.reload

gulp.task 'default', ['serve']