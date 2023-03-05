import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:gotrue/src/types/auth_response.dart';
import 'package:proyectly/User/repository/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRepository();

  final Session? session = Supabase.instance.client.auth.currentSession;
  final User? user = Supabase.instance.client.auth.currentUser;

  //stream

  Stream<AuthState>  authSubscription = Supabase.instance.client.auth.onAuthStateChange;

  Stream<AuthState> get sessionStream => authSubscription;

  Future<AuthResponse> signIn(email, password) {
    return _authRepository.signIn(email, password);
  }

  Future<AuthResponse> signUp(email, password) {
    return _authRepository.signUp(email, password);
  }

  Future<Session?> signUpWithGoogle() {
    return _authRepository.signUpWithGoogle();
  }

  SignOut() async {
    return _authRepository.SignOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
  
}
