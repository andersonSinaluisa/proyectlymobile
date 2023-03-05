

import 'package:supabase_flutter/supabase_flutter.dart';

import '../model/catalog.dart';

class CatalogRepository{

  final supabase = Supabase.instance.client;
  final String tableName = 'catalogue';


  
  getCatalogsByCode(String code) async {
     Stream<dynamic> data =  supabase.from(tableName).select('''
      id,
      name,
      code,
      type_catalogue!inner(
        id,
        description,
        code
      )
    ''').filter('type_catalogue.code', 'eq', code).asStream();


    
    return data;
  }

} 