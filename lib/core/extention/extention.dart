import 'package:singelton_dars/features/profile/data/models/profile_model.dart';
import 'package:singelton_dars/features/profile/domain/entities/entities.dart';

extension ModelToEntities on ProfileModel{
  ProfileEntities get toEntities{
    return ProfileEntities(name: name, adress: adress);
  } 
}