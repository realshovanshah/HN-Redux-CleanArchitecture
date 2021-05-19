import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String imageUrl;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [id, name, email, imageUrl];
}
