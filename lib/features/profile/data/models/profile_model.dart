

import 'package:hive/hive.dart';

part 'profile_model.g.dart';

@HiveType(typeId: 1)
class ProfileModel extends HiveObject {
  @HiveField(0)
  final String name; 
  @HiveField(1)
  final String adress;
  ProfileModel({
    required this.name,
    required this.adress,
  });

  

  

  @override
  String toString() => 'ProfileModel(name: $name, adress: $adress)';
}
