fetch('https://example.com/script.js')
  .then(response => response.text())
  .then(scriptText => {
    const scriptElement = document.createElement('script');
    scriptElement.textContent = scriptText;
    document.head.appendChild(scriptElement);
  })
  .catch(error => {
    console.error('Error loading script:', error);
  });
