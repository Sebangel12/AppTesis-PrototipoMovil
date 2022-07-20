import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_meedu/meedu.dart';
import 'data/repositories_impl/authrepostimpl.dart';
import 'data/repositories_impl/singupresposimpl.dart';
import 'domain/repositories/authrepos.dart';
import 'domain/repositories/singuprepos.dart';

void injectdependences() {
  Get.lazyPut<authrepor>(
    () => authreporimpl(FirebaseAuth.instance),
  );
  Get.lazyPut<SingUpRepository>(
    () => SingUpReposImpl(FirebaseAuth.instance),
  );
}
