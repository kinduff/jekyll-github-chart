# Jekyll Github Chart

[![Gem Version](https://img.shields.io/gem/v/jekyll-github-chart.svg)](https://rubygems.org/gems/jekyll-github-chart)
[![Gem Downloads](https://img.shields.io/gem/dt/jekyll-github-chart.svg)](https://rubygems.org/gems/jekyll-github-chart)
[![MIT Licensed](https://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

This Jekyll plugin provides a tag that takes a Github user and returns either an image or a raw SVG of the contribution graph.

## Installation

Add this line to your application's Gemfile:

```ruby
group :jekyll_plugins do
  gem 'jekyll_github_chart'
end
```

And then execute:

```shell
$ bundle install
```

Or install it yourself as:

```shell
$ gem install jekyll_github_chart
```

Finally, call the plugin in your `_config.yml` file.

```yaml
plugins:
  - jekyll-github-chart
```

## Usage

You can call the tag with a the defaults like this.

```
{% github_chart username %}
```

This will generate an HTML `img` tag with an SVG encoded as a data URI. For example:

```
<img src='data:image/svg+xml;charset=utf-8,...' class='github-contributions' alt='username Github contributions' />
```

There are 3 color schemes available: `default`, `old`, and `halloween`.

```
{% github_chart username halloween %}
```

Finally, if you don't want an `img` tag, you can pass a format argument to have a raw SVG output.

```
{% github_chart username halloween raw %}
```

## Example
Here's an example using the default parameters.

![Jekyll Github Chart example](https://user-images.githubusercontent.com/1270156/89127628-3df59b80-d4ef-11ea-8554-b4432d843544.png)

## Special thanks
Thanks to [@akerl](https://github.com/akerl) for creating the [githubchart](https://github.com/akerl/githubchart) gem which is the foundation of this plugin.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kinduff/jekyll-github-chart.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
