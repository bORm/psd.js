gulp        = require 'gulp'
concat      = require 'gulp-concat'
browserify  = require 'gulp-browserify'

gulp.task 'coffee', ()->
    gulp.src ['./coffee/script.coffee'], read: false
    .pipe browserify(
        transform : [
            'coffeeify'
        ]
        extensions: ['.coffee']
    )
    .pipe concat 'script.js'
    .pipe gulp.dest './js'

gulp.task 'default', [
    'coffee'
]