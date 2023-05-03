function downloadPDF(url) {
  fetch(url)
    .then(response => response.blob())
    .then(blob => {
      const url = window.URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = 'file.pdf';
      document.body.appendChild(a);
      a.click();
      a.remove();
    })
    .catch(error => console.error(error));
}
