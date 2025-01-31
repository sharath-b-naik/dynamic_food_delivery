import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/view_type_model.dart';
import '../../domain/repositories/view_repository.dart';

part 'views_cubit.freezed.dart';
part 'views_state.dart';

class ViewTypeCubit extends Cubit<ViewTypeState> {
  final ViewTypesRepository repository;

  ViewTypeCubit(this.repository) : super(const ViewTypeState.initial());

  Future<void> loadViewType() async {
    try {
      emit(const ViewTypeState.loading());
      final views = await repository.getViews();
      emit(ViewTypeState.loaded(views));
    } catch (e) {
      emit(ViewTypeState.error(e.toString()));
    }
  }
}
