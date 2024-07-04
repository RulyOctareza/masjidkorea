import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:masjidkorea/models/tips_model.dart';

class TipsRepository {
  final DatabaseReference _database =
      FirebaseFirestore.instance.reference().child('tips');

  Future<List<Tips>> fetchTips() async {
    final snapshot = await _database.once();
    final data = snapshot.value as Map<dynamic, dynamic>;

    return data.entries.map((entry) {
      return Tips.fromMap(entry.value, entry.key);
    }).toList();
  }
}
