require 'open-uri'
require 'rails/generators'

module GrapeSwaggerRailsThemes
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)

    def copy_initializer
      template "grape_swagger_rails_themes.rb", "config/initializers/grape_swagger_rails_themes.rb"
    end

    def install_dependencies
      run 'yarn add swagger-ui-themes'
    end

    def copy_grape_swagger_rails_templates
      download = open('https://raw.githubusercontent.com/ruby-grape/grape-swagger-rails/master/app/views/grape_swagger_rails/application/index.html.erb')
      create_file "app/views/grape_swagger_rails/application/index.html.erb", download.read
      insert_into_file "app/views/grape_swagger_rails/application/index.html.erb", '<%= stylesheet_link_tag "swagger-ui-themes/themes/#{GrapeSwaggerRails.options.theme_version}/theme-#{::GrapeSwaggerRails.options.theme}.css" %>', after: "<%= stylesheet_link_tag 'grape_swagger_rails/application.css' %>"

      insert_into_file "config/initializers/assets.rb", "\nRails.application.config.assets.precompile += %w( swagger-ui-themes/themes/2.x/*.css swagger-ui-themes/themes/3.x/*.css )", after: "Rails.application.config.assets.paths << Rails.root.join('node_modules')"
    end
    

  end
end