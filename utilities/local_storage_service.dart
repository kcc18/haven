import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static const String _keyPlaylists = 'playlists';

  Future<void> savePlaylists(List<Map<String, dynamic>> playlists) async {
    final prefs = await SharedPreferences.getInstance();
    final encodedPlaylists = json.encode(playlists);
    await prefs.setString(_keyPlaylists, encodedPlaylists);
  }

  Future<List<Map<String, dynamic>>> getPlaylists() async {
    final prefs = await SharedPreferences.getInstance();
    final encodedPlaylists = prefs.getString(_keyPlaylists);
    if (encodedPlaylists != null) {
      return List<Map<String, dynamic>>.from(json.decode(encodedPlaylists));
    }
    return [];
  }
}
