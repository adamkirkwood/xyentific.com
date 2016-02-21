require 'slim'
Slim::Engine.options[:pretty] = true
Slim::Engine.options[:format] = :html

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
page "/work/*", layout: "work"

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
activate :directory_indexes
activate :sprockets

sprockets.append_path File.join "#{root}", "bower_components"

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 9']
  config.ignore   = []
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.remote   = 'origin'
  deploy.branch   = 'gh-pages'
  deploy.build_before = true
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # activate :minify_css
  # activate :minify_javascript

  # Use this for gh-pages
  activate :relative_assets
  set :relative_links, true

  ignore 'bower_components/**/*'
  ignore 'node_modules/**/*'
end
