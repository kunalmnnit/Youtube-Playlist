import 'package:youtubeplayerapi/models/video_model.dart';

class Channel {
  final String id;
  final String title;
  final String profilePictureUrl;
  final subscriberCount;
  final String videCount;
  final String uploadPlaylistId;
  List<Video> videos;

  Channel(
      {this.id,
      this.title,
      this.profilePictureUrl,
      this.subscriberCount,
      this.videCount,
      this.uploadPlaylistId});

  factory Channel.fromMap(Map<String, dynamic> map) {
    return Channel(
        id: map['id'],
        title: map['snippet']['title'],
        profilePictureUrl: map['snippet']['thumbnails']['default']['url'],
        subscriberCount: map['statistics']['subscriberCount'],
        videCount: map['statistics']['videoCount'],
        uploadPlaylistId: map['contentDetails']['relatedPlaylists']['uploads']);
  }
}
