function loadRemoteMarkdown(targetId, url) {
  fetch(url)
    .then(r => r.text())
    .then(md => {
      if (typeof marked !== 'undefined') {
        document.getElementById(targetId).innerHTML = marked.parse(md);
      } else {
        document.getElementById(targetId).textContent = md;
      }
    })
    .catch(err => console.error('Error loading remote markdown:', err));
}
