// ignore_for_file: must_be_immutable

part of 'all_doctors_bloc.dart';

/// Represents the state of AllDoctors in the application.
class AllDoctorsState extends Equatable {
  AllDoctorsState({
    this.searchController,
    this.allDoctorsModelObj,
  });

  TextEditingController? searchController;

  AllDoctorsModel? allDoctorsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        allDoctorsModelObj,
      ];
  AllDoctorsState copyWith({
    TextEditingController? searchController,
    AllDoctorsModel? allDoctorsModelObj,
  }) {
    return AllDoctorsState(
      searchController: searchController ?? this.searchController,
      allDoctorsModelObj: allDoctorsModelObj ?? this.allDoctorsModelObj,
    );
  }
}
