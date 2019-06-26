# Swagger UI themes for gem Grape Swagger Rails

GrapeSwaggerRailsThemes is a gem to change theme of [Grape Swagger UI for Rails](https://github.com/ruby-grape/grape-swagger-rails). This gem is based on [Swagger UI themes repository](https://github.com/ostranme/swagger-ui-themes) and have 7 available themes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'grape-swagger-rails-themes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grape-swagger-rails-themes

## Usage

You could execute generator :

    $ rails g grape_swagger_rails_themes:install

Yay! You have custom themes now. You could choose 1 from 7 available themes in `config/initializers/grape_swagger_rails_themes.rb`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. 

## Release

To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

You could use [gem release](https://github.com/svenfuchs/gem-release). 
1. Install gem release using command `gem install gem-release`. 
2. Update version using command `gem bump minor --file lib/grape_swagger_rails_themes/themes/version.rb -m your_message`
3. Build gem using command `gem build grape-swagger-rails-themes.gemspec`
4. Release gem using command `gem release`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yunanhelmy/grape-swagger-rails-themes. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GrapeSwaggerRailsThemes project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/yunanhelmy/grape-swagger-rails-themes/blob/master/CODE_OF_CONDUCT.md).
