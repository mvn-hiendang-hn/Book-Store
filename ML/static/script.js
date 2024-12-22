function predict() {
    const price = document.getElementById('price').value;
    const genre = document.getElementById('genre').value;
    const popularity = document.getElementById('popularity').value;

    fetch('/predict', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ "Price": price, "Genre": genre, "Popularity": popularity })
    })
    .then(response => response.json())
    .then(data => {
        document.getElementById('output').textContent = JSON.stringify(data, null, 2);
    });
}
