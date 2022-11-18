const urlSearchParams = new URLSearchParams(window.location.search);
const id = urlSearchParams.get("curp");
document.write(id);
