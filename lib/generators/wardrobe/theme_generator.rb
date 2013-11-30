module Wardrobe
  module Generators
    class ThemeGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)

      def copy_base_theme_files
        directory 'base_theme', "themes/#{file_name}"
      end

      def gem_instructions
        puts <<-EOSTR.strip_heredoc

        To add this theme to your application place the following in your Gemfile:

              gem '#{file_name}', path: './themes/#{file_name}'

        EOSTR
      end
    end
  end
end
