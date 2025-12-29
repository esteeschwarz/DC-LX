function link_cat(cat){ 
      localStorage.setItem('q_catValue', cat);

// document.getElementById("q_cat").innerText = cat;
// document.getElementById("play_cat").innerText = cat;
// document.getElementById("play_cat").textContent = cat;
//       document.getElementById('snc').innerText = "put cat set";
//   localStorage.setItem('q_catValue', cat);

// // play_cat(cat);
//   const val = document.getElementById('q_cat').textContent.trim();
// filter_cats();
  // Example: set from a template variable
//   document.getElementById('current-category').textContent = '{{ category | slugify }}';

  // Example: set from a template variable
//   document.getElementById('current-category').textContent = cat;
}
function put_test(cat){ 
      localStorage.setItem('q_catValue', cat);
// document.getElementById("q_cat").innerText = cat;
document.getElementById("play_cat_h").textContent = cat;
document.getElementById("play_cat").textContent = cat;
    //   document.getElementById("snc").innerHTML = "<p>put test init</p>";
    //   localStorage.setItem('q_catValue', "init storage");
    // document.getElementById('play_tag_div').innerText = cat;
// play_tag("xxx");
}
function put_tag(tag){ 
document.getElementById("q_tag").innerText = tag;
}
function get_cat(){
    // const cat = document.getElementById("q_cat").innerText;
    const cat_a = document.getElementById("q_cat").getAttribute("aria-label");
    // const cat_b = document.getElementById("q_cat").innerText;
    return( document.getElementById("play_cat").textContent);
    // play_cat(cat);
}
function get_tag(){
    const tag = document.getElementById("q_tag").innerText;
    play_tag(tag);
}
function play_cat(cat){
    cat = localStorage.getItem('q_catValue');
    document.getElementById("play_cat").innerText = cat;
    document.getElementById("play_cat").textContent = cat;
    document.getElementById("play_cat").style.display = "inline";
    document.getElementById("snc").innerHTML = "<p>play test init</p>";

}
function play_tag_dep(tag){
         cat = localStorage.getItem('q_catValue');
    // document.getElementById('play_tag_div').innerText = "init tag";

    document.getElementById("play_tag_div").innerText = cat;
    document.getElementById("play_tag_div").textContent = cat;
}

        document.addEventListener('DOMContentLoaded', function() {

  (function () {
    // const catElem = document.getElementById('current-category');
        cat = localStorage.getItem('q_catValue');
    document.getElementById('play_tag_div').innerText = cat;

    // const tagElem = document.getElementById('play_tag_div');
    const catElem = document.getElementById('play_cat');
    const list = document.getElementById('category-posts');
    document.getElementById('apply').innerText = catElem.innerText;

    if (!catElem || !list) return;

    function applyFilter() {
      document.getElementById('apply').innerText = "apply()";
      const raw = (catElem.textContent || '').trim();
      var currentCat = raw.toLowerCase();
      const items = list.querySelectorAll('li');
      const cat = localStorage.getItem('q_catValue');
      document.getElementById('play_cat_h').innerText = cat;
      currentCat = cat.toLowerCase();
      if (!currentCat) {
        // No category: show all

        items.forEach(li => li.style.display = '');
        return;
      }

      items.forEach(li => {
        const cats = (li.dataset.categories || '')
          .split(',')
          .map(s => s.trim().toLowerCase())
          .filter(Boolean);

        li.style.display = cats.includes(currentCat) ? '' : 'none';
      });
    }

    // Initial run
    //   localStorage.setItem('q_catValue', "init storage");

    applyFilter();
    const obs_cat = document.getElementById('play_tag_div');
    // Watch for changes to the hidden div's text
    const observer = new MutationObserver(applyFilter);
    observer.observe(catElem, {
      characterData: true,
      childList: true,
      subtree: true
    });
  })();
        })


//         document.addEventListener('DOMContentLoaded', function() {
// //  const cat = document.getElementById("q_cat").getAttribute("aria-label");
//  const cat = document.getElementById("q_cat").innerText;
//     // play_cat();
// })

            // localStorage.setItem('q_catValue', "snc");

//         document.addEventListener('DOMContentLoaded', function() {
// // put_cat("avl");
//             // filter_cats();
//                   document.getElementById('snc').textContent = "dom loaded";

//         })
//   (function filter_cats () {
//     // document.getElementById("q_cat").textContent = "hard-qcat";
//       document.getElementById('snc').textContent = "startsnc";

//   const val = localStorage.getItem('q_catValue');
//   if (val) {
//     document.getElementById('play_cat').textContent = val;
//   }

//     // const catElem = document.getElementById('current-category');
//     const catElem = document.getElementById('play_cat');
//     const list = document.getElementById('category-posts');
//     if (!catElem || !list) return;

//     function applyFilter() {
//     //   const raw = (catElem.textContent || '').trim();
//     //   const raw = (catElem.innerText || '').trim();
//         const list = document.getElementById('category-posts');

//       const raw = localStorage.getItem('q_catValue');
//       document.getElementById('snc').textContent = "apply filter()";

//       if (!raw){
//         raw = "snc";
//         document.getElementById("play_tag").innerText = "cat not set";
//       }
//       const currentCat = raw.toLowerCase();
//       const items = list.querySelectorAll('li');

//       if (!currentCat) {
//         // No category: show all
//         items.forEach(li => li.style.display = '');
//         return;
//       }

//       items.forEach(li => {
//         const cats = (li.dataset.categories || '')
//         // const cats = (li.dataset.c
//           .split(',')
//           .map(s => s.trim().toLowerCase())
//           .filter(Boolean);

//         li.style.display = cats.includes(currentCat) ? '' : 'none';
//       });
//     }

//     // Initial run
//     applyFilter();
  
//     // Watch for changes to the hidden div's text
//     const observer = new MutationObserver(applyFilter);
//     observer.observe(catElem, {
//       characterData: true,
//       childList: true,
//       subtree: true
//     });
// });

