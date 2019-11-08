# Welcome to your Hyde configuration file.
# Here you can set global variables, configure extensions,
# and so much more. For complete documentation on configuring
# your Hyde project see https://hydecr.com/docs/configuring

require "hyde"

# Require plugins
require "hyde_blog"
require "hyde_i18n"

# Configuration
# Use these settings to personalize your site. All configruations
# in this file are accessable in your `liquid` templates with the
# `site` prefix. For example `{{ site.title }}`.
Hyde.configure do
  # Default title for your site
  title "Welcome to Hyde"

  # Default description for each page of your site
  description "Welcome to your new Hyde website. You can modify this " +
    "description in 'hyde.cr'"

  # The subpath of your site, e.g. /blog
  base_url "/"

  # The base hostname and protocol of your site, e.g. https://example.com
  url ""

  social {
    facebook: "hydecr",
    twitter: "hydecr",
    github: "hydecr"
  }

  # Set Theme
  # This theme will be fetched from https://github.com/hydecr/hyde-theme-{theme}
  # when running `hyde plugins update`. If you are using a custom theme
  # make sure to comment this out or set it to the git url for the
  # custom theme.
  theme "minima"

  # Register Plugins
  # Hyde plugins are written in Crystal and can modify most aspects of the
  # generation pipeline. Plugins need to be added to 'shard.yml' and
  # installed before being referenced here.
  register_plugin Hyde::Blog do
    permalink "/:date/:title"
  end

  register_plugin Hyde::I18n do
    path "_langs/:locale"
    root :en
  end

  # Some ignores.
  # The following files are automatically ignored by the build
  # process, but were included for reference. Files prefixed
  # with an underscore are automatically ignored.
  # exclude [
  #   "hyde.cr",
  #   "shard.yml",
  #   "README.md",
  #   "LICENSE.md",
  #   ".gitignore",
  #   ".editorconfig",
  #   ".travis.yml",
  #   ".sass-cache/",
  #   ".hyde-cache/",
  #   "lib/",
  #   "node_modules/",
  #   "vendor/"
  # ]

  # Includes
  # You can also include previously ignored files.
  #
  # include [
  #   "README.md"
  # ]
end
