import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/inputs/singup.dart';
import '../../domain/repositories/singuprepos.dart';
import '../../domain/response/singuprespons.dart';

class SingUpReposImpl implements SingUpRepository {
  final FirebaseAuth _auth;
  SingUpReposImpl(this._auth);

  @override
  Future<SingUpResponse> register(SingUpData data) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: data.email,
        password: data.pass,
      );
      userCredential.user!.updateDisplayName("${data.name} ${data.lastname}");
      return SingUpResponse(null, userCredential.user!);
    } on FirebaseAuthException catch (e) {
      return SingUpResponse(parseStringToSignUpError(e.code), null);
    }
  }
}
