interface Details {
    author: string;
    year: number;
}

interface AudioPlayer {
    audioVolume: number;
    songDuration: number;
    song: string;
    details: Details;
}

const audioPlayer: AudioPlayer = {
    audioVolume: 90,
    songDuration: 36,
    song: "Mess",
    details: {
        author: "Ed Sheeran",
        year: 2015
    }
}

const song = "New song";
const {
    song: anotherSong, 
    songDuration: duration, 
    // details: {
    //    author: author, 
    //    year: year
    // }
    details
} = audioPlayer;
const {author: anotherauthor} = details;

// console.log('Song: ', song);
// console.log('Song: ', anotherSong);
// console.log('Duration: ', duration);
// console.log('Author: ', anotherauthor);
// console.log('Year: ', year);

const [, , p3 = 'Not found']: string[] = ['Goku', 'Vegeta'];
// const trunk = dbz[3] || 'Personaje no encontrado';
console.error('Personaje 3:', p3)


export {};