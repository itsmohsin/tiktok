import 'package:cloud_firestore/cloud_firestore.dart';

class Video {
  String username;
  String uid;
  String id;
  List likes;
  int shareCount;
  int commentCount;
  String songName;
  String caption;
  String videoUrl;
  String thumbnail;
  String profilePhoto;

  Video({
    required this.username,
    required this.uid,
    required this.id,
    required this.likes,
    required this.shareCount,
    required this.commentCount,
    required this.songName,
    required this.caption,
    required this.videoUrl,
    required this.thumbnail,
    required this.profilePhoto,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "id": id,
        "likes": likes,
        "shareCount": shareCount,
        "commentCount": commentCount,
        "songName": songName,
        "caption": caption,
        "videoUr": videoUrl,
        "thumbnail": thumbnail,
        "profilePhoto": profilePhoto,
      };

  static Video fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Video(
      username: snapshot['username'],
      uid: snapshot['uid'],
      id: snapshot['id'],
      likes: snapshot['likes'],
      shareCount: snapshot['shareCount'],
      commentCount: snapshot['commentCount'],
      songName: snapshot['songName'],
      caption: snapshot['caption'],
      videoUrl: snapshot['videoUrl'],
      thumbnail: snapshot['thumbnail'],
      profilePhoto: snapshot['profilePhoto'],
    );
  }
}
