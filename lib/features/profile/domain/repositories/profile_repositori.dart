import 'package:my_ca/core/error/failure.dart';
import 'package:my_ca/features/profile/domain/entities/profile.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileRepository {
  Future<Either<Failure, Profile>> getAllUser(int page);
  Future<List<Profile>> getUser(int id);
}
