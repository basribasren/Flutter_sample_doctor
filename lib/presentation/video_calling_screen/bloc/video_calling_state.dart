// ignore_for_file: must_be_immutable

part of 'video_calling_bloc.dart';

/// Represents the state of VideoCalling in the application.
class VideoCallingState extends Equatable {
  VideoCallingState({this.videoCallingModelObj});

  VideoCallingModel? videoCallingModelObj;

  @override
  List<Object?> get props => [
        videoCallingModelObj,
      ];
  VideoCallingState copyWith({VideoCallingModel? videoCallingModelObj}) {
    return VideoCallingState(
      videoCallingModelObj: videoCallingModelObj ?? this.videoCallingModelObj,
    );
  }
}
