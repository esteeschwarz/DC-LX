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
