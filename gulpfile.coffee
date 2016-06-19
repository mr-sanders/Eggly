gulp = require 'gulp'
browsersync = require 'browser-sync'

gulp.task 'serve', ->
	browsersync.init
		directory: true
		server: true
		baseDir: "/"

gulp.task 'watch', ->
	gulp.watch ['*.html', 'app/*.js'], browsersync.reload

gulp.task 'default', ['serve','watch']