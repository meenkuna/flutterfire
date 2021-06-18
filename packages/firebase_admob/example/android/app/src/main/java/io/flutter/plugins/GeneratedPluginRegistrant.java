package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import io.flutter.Log;

import io.flutter.embedding.engine.FlutterEngine;

/**
 * Generated file. Do not edit.
 * This file is generated by the Flutter tool based on the
 * plugins that support the Android platform.
 */
@Keep
public final class GeneratedPluginRegistrant {
  private static final String TAG = "GeneratedPluginRegistrant";
  public static void registerWith(@NonNull FlutterEngine flutterEngine) {
    try {
      flutterEngine.getPlugins().add(new dev.flutter.plugins.e2e.E2EPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin e2e, dev.flutter.plugins.e2e.E2EPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.firebaseadmob.FirebaseAdMobPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin firebase_admob, io.flutter.plugins.firebaseadmob.FirebaseAdMobPlugin", e);
    }
  }
}
