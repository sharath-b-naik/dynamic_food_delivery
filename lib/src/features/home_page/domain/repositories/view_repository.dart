import '../../data/models/view_type_model.dart';

abstract class ViewTypesRepository {
  Future<List<ViewTypeModel>> getViews();
}
