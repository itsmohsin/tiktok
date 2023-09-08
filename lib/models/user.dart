import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String uid;
  String profilePhoto;
  String name;
  String email;

  User({
    required this.uid,
    required this.profilePhoto,
    required this.name,
    required this.email,
  });

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'profilePhoto': profilePhoto,
        'name': name,
        'email': email,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      uid: snapshot['uid'],
      profilePhoto: snapshot['profilePhoto'],
      name: snapshot['name'],
      email: snapshot['email'],
    );
  }
}
