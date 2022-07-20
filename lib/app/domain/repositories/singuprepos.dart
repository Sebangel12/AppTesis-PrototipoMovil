import '../inputs/singup.dart';

abstract class SingUpRepository {
  Future<SingUpResponse> register(SingUpData data);
}
