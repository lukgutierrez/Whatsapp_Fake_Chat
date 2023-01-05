import 'package:hive_flutter/hive_flutter.dart';

part 'Peoples.g.dart';

@HiveType(typeId: 1)
class People {
  @HiveField(0)
  final String datas1;
  @HiveField(1)
  final String datas2;
  @HiveField(2)
  final String datas3;
  @HiveField(3)
  final String datas4;
  @HiveField(4)
  final String datas5;

  const People({
    required this.datas1,
    required this.datas2,
    required this.datas3,
    required this.datas4,
    required this.datas5,
  });
}
//flutter pub run build_runner build
