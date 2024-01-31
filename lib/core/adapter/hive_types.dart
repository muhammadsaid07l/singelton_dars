import 'package:hive/hive.dart';
import 'package:singelton_dars/features/profile/data/models/profile_model.dart';

void registerAdap(){
  Hive.registerAdapter(ProfileModelAdapter());
}