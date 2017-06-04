###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

page "feed.xml", :layout => false

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  # activate :livereload
end

# Methods defined in the helpers block are available in templates
helpers do
  def is_page_active(page)
    current_page.url == page ? "selected" : ''
  end
end

# Activate Sprockets
# activate :sprockets

# ---------------------------
# Assets
# ---------------------------

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 9']
end

# ---------------------------
# Blog
# ---------------------------

activate :blog do |blog|
  blog.name = "blog"
  blog.sources = "blog/:title"
  blog.layout = "blog_layout"
  blog.permalink = "blog/:title"
end

# page "/blog.html", :layout => "blog.html"

# ---------------------------
# Init
# ---------------------------

activate :directory_indexes

# ---------------------------
# Build
# ---------------------------

configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  #activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

# ---------------------------
# Deploy
# ---------------------------

activate :deploy do |deploy|
  deploy.method = :git
  # Optional Settings
  deploy.remote   = "git@heroku.com:melanie-crissey.git" # remote name or git url, default: origin
  deploy.branch   = "master" # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  deploy.commit_message = "GO HEROKU!!!"      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end
