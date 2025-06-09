package com.yourcompany.unityfitnesswidget

import android.app.Activity
import android.content.Context
import android.content.Intent
import androidx.annotation.NonNull
import com.unity3d.player.UnityPlayerActivity
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class UnityFitnessWidgetPlugin: FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {
    private lateinit var channel: MethodChannel
    private var activity: Activity? = null

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "unity_fitness_widget")
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: MethodChannel.Result) {
        when (call.method) {
            "launchUnity" -> {
                val intent = Intent(activity, UnityPlayerActivity::class.java)
                activity?.startActivity(intent)
                result.success(null)
            }
            "sendXp" -> {
                val xp = call.argument<Int>("xp")
                // Communicate with Unity via UnitySendMessage if needed
                result.success(null)
            }
            "setEmotion" -> {
                val emotion = call.argument<String>("emotion")
                // UnitySendMessage(...)
                result.success(null)
            }
            "setAura" -> {
                val active = call.argument<Boolean>("active")
                // UnitySendMessage(...)
                result.success(null)
            }
            "setTrainingStatus" -> {
                val status = call.argument<String>("status")
                // UnitySendMessage(...)
                result.success(null)
            }
            else -> result.notImplemented()
        }
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
    }

    override fun onDetachedFromActivityForConfigChanges() { activity = null }
    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) { activity = binding.activity }
    override fun onDetachedFromActivity() { activity = null }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
