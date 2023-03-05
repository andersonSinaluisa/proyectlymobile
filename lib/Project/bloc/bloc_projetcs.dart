

import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:proyectly/Core/model/catalog.dart';

import '../../Core/repository/catalog_repository.dart';
import '../model/project.dart';
import '../repository/project_repository.dart';

class ProjectsBloc implements Bloc{

  final _projectRepository = ProjectRepository();
  final _catalogRepository = CatalogRepository();
  //create project
  Future<Project> createProject  (Project project) async {
    final data = await _projectRepository.createProject(project);
    return data;
  }


  

    @override
  void dispose() {
    // TODO: implement dispose
  }
}