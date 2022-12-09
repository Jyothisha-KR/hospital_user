import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<SignupEvent>((event, emit) async {
      if (event is UserSignupEvent) {
        final FirebaseAuth _auth = FirebaseAuth.instance;

        try {
          await _auth.createUserWithEmailAndPassword(
            email: event.email,
            password: event.password,
          );
          emit(SignupSuccess());
        } on FirebaseAuthException catch (e) {
          emit(SignupFailed(errorMsg: e.code));
        }
      }
    });
  }
}


