import 'dart:convert';

import 'package:hive/hive.dart';

class LocalStorege {
  final box = Hive.box("data");
  createData(String title, String dis, int status) {
    List<Map> mylist = [];
    Map val = {"title": title, "dis": dis, "status": status};

    if (box.get('taskData') == null) {
      mylist.add(val);
      box.put('taskData', jsonEncode(mylist));
    } else {
      mylist = box.get('taskData');
      mylist.add(val);
      box.put('taskData', jsonEncode(mylist));
    }
// out: GetX is the best
  }

  String getData(){
    return box.get('taskData');
  }
}



