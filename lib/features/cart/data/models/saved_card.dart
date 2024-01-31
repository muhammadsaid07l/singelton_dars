// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:objectbox/objectbox.dart';



@Entity()
class SavedCard {
  @Id()
  int id; 

  final String name;
  SavedCard({
     this.id = 0,
    required this.name,
  });

  
}
