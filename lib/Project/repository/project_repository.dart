

import 'package:proyectly/Project/model/project.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProjectRepository{
    final supabase = Supabase.instance.client;
    final String tableName = 'projects';
    
    Future<int> getProjectsCount() async {
      final data = await supabase.from(tableName).select('name');
      return data.data!.length;

    }


    Future<List<Project>> getProjects() async {
      final data = await supabase.from(tableName).select();
      return data.data;
    }


    Future<Project> getProjectById(int id) async {
      final data = await supabase.from(tableName).select().eq('id', id).limit(1);
      return data.data![0];
    }

    //create project
    Future<Project> createProject(Project project) async {
      final data = await supabase.from(tableName).insert(project.toJson()).single();
      return data.data;
    }

    //update project
    Future<Project> updateProject(Project project) async {
      final data = await supabase.from(tableName).update(project.toJson()).eq('id', project.id).single();
      return data.data;
    }

    

    
    

    



}