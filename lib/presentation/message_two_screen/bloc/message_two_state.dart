// ignore_for_file: must_be_immutable

part of 'message_two_bloc.dart';

/// Represents the state of MessageTwo in the application.
class MessageTwoState extends Equatable {
  MessageTwoState({
    this.sentimentverysatisfiedEditTextController,
    this.messageTwoModelObj,
  });

  TextEditingController? sentimentverysatisfiedEditTextController;

  MessageTwoModel? messageTwoModelObj;

  @override
  List<Object?> get props => [
        sentimentverysatisfiedEditTextController,
        messageTwoModelObj,
      ];
  MessageTwoState copyWith({
    TextEditingController? sentimentverysatisfiedEditTextController,
    MessageTwoModel? messageTwoModelObj,
  }) {
    return MessageTwoState(
      sentimentverysatisfiedEditTextController:
          sentimentverysatisfiedEditTextController ??
              this.sentimentverysatisfiedEditTextController,
      messageTwoModelObj: messageTwoModelObj ?? this.messageTwoModelObj,
    );
  }
}
