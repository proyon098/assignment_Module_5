class Media {
  void play() {
    print('Playing media...');
  }
}

class Song extends Media {
  String artist;

  song(this.artist);

  @override
  void play() {
    print('Playing song by $artist...');
  }
}

void main() {
  Media media = Media();
  media.play();

  song artist = song('Arijit Singh');
  artist.play();
}