import 'package:dartz/dartz.dart';
import 'package:my_ca/core/error/failure.dart';
import 'package:my_ca/features/profile/domain/entities/profile.dart';
import 'package:my_ca/features/profile/domain/repositories/profile_repositori.dart';

class GetAllUser {
  final ProfileRepository profileRepository;
  const GetAllUser(this.profileRepository);

  Future<Either<Failure, Profile>> execute(int page) async {
    return await profileRepository.getAllUser(page);
  }
}
