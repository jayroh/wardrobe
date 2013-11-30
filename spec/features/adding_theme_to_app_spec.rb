require 'spec_helper'

feature 'adding themes to application' do
  scenario 'activates theme defined by the app' do
    Wardrobe.config.active_theme = 'amber_ale'
    theme = FeatureObject::Theme.new('amber_ale')

    expect(theme).to be_first_in_view_path
    expect(theme).to have_javascript_dir_first_in_asset_path
    expect(theme).to have_stylesheets_dir_first_in_asset_path
  end

  scenario 'does not activate extra existing theme' do
    Wardrobe.config.active_theme = 'amber_ale'
    theme = FeatureObject::Theme.new('black_ipa')

    expect(theme).not_to be_in_view_path
    expect(theme.javascript_path).not_to be_in_asset_path
    expect(theme.stylesheet_path).not_to be_in_asset_path
  end

  class FeatureObject::Theme

  end
end
