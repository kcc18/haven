class Song {
  final String title;
  final String artist;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.artist,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'Dear Mama',
      artist: 'Tupac',
      url: 'assets/music/dearmama.mp3',
      coverUrl: 'assets/images/dearmama.jpg',
    ),
    Song(
      title: 'Big Poppa',
      artist: 'Notorious B.I.G.',
      url: 'assets/music/bigpoppa.mp3',
      coverUrl: 'assets/images/biggie_biggie.jpg',
    ),
    Song(
      title: 'All About You',
      artist: 'Tupac',
      url: 'assets/music/allaboutyou.mp3',
      coverUrl: 'assets/images/tupac_two.jpg',
    )
  ];

  static List<Song> songs2 = [
    Song(
      title: 'Always on my Mind',
      artist: 'Elvis',
      url: 'assets/music/alwaysonmymind.mp3',
      coverUrl: 'assets/images/elvis.jpg',
    ),
    Song(
      title: 'Tell me now',
      artist: 'RR 1',
      url: 'assets/music/illusions.mp3',
      coverUrl: 'assets/images/illusions.jpg',
    ),
    Song(
      title: 'Reverence',
      artist: 'John Hoking',
      url: 'assets/music/pray.mp3',
      coverUrl: 'assets/images/pray.jpg',
    )
  ];

  static List<Song> songs3 = [
    Song(
      title: 'I Remmember',
      artist: 'Kaskade',
      url: 'assets/music/remmember.mp3',
      coverUrl: 'assets/images/kaskade.jpg',
    ),
    Song(
      title: 'Desperations',
      artist: 'Two Twelve',
      url: 'assets/music/illusions.mp3',
      coverUrl: 'assets/images/illusions.jpg',
    ),
    Song(
      title: 'Take me to church',
      artist: 'Bedge',
      url: 'assets/music/pray.mp3',
      coverUrl: 'assets/images/pray.jpg',
    )
  ];
}
