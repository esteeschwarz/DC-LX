# _plugins/code_block_enhancer.rb
# Add language labels and copy buttons to Rouge code blocks

Jekyll::Hooks.register [:documents, :pages], :post_render do |doc|
  # Match the actual Jekyll/Rouge structure: <div class="language-X highlighter-rouge">
  doc.output = doc.output.gsub(/<div class="language-(\w+)\s+highlighter-rouge">/) do |match|
    language = $1
    
    # Build the header HTML
    header = <<~HTML
      <div class="code-block-wrapper">
      <div class="code-header" >
        <span class="code-language" >#{language}</span>
        <button class="copy-btn" aria-label="Copy code" title="Copy code"><i class="far fa-clipboard"></i></button>
      </div>
    HTML
    
    "#{header}#{match}"
  end
  
  # Close the wrapper div after the code block
  doc.output = doc.output.gsub(/(<div class="code-block-wrapper">.*?<div class="language-\w+\s+highlighter-rouge">.*?<\/div><\/div>)/m) do |match|
    "#{match}</div>"
  end
  
  # Adjust the inner <div class="highlight"> to have no top border radius
  doc.output = doc.output.gsub(/(<div class="code-header"[^>]*>.*?<\/div>\s*<div class="language-\w+\s+highlighter-rouge">\s*<div class="highlight">)/m) do |match|
    match.gsub(/<div class="highlight">/, '<div class="highlight" style="margin-top: 0;">')
  end
  
  # Adjust <pre> styling to connect with header
  doc.output = doc.output.gsub(/(<div class="code-header"[^>]*>.*?<\/div>\s*<div class="language-\w+\s+highlighter-rouge">\s*<div class="highlight"[^>]*>\s*<pre)/m) do |match|
    match.gsub(/<pre/, '<pre style="margin-top: 0; border-top-left-radius: 0; border-top-right-radius: 0;"')
  end
end

# Add the copy functionality script once at the end of the body
Jekyll::Hooks.register :site, :post_render do |site|
  site.pages.each do |page|
    if page.output =~ /<\/body>/
      copy_script = <<~SCRIPT
        <script>
        document.addEventListener('DOMContentLoaded', function() {
          document.querySelectorAll('.copy-btn').forEach(function(btn) {
            btn.onclick = function() {
              const header = this.closest('.code-header');
              const wrapper = header.closest('.code-block-wrapper');
              const codeBlock = wrapper.querySelector('code');
              const text = codeBlock.innerText || codeBlock.textContent;
              
              navigator.clipboard.writeText(text).then(function() {
                const icon = btn.querySelector('i');
                icon.className = 'fas fa-check';
                btn.style.background = '#2ea043';
                btn.setAttribute('aria-label', 'Copied!');
                btn.setAttribute('title', 'Copied!');
                
                setTimeout(function() {
                  icon.className = 'far fa-clipboard';
                  btn.style.background = '#444';
                  btn.setAttribute('aria-label', 'Copy code');
                  btn.setAttribute('title', 'Copy code');
                }, 2000);
              }).catch(function(err) {
                console.error('Failed to copy:', err);
                const icon = btn.querySelector('i');
                icon.className = 'fas fa-times';
                btn.style.background = '#dc3545';
                setTimeout(function() {
                  icon.className = 'far fa-clipboard';
                  btn.style.background = '#444';
                }, 1500);
              });
            };
          });
        });
        </script>
      SCRIPT
      
      page.output = page.output.sub(/<\/body>/, "#{copy_script}</body>")
    end
  end
  
  # Also handle documents (posts, etc.)
  site.documents.each do |doc|
    if doc.output =~ /<\/body>/
      copy_script = <<~SCRIPT
        <script>
        document.addEventListener('DOMContentLoaded', function() {
          document.querySelectorAll('.copy-btn').forEach(function(btn) {
            btn.onclick = function() {
              const header = this.closest('.code-header');
              const wrapper = header.closest('.code-block-wrapper');
              const codeBlock = wrapper.querySelector('code');
              const text = codeBlock.innerText || codeBlock.textContent;
              
              navigator.clipboard.writeText(text).then(function() {
                const icon = btn.querySelector('i');
                icon.className = 'fas fa-check';
                btn.style.background = '#2ea043';
                btn.setAttribute('aria-label', 'Copied!');
                btn.setAttribute('title', 'Copied!');
                
                setTimeout(function() {
                  icon.className = 'far fa-clipboard';
                  btn.style.background = '#444';
                  btn.setAttribute('aria-label', 'Copy code');
                  btn.setAttribute('title', 'Copy code');
                }, 2000);
              }).catch(function(err) {
                console.error('Failed to copy:', err);
                const icon = btn.querySelector('i');
                icon.className = 'fas fa-times';
                btn.style.background = '#dc3545';
                setTimeout(function() {
                  icon.className = 'far fa-clipboard';
                  btn.style.background = '#444';
                }, 1500);
              });
            };
          });
        });
        </script>
      SCRIPT
      
      doc.output = doc.output.sub(/<\/body>/, "#{copy_script}</body>")
    end
  end
end