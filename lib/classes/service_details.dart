import 'package:cloud_firestore/cloud_firestore.dart';

class banners {
  FirebaseFirestore? _instance;
  List<String> _list = [];
  List<String> _getBanners(){
    return _list;
  }
  Future<void> getBanners() async{
    _instance = FirebaseFirestore.instance;
    CollectionReference Banners = _instance!.collection("Banners");
    DocumentSnapshot snapshot = await Banners.doc("MEYNY50T9o2dPRxRMos8").get();
    var data = snapshot.data() as Map;
  }
}
