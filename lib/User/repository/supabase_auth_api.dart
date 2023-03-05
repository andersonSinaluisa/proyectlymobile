

import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthAPI{

  final supabase = Supabase.instance.client;


  Future<AuthResponse> SignIn( String email, String password) async {
    final response = await supabase.auth.signInWithPassword(email: email, password: password);
    return response;
  }
  
  Future<AuthResponse> SignUp( String email, String password) async {
    final response = await supabase.auth.signUp(email: email, password: password );
    return response;
  }


  //await supabase.auth.signInWithOAuth(Provider.github); 

  Future<Session?> SignUpWithGoogle() async {
    final response = await supabase.auth.signInWithOAuth(Provider.google);
    
    final Session? session = supabase.auth.currentSession;

    return session;
  }


  //  await supabase.auth.signOut();
  SignOut() async{
    await supabase.auth.signOut().then((value) => print("SignOut"));
  }

  
}