require 'slim'
Slim::Engine.options[:pretty] = true
Slim::Engine.options[:format] = :html5

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

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.remote   = 'origin'
  deploy.branch   = 'gh-pages'
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end

after_configuration do
  bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  import_path File.expand_path(bower_config["directory"], app.root)
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
  activate :minify_css
  activate :minify_javascript

  # Use this for gh-pages
  activate :relative_assets
  set :relative_links, true
end
