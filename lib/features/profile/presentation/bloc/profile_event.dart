// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'profile_bloc.dart';

 class ProfileEvent {}

 class boshBloc extends ProfileEvent{}

class SaveButtonPressed extends ProfileEvent {
  final String name;
  final String adress;
  SaveButtonPressed({
    required this.name,
    required this.adress,
  });

 }

 class ChangeImage extends ProfileEvent{}

 
