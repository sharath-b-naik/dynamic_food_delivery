part of 'views_cubit.dart';

@freezed
class ViewTypeState with _$ViewTypeState {
  const factory ViewTypeState.initial() = _Initial;
  const factory ViewTypeState.loading() = _Loading;
  const factory ViewTypeState.loaded(List<ViewTypeModel> views) = _Loaded;
  const factory ViewTypeState.error(String message) = _Error;
}
