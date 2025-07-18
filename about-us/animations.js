const images = document.querySelectorAll('.fade-in');

const observer = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('animate');
      observer.unobserve(entry.target); // ❗ Ensure it runs only once
    }
  });
}, {
  threshold: 0.1
});

images.forEach(img => {
  observer.observe(img);
});
