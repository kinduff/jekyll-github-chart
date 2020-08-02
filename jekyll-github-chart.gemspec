require_relative 'lib/jekyll-github-chart/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-github-chart"
  spec.version       = JekyllGithubChart::VERSION
  spec.authors       = ["kinduff"]
  spec.email         = ["abarcadabra@gmail.com"]

  spec.summary       = %q{Generate an SVG of Github contributions data for Jekyll}
  spec.description   = %q{Uses GithubChart to convert a liquid tag into a Github contribution SVG}
  spec.homepage      = "https://github.com/kinduff/jekyll-github-chart"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kinduff/jekyll-github-chart"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.add_runtime_dependency 'githubchart', '~> 3.1.0'
  spec.add_runtime_dependency 'jekyll'
end
