import 'song_model.dart';

class Playlist {
  final String id;
  final String title;
  final List<Song> songs;
  final String imageUrl;
  final String userId;

  Playlist({
    required this.id,
    required this.title,
    required this.songs,
    required this.imageUrl,
    required this.userId,
  });

  static List<Playlist> playlists = [];

  static void initializePlaylists(String userId) {
    // Replace this with your logic to fetch playlists for the given user ID
    List<Playlist> userPlaylists = fetchUserPlaylists(userId);

    // Clear the existing playlists and add the fetched playlists
    playlists.clear();
    playlists.addAll(userPlaylists);
  }

  static List<Playlist> fetchUserPlaylists(String userId) {
    // Initialize playlists with initial data
    List<Playlist> allPlaylists = [
      Playlist(
        id: "1",
        title: 'Rap',
        songs: Song.songs,
        imageUrl:
            'https://images.unsplash.com/photo-1600962815726-457c46a12681?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        userId: "9Dcb3JyjnvS4e7SnYQClXouo3Sz2",
      ),
      Playlist(
        id: "2",
        title: 'Rock',
        songs: Song.songs2,
        imageUrl:
            'https://images.unsplash.com/photo-1498038432885-c6f3f1b912ee?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        userId: "9Dcb3JyjnvS4e7SnYQClXouo3Sz2",
      ),
      Playlist(
        id: "3",
        title: 'EDM',
        songs: Song.songs3,
        imageUrl:
            'https://images.unsplash.com/photo-1555086156-e6c7353d283f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        userId: "SG1QwQPiUTg7Kd9MqWZRm3299wy1",
      ),
    ];

    // Filter playlists based on the user ID
    List<Playlist> userPlaylists =
        allPlaylists.where((playlist) => playlist.userId == userId).toList();

    return userPlaylists;
  }
}
