import 'package:singelton_dars/core/extention/extention.dart';
import 'package:singelton_dars/core/injector/setup_locator.dart';
import 'package:singelton_dars/features/profile/data/models/profile_model.dart';
import 'package:singelton_dars/features/profile/domain/entities/entities.dart';

abstract class RemoteDataSource {
  Future<void>  putUser(String name, String adress);
  Future<ProfileEntities> getUser(); 

  factory RemoteDataSource()=>_RemoteDataSource();
}

class _RemoteDataSource implements RemoteDataSource {
  @override
  Future<void> putUser(String name, String adress)async {
    await HiveRepository.putName(name, adress);
  
    
  }
  
  @override
  Future<ProfileEntities> getUser() async{
    final ProfileModel model =   HiveRepository.getName() as ProfileModel;
    print('${model.toEntities}ishladi');
    return model.toEntities;
    
  }
 
}