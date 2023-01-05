import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:whatsapp_fake_conversations/database/Peoples.dart';

class HiveData {
  const HiveData();
  Future<int> saveDataMoney(People people) async {
    final Box<People> box = await Hive.openBox<People>('people');
    return box.add(people);
  }

  Future<int> deleteDataMoney(People people) async {
    final Box<People> box = await Hive.openBox<People>('people');
    return box.clear();
  }

  Future<void> deleteDataMoneyIndex(int index) async {
    final Box<People> box = await Hive.openBox<People>('people');
    return box.deleteAt(index);
  }

  Future<List<People>> get contact async {
    final Box<People> box = await Hive.openBox<People>('people');
    return box.values.toList();
  }
}