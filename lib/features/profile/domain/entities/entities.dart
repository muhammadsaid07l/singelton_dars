// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProfileEntities {
  final String name;
  final String adress;
  ProfileEntities({
    required this.name,
    required this.adress,
  });

  @override
  String toString() => 'ProfileEntities(name: $name, adress: $adress)';
}
