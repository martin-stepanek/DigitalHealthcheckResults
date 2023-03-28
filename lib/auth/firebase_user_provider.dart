import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class P202303DigitalHealthcheckResultsFirebaseUser {
  P202303DigitalHealthcheckResultsFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

P202303DigitalHealthcheckResultsFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<P202303DigitalHealthcheckResultsFirebaseUser>
    p202303DigitalHealthcheckResultsFirebaseUserStream() =>
        FirebaseAuth.instance
            .authStateChanges()
            .debounce((user) => user == null && !loggedIn
                ? TimerStream(true, const Duration(seconds: 1))
                : Stream.value(user))
            .map<P202303DigitalHealthcheckResultsFirebaseUser>(
          (user) {
            currentUser = P202303DigitalHealthcheckResultsFirebaseUser(user);
            return currentUser!;
          },
        );
