require "smt_rails/version"
require "smt_rails/config"

module SmtRails
  extend Config

  autoload(:Tilt, 'smt_rails/tilt')

  if defined?(Rails)
    require 'smt_rails/engine'
  else
    require 'sprockets'
    Senv.register_mime_type Tilt.default_mime_type extensions: [".#{SmtRails.template_extension}"]
  end
end

# init action view handler
require "smt_rails/mustache"