// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'profile_bloc.dart';

class ProfState {
  final ProfileEntities? name;
  File? avatar;
  
  ProfState({
    this.name,
    this.avatar,
  });

  ProfState copyWith({
    ProfileEntities? name,
    File? avatar,
  }) {
    return ProfState(
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
    );
  }

  @override
  String toString() => 'ProfileState(name: $name, avatar: $avatar)';

  @override
  bool operator ==(covariant ProfState other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.avatar == avatar;
  }

  @override
  int get hashCode => name.hashCode ^ avatar.hashCode;
 }

 
