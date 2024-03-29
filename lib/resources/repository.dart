import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_me_up/ui/user.dart';
import 'package:flutter_me_up/resources/firebase_provider.dart';

class Repository {


  final _firebaseProvider = FirebaseProvider();

  Future<void> addDataToDb(FirebaseUser user) => _firebaseProvider.addDataToDb(user);
  
  Future<FirebaseUser> signIn() => _firebaseProvider.signIn();
  
  Future<bool> authenticateUser(FirebaseUser user) => _firebaseProvider.authenticateUser(user);

  Future<FirebaseUser> getCurrentUser() => _firebaseProvider.getCurrentUser();

  Future <void> deletePost(DocumentSnapshot data, User user) => _firebaseProvider.deletePost(data, user);

  Future<void> signOut() => _firebaseProvider.signOut();



  Future<User> retrieveUserDetails(FirebaseUser user) => _firebaseProvider.retrieveUserDetails(user);

  Future<List<DocumentSnapshot>> retrieveUserPosts(String userId) => _firebaseProvider.retrieveUserPosts(userId);

  Future<List<DocumentSnapshot>> fetchPostComments(DocumentReference reference) => _firebaseProvider.fetchPostCommentDetails(reference);

  Future<List<DocumentSnapshot>> fetchPostLikes(DocumentReference reference) => _firebaseProvider.fetchPostLikeDetails(reference);

  Future<bool> checkIfUserLikedOrNot(String userId, DocumentReference reference) => _firebaseProvider.checkIfUserLikedOrNot(userId, reference);

   Future<List<DocumentSnapshot>> retrievePosts(FirebaseUser user) => _firebaseProvider.retrievePosts(user);

  Future<List<String>> fetchAllUserNames(FirebaseUser user) => _firebaseProvider.fetchAllUserNames(user);

  Future<String> fetchUidBySearchedName(String name) => _firebaseProvider.fetchUidBySearchedName(name);

  Future<User> fetchUserDetailsById(String uid) => _firebaseProvider.fetchUserDetailsById(uid);

  Future<void> followUser({String currentUserId, String followingUserId}) => _firebaseProvider.followUser(currentUserId: currentUserId, followingUserId: followingUserId);

  Future<void> unFollowUser({String currentUserId, String followingUserId}) => _firebaseProvider.unFollowUser(currentUserId: currentUserId, followingUserId: followingUserId);

  Future<bool> checkIsFollowing(String name, String currentUserId) => _firebaseProvider.checkIsFollowing(name, currentUserId);

  Future<List<DocumentSnapshot>> fetchStats({String uid, String label}) => _firebaseProvider.fetchStats(uid: uid, label: label);

  Future<void> updatePhoto(String photoUrl, String uid) => _firebaseProvider.updatePhoto(photoUrl, uid);

  Future<void> updateDetails(String uid,   double longitude, double latitude) => _firebaseProvider.updateDetails(uid,  longitude, latitude);

  Future<List<String>> fetchUserNames(FirebaseUser user) => _firebaseProvider.fetchUserNames(user);

  Future<List<User>> fetchAllUsers(FirebaseUser user) => _firebaseProvider.fetchAllUsers(user);





  //Future<List<DocumentSnapshot>> retrievePostByUID(String uid) => _firebaseProvider.retrievePostByUID(uid);

}