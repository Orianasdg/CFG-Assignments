// Array to store the list of songs - each song will be an object with "title", "artist", and "rating"
let songs = [];

// This function creates a song object, and adds it to the "song" array, then calls "renderSongs" to update the display
function addSong(title, artist, rating) {
    const song = {
        title: title,
        artist: artist,
        rating: rating
    };
    songs.push(song); // Add the new song to the array
    renderSongs(); // Update the display of songs
}

// Function to display the list of songs
function renderSongs() {
    const songList = document.getElementById('songsList');
    songList.innerHTML = '';
    for (let i = 0; i < songs.length; i++) { // Loop through the songs array
        const songItem = document.createElement('li'); // Set the inner HTML of the list item, including a span for the song details and a button to remove the song
        songItem.innerHTML = `<span>${songs[i].title} by ${songs[i].artist} - Rating: ${songs[i].rating}</span>`;
        songList.appendChild(songItem); // Add the list item to the ul
    }
}


// Function to remove a song from the list
function removeSong(index) {
    songs.splice(index, 1); // Remove the song at the specified index from the array
    renderSongs(); // Update the display of songs
}

// This adds an event to the "add Song" button", triggering the function to add a song when clicked
document.getElementById('addSongBtn').addEventListener('click', function() {
    const title = document.getElementById('songTitle').value;
    const artist = document.getElementById('artist').value;
    const rating = document.getElementById('rating').value;

    // Check if all input fields are filled
    if (title === '' || artist === '' || rating === '') {
        alert('Please fill in all fields'); // Alert the user if any field is empty
        return;
    }

    addSong(title, artist, rating); // Add the song to the list

    console.log(`Added: ${title} by ${artist} - Rating: ${rating}`); // Log the added song details to the console

    // Clear input fields
    document.getElementById('songTitle').value = '';
    document.getElementById('artist').value = '';
    document.getElementById('rating').value = '';
});


// I wanted to have a "remove" button 
function renderSongs() {
    const songList = document.getElementById('songsList');
    songList.innerHTML = '';
    for (let i = 0; i < songs.length; i++) {
        const songItem = document.createElement('li');
        songItem.innerHTML = `
            <span>${songs[i].title} by ${songs[i].artist} - Rating: ${songs[i].rating}</span>
            <button onclick="removeSong(${i})">Remove</button>
        `;
        songList.appendChild(songItem);
    }
}

