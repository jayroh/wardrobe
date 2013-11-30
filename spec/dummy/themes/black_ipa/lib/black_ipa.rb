require "black_ipa/version"

module BlackIpa
  class Engine < ::Rails::Engine
    config.assets.paths << BlackIpa::Engine.root.join('vendor', 'assets', 'stylesheets')
    config.assets.paths << BlackIpa::Engine.root.join('vendor', 'assets', 'javascripts')
    config.assets.precompile += ['black_ipa.css', 'black_ipa.js']
  end
end
