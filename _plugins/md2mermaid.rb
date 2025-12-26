module Jekyll
  class MarkdownListToMermaid < Liquid::Block
    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
      markdown = super
      mermaid = md_list_to_mermaid(markdown)
      
    #   "<div class=\"mermaid\">\n#{mermaid}\n</div>"
    "```mermaid\n#{mermaid}\n```"
    end

    private

    def md_list_to_mermaid(markdown)
      items = []
      node_counter = Hash.new(0)
      
      markdown.lines.each do |line|
        next if line.strip.empty?
        
        indent_level = line[/^\s*/].length / 2
        trimmed = line.strip
        
        if trimmed.start_with?('- ', '* ')
          entry = trimmed[2..-1].strip
          next if entry.empty?
          
          # Generate base ID from first 2 alphabetic characters
          base_id = entry.chars
                         .select { |c| c.match?(/[a-zA-Z]/) }
                         .take(2)
                         .join
                         .upcase
          
          node_counter[base_id] += 1
          count = node_counter[base_id]
          
          node_id = count == 1 ? base_id : "#{base_id}#{count}"
          
          items << {
            text: entry,
            indent_level: indent_level,
            node_id: node_id
          }
        end
      end
      
      graph_lines = []
      parent_stack = []
      
      items.each do |item|
        # Pop parents until we're at the right level
        while parent_stack.length > item[:indent_level]
          parent_stack.pop
        end
        
        # Add node definition
        graph_lines << "    #{item[:node_id]}[#{item[:text]}]"
        
        # Add edge from parent if exists
        if parent = parent_stack.last
          graph_lines << "    #{parent[:node_id]} --> #{item[:node_id]}"
        end
        
        parent_stack.push(item)
      end
      
      result = "graph TD\n\n"
      result += graph_lines.join("\n")
      result += "\n"
      
      result
    end
  end
end

Liquid::Template.register_tag('mermaidlist', Jekyll::MarkdownListToMermaid)