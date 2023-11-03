// ignore_for_file: must_be_immutable

part of 'message_one_bloc.dart';

/// Represents the state of MessageOne in the application.
class MessageOneState extends Equatable {
  MessageOneState({
    this.searchController,
    this.messageOneModelObj,
  });

  TextEditingController? searchController;

  MessageOneModel? messageOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        messageOneModelObj,
      ];
  MessageOneState copyWith({
    TextEditingController? searchController,
    MessageOneModel? messageOneModelObj,
  }) {
    return MessageOneState(
      searchController: searchController ?? this.searchController,
      messageOneModelObj: messageOneModelObj ?? this.messageOneModelObj,
    );
  }
}
