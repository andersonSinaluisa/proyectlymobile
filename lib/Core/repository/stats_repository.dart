import 'package:supabase_flutter/supabase_flutter.dart';

class StatsRepository {
  final supabase = Supabase.instance.client;

  Future<int> getProjectsCount() async {
    final data = await supabase.from('cities').select('name');
    return data.data!.length;
  }
}
