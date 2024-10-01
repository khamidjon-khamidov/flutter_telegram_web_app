library telegram_js_internal;

/// All the classes inside this library is for internal use only
/// The represent js objects of Telegram js library

import 'dart:js_interop';

part 'src/events/biometric_auth_requested_payload.dart';
part 'src/events/biometric_token_updated_payload.dart';
part 'src/events/clipboard_text_received_payload.dart';
part 'src/events/contact_requested_payload.dart';
part 'src/events/invoice_closed_payload.dart';
part 'src/events/popup_closed_payload.dart';
part 'src/events/qr_text_received_payload.dart';
part 'src/events/viewport_changed_payload.dart';
part 'src/events/write_access_requested_payload.dart';
part 'src/models/back_button.dart';
part 'src/models/biometric/biometric_authenticate_params.dart';
part 'src/models/biometric/biometric_manager.dart';
part 'src/models/biometric/biometric_request_access_params.dart';
part 'src/models/bottom_button.dart';
part 'src/models/bottom_button_params.dart';
part 'src/models/cloud_storage.dart';
part 'src/models/haptic_feedback.dart';
part 'src/models/open_link_params.dart';
part 'src/models/popup_button.dart';
part 'src/models/popup_params.dart';
part 'src/models/scan_qr_popup_params.dart';
part 'src/models/settings_button.dart';
part 'src/models/story/story_share_params.dart';
part 'src/models/story/story_widget_link.dart';
part 'src/models/theme_params.dart';
part 'src/models/web_app_chat.dart';
part 'src/models/web_app_init_data.dart';
part 'src/models/web_app_user.dart';
