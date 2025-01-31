import '../../domain/repositories/view_repository.dart';
import '../models/view_type_model.dart';
import '../sources/remote_source.dart';

class ViewTypesRepositoryImpl implements ViewTypesRepository {
  final ViewTypesRemoteDataSource remoteDataSource;

  ViewTypesRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<ViewTypeModel>> getViews() {
    return remoteDataSource.getViews();
  }
}
