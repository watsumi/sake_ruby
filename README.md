# SakeRuby
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sake_ruby'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install sake_ruby

## Usage

```ruby
# all
SakeRuby.all
=> [{:roman=>"junmaishu", :tokuteimeisho=>"純米酒", :raw_materials=>"米、米こうじ", :seimaibuai=>""}, {:roman=>"honjozoshu", :tokuteimeisho=>"本醸造酒", :raw_materials=>"米、米こうじ、醸造アルコール", :seimaibuai=>"70%以下"}, {:roman=>"daiginjoshu", :tokuteimeisho=>"大吟醸酒", :raw_materials=>"米、米こうじ、醸造アルコール", :seimaibuai=>"50%以下"}, {:roman=>"ginjoshu", :tokuteimeisho=>"吟醸酒", :raw_materials=>"米、米こうじ、醸造アルコール", :seimaibuai=>"60%以下"}, {:roman=>"tokubetsujunmaishu", :tokuteimeisho=>"特別純米酒", :raw_materials=>"米、米こうじ", :seimaibuai=>"60%以下又は特別な製造方法（要説明表示）"}, {:roman=>"tokubetsuhonjozoshu", :tokuteimeisho=>"特別本醸造酒", :raw_materials=>"米、米こうじ、醸造アルコール", :seimaibuai=>"60%以下又は特別な製造方法（要説明表示）"}, {:roman=>"junmaidaiginjoshu", :tokuteimeisho=>"純米大吟醸酒", :raw_materials=>"米、米こうじ", :seimaibuai=>"50%以下"}, {:roman=>"junmaiginjoshu", :tokuteimeisho=>"純米吟醸酒", :raw_materials=>"米、米こうじ", :seimaibuai=>"60%以下"}]

# select_random
SakeRuby.select_random
=> {:roman=>"ginjoshu", :tokuteimeisho=>"吟醸酒", :raw_materials=>"米、米こうじ、醸造アルコール", :seimaibuai=>"60%以下"}

# find_by_tokuteimeisho
SakeRuby.find_by_tokuteimeisho("純米大吟醸酒")
=> [{:roman=>"junmaidaiginjoshu", :tokuteimeisho=>"純米大吟醸酒", :raw_materials=>"米、米こうじ", :seimaibuai=>"50%以下"}]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sake_ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/sake_ruby/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SakeRuby project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/sake_ruby/blob/master/CODE_OF_CONDUCT.md).
