require "amber_ale/version"

module AmberAle
  class Engine < ::Rails::Engine
    config.assets.paths << AmberAle::Engine.root.join('vendor', 'assets', 'stylesheets')
    config.assets.paths << AmberAle::Engine.root.join('vendor', 'assets', 'javascripts')
    config.assets.precompile += ['amber_ale.css', 'amber_ale.js']
  end
end
