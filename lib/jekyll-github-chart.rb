require "jekyll"
require "githubchart"
require "jekyll-github-chart/version"

module Jekyll
  module JekyllGithubChart
    class JekyllGithubChartTag < Liquid::Tag
      def initialize(tag_name, text, tokens)
        super
        opts    = text.split(' ').map(&:strip)
        @user   = opts[0]
        @scheme = opts[1] || 'default' # old, halloween
        @format = opts[2] || 'image'   # raw
      end

      def render(context)
        raw_svg = GithubChart.new({ user: @user, colors: @scheme.to_sym }).render(:svg)

        return raw_svg if @format == 'raw'

        content_type = 'image/svg+xml'
        encoding = 'charset=utf-8'
        data = CGI::escape(raw_svg).gsub('+', '%20')

        "<img src='data:#{content_type};#{encoding},#{data}' class='github-contributions' alt='#{@user} Github contributions' />"
      end

      Liquid::Template.register_tag('github_chart', self)
    end
  end
end