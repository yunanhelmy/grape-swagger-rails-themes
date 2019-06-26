require 'generator_spec'
require "generators/grape_swagger_rails_themes/install_generator"

RSpec.describe GrapeSwaggerRailsThemes::InstallGenerator, type: :generator do
  it "successfully run install generator" do
    run_generator
    expect(File).to exist("config/initializers/grape_swagger_rails_themes.rb")
    `rm -rf app`
    `rm -rf config`
  end
end
