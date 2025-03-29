import 'package:firebase_database/firebase_database.dart';

class RealtimeData {
  final DatabaseReference _databaseReference = FirebaseDatabase.instance.ref();
  Stream<DatabaseEvent> sensorData(String sensor){
    return _databaseReference.child(sensor).onValue;
  }
}