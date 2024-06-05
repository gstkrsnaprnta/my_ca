import 'package:my_ca/features/profile/domain/entities/profile.dart';
import 'package:my_ca/features/profile/domain/repositories/profile_repositori.dart';

class GetAllUser {
  final ProfileRepository profileRepository;
  const GetAllUser(this.profileRepository);

  Future<List<Profile>> execute(int id) async {
    return await profileRepository.getUser(id);
  }
}
