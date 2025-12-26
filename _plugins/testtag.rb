# _plugins/test_tag.rb
module Jekyll
  class TestTag < Liquid::Tag
    def render(_context)
      "<p>Test tag works!</p>"
    end
  end
end

Liquid::Template.register_tag('test_tag', Jekyll::TestTag)
