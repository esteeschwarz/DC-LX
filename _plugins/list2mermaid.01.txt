# _plugins/mermaid_from_markdown_list.rb
require 'shellwords'

module Jekyll
  class MermaidListTag < Liquid::Tag
    def initialize(tag_name, input, tokens)
      super
      @input = input.strip
    end

    def render(context)
      # Resolve any Liquid variables in the input (e.g. {{ page.items }})
      list_md = Liquid::Template.parse(@input).render(context)

      # Path to your Rust binary (adjust as needed)
      binary_path = '/Users/guhl/Documents/GitHub/DC-LX/assets/mermaid/mermaid1'

      # Escape the input and build the command
      escaped_input = Shellwords.escape(list_md)
      # In _plugins/mermaid_from_markdown_list.rb, replace the `cmd` and `output` lines:

      # Build the command (without the list as an argument)
      cmd = "#{binary_path}"

      # Run the command with stdin = list_md
      begin
        Open3.popen3(cmd) do |stdin, stdout, _stderr, _wait_thr|
          stdin.puts(list_md)
          stdin.close
          output = stdout.read
        end
        exit_status = $?.exitstatus
      rescue => e
        return "<p>Error running rust_binary: #{e.message}</p>"
      end

    #   cmd = "#{binary_path} #{escaped_input}"

    #   # Run the command and capture stdout
    #   begin
    #     output = `#{cmd}`
    #     exit_status = $?.exitstatus
    #   rescue => e
    #     return "<p>Error running rust_binary: #{e.message}</p>"
    #   end

    #   if exit_status != 0
    #     return "<p>Error: rust_binary exited with status #{exit_status}</p>"
    #   end

    #   # Output as a Mermaid codeblock
    #   "``````"
    end
  end
end

Liquid::Template.register_tag('mermaidlist', Jekyll::MermaidListTag)
