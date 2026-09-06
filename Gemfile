source "https://rubygems.org"

# Depend on Jekyll directly rather than the `github-pages` gem, which pins an
# outdated stack (Jekyll 3.x + Ruby Sass) and blocks modern tooling such as the
# Sass module system (@use/@forward). This matches how the theme is consumed by
# resume.totaldebug.uk (Jekyll 4 + Dart Sass via jekyll-remote-theme).
gem "jekyll", "~> 4.4"

# Local preview server for `jekyll serve` on Ruby 3.x (no longer bundled).
gem "webrick"

# Used by the _plugins/mail_obfuscate.rb filter for percent-encoding.
gem "addressable"
