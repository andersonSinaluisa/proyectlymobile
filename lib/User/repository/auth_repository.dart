

import 'package:proyectly/User/repository/supabase_auth_api.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository{
  final _supabaseAuthApi = SupabaseAuthAPI();

  Future<AuthResponse> signIn(email,password)=>_supabaseAuthApi.SignIn(email, password);

  Future<AuthResponse> signUp(email,password)=>_supabaseAuthApi.SignUp(email, password);

  Future<Session?> signUpWithGoogle()=>_supabaseAuthApi.SignUpWithGoogle();

  SignOut()=>_supabaseAuthApi.SignOut();

}