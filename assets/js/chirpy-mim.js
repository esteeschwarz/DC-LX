
    // Copy-to-clipboard behavior similar to Chirpy's header button
    document.querySelectorAll('.code-header').forEach(function (block) {
      var btn = block.querySelector('.copy-btn');
      var labelSpan = btn.querySelector('.copy-label');

      btn.addEventListener('click', function () {
        var codeElement = block.querySelector('pre code');
        var text = codeElement.innerText.replace(/\n\s+$/g, '\n');
        navigator.clipboard.writeText(text).then(function () {
          var original = labelSpan.textContent;
          labelSpan.textContent = 'Copied';
          btn.classList.add('copied');
          setTimeout(function () {
            labelSpan.textContent = original;
            btn.classList.remove('copied');
          }, 2000);
        });
      });
    });

    // Simple theme toggle using data-mode like Chirpy
    // document.getElementById('toggle-theme').addEventListener('click', function () {
    //   var html = document.documentElement;
    //   var mode = html.getAttribute('data-mode');
    //   html.setAttribute('data-mode', mode === 'dark' ? 'light' : 'dark');
    // });

    // Optional: set the visible language label from data-lang, like Chirpy's language-alias include
    document.querySelectorAll('.code-block').forEach(function (block) {
      var lang = block.getAttribute('data-lang');
      if (!lang) return;
      var span = block.querySelector('.code-lang');
      if (span) span.textContent = lang.toUpperCase();
    });
  