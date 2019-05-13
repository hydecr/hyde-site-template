# Welcome to your Hyde configuration file.
# Here you can set global variables, configure extensions,
# and so much more. For complete documentation on configuring
# your Hyde project see https://hydecr.com/docs/configuring

# Per-page layout changes
page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

# Activate and configure extensions
# NOTE: Extensions need to be added to your shards.yml file
# activate :il8n do |il8n|
#   il8n.path = "/langs/:locale"
#   il8n.mount_as_root = :en
# end

# Environment specific settings
configure :production do
  # activate :sass, { minify: true }
end

configure :development do
  # activate :sass, { minify: false }
end

# Template and helper configuration
configure :build do
  config[:title] = "Welcome to your new Hyde project"

  config[:description] = "This is a block of description text for your site. This will
  be included by default on every page that doesn't set a
  description or turn the description off
  in it's frontmatter."

  config[:base_url] = ""

  config[:url] = ""

  config[:twitter_username] = "hydecr"

  config[:github_username] = "hydecr"
end

# Some ignores.
# The following files are automatically ignored by the build
# process, but were included for reference. You can ignore a single file
ignore "shard.yml"
# or multiple files
ignore ["README.md", "LICENSE.md", "config.cr", ".travis.yml", ".gitignore", ".editorconfig"]

# You can also choose to not ignore a previously ignored
# file or folder by setting the second value to false.
ignore ".gitignore", false
