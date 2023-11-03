import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/video_calling_screen/models/video_calling_model.dart';
part 'video_calling_event.dart';
part 'video_calling_state.dart';

/// A bloc that manages the state of a VideoCalling according to the event that is dispatched to it.
class VideoCallingBloc extends Bloc<VideoCallingEvent, VideoCallingState> {
  VideoCallingBloc(VideoCallingState initialState) : super(initialState) {
    on<VideoCallingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoCallingInitialEvent event,
    Emitter<VideoCallingState> emit,
  ) async {}
}
