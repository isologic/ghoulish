require 'modular-scale'
require 'fittext'
require 'autoprefixer-rails'

on_stylesheet_saved do |file|
  css = File.read(file)
  File.open(file, 'w') do |io|
    io << AutoprefixerRails.process(css)
  end
end

http_path = "/"
css_dir = "assets/css"
sass_dir = "assets/sass"
images_dir = "assets/img"
javascript_dir = "assets/js"
line_comments = false
preferred_syntax = :scss
output_style = :expanded
relative_assets = true
