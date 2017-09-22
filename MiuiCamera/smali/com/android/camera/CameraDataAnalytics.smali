.class public Lcom/android/camera/CameraDataAnalytics;
.super Ljava/lang/Object;
.source "CameraDataAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraDataAnalytics$1;,
        Lcom/android/camera/CameraDataAnalytics$RuleParser;,
        Lcom/android/camera/CameraDataAnalytics$Rule;,
        Lcom/android/camera/CameraDataAnalytics$Event;
    }
.end annotation


# static fields
.field private static final PREFERENCE_FILE_PATH:Ljava/lang/String;

.field private static sAnalytics:Lcom/android/camera/CameraDataAnalytics;

.field private static sMoreParameter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTrackEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnalytics:Lmiui/analytics/Analytics;

.field private mPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->sMoreParameter:Ljava/util/Map;

    .line 255
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sMoreParameter:Ljava/util/Map;

    const-string v1, "_priv_model_"

    sget-object v2, Lcom/android/camera/Device;->MODULE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sMoreParameter:Ljava/util/Map;

    const-string v1, "_priv_version_"

    const-string v2, "V6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data_analytics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->PREFERENCE_FILE_PATH:Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    .line 264
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "camera_picture_taken_key"

    const-string v2, "\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_recorded_key"

    const-string v2, "\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "scroll_to_menu_key"

    const-string v2, "\u6ed1\u52a8\u5230Menu\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "scroll_to_effect_key"

    const-string v2, "\u6ed1\u52a8\u5230\u7279\u6548\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_panoramamode_key"

    const-string v2, "\u5168\u666f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_hdr_key"

    const-string v2, "HDR\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_face_beauty_mode_key"

    const-string v2, "\u7f8e\u989c\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_burst_shooting_key"

    const-string v2, "\u8fde\u62cd\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_manual_mode_key"

    const-string v2, "\u624b\u52a8\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_hand_night_key"

    const-string v2, "\u591c\u666f\u9632\u6296\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_ubifocus_key"

    const-string v2, "\u9b54\u672f\u5bf9\u7126\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_square_mode_key"

    const-string v2, "\u6b63\u65b9\u5f62\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_scenemode_key"

    const-string v2, "\u573a\u666f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_delay_capture_mode"

    const-string v2, "\u5ef6\u65f6\u5feb\u95e8\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_gradienter_key"

    const-string v2, "\u6c34\u5e73\u4eea\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_tilt_shift_mode"

    const-string v2, "\u79fb\u8f74\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_fisheye_key"

    const-string v2, "\u9c7c\u773c\u955c\u5934\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_whitebalance_key"

    const-string v2, "\u767d\u5e73\u8861\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_focus_position_key"

    const-string v2, "\u5bf9\u7126\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_qc_camera_exposuretime_key"

    const-string v2, "\u5feb\u95e8\u65f6\u95f4\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_qc_camera_iso_key"

    const-string v2, "ISO\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "manual_whitebalance_key"

    const-string v2, "\u624b\u52a8\u767d\u5e73\u8861\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_shader_coloreffect_key"

    const-string v2, "\u6ee4\u955c\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_exposure_key"

    const-string v2, "\u66dd\u5149\u73af\u8c03\u8282\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_referenceline_key"

    const-string v2, "\u8f85\u52a9\u7ebf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_settings"

    const-string v2, "\u8bbe\u7f6e\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_focus_view"

    const-string v2, "\u66dd\u5149\u73af\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_volume"

    const-string v2, "\u97f3\u91cf\u952e\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_shutter"

    const-string v2, "\u62cd\u7167\u952e\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_audio"

    const-string v2, "\u58f0\u63a7\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_count_down"

    const-string v2, "\u5012\u8ba1\u65f6\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_count_down_3s"

    const-string v2, "\u5012\u8ba1\u65f63s\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_count_down_5s"

    const-string v2, "\u5012\u8ba1\u65f65s\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_count_down_10s"

    const-string v2, "\u5012\u8ba1\u65f610s\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_long_press"

    const-string v2, "\u957f\u6309\u5c4f\u5e55\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_t2t"

    const-string v2, "\u7269\u4f53\u8ffd\u8e2a\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_finger"

    const-string v2, "\u6307\u7eb9\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "record_times_finger"

    const-string v2, "\u6307\u7eb9\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "burst_times"

    const-string v2, "\u8fde\u62cd\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_normal_hdr"

    const-string v2, "\u6807\u51c6HDR\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_live_hdr"

    const-string v2, "\u5b9e\u65f6HDR\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_burst"

    const-string v2, "\u8fde\u62cd\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_beauty"

    const-string v2, "\u7f8e\u989c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_hht"

    const-string v2, "\u591c\u95f4\u9632\u6296\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_ubfocus"

    const-string v2, "\u9b54\u672f\u5bf9\u7126\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_manual"

    const-string v2, "\u624b\u52a8\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_gradienter"

    const-string v2, "\u6c34\u5e73\u4eea\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_tilt_shift_circle"

    const-string v2, "\u5706\u5f62\u79fb\u8f74\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_tilt_shift_parallel"

    const-string v2, "\u5e73\u884c\u79fb\u8f74\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_video_capture"

    const-string v2, "\u5f55\u50cf\u65f6\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_quick_snap"

    const-string v2, "\u8857\u62cd\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_panorama"

    const-string v2, "\u5168\u666f\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_size_16_9"

    const-string v2, "\u5168\u5c4f\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_size_4_3"

    const-string v2, "\u534a\u5c4f\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_size_1_1"

    const-string v2, "\u6b63\u65b9\u5f62\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "t2t_times"

    const-string v2, "\u7269\u4f53\u8ffd\u8e2a\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "zoom_gesture_times"

    const-string v2, "\u624b\u52bfZOOM\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "zoom_volume_times"

    const-string v2, "\u97f3\u91cf\u952eZOOM\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_video_hdr_key"

    const-string v2, "HDR\u5f55\u50cf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_video_speed_fast_key"

    const-string v2, "\u5feb\u52a8\u4f5c\u5f55\u50cf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_video_speed_slow_key"

    const-string v2, "\u6162\u52a8\u4f5c\u5f55\u50cf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_fast_recording_times_key"

    const-string v2, "\u5feb\u52a8\u4f5c\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_slow_recording_times_key"

    const-string v2, "\u6162\u52a8\u4f5c\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_hdr_recording_times_key"

    const-string v2, "HDR\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_pause_recording_times_key"

    const-string v2, "\u5f55\u50cf\u6682\u505c\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_torch_recording_times_key"

    const-string v2, "\u5f00\u95ea\u5149\u706f\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_front_camera_recording_times_key"

    const-string v2, "\u524d\u7f6e\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_quality_4k_recording_times_key"

    const-string v2, "\u8d85\u9ad8\u6e05\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_quality_1080_recording_times_key"

    const-string v2, "\u5168\u9ad8\u6e05\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_quality_720_recording_times_key"

    const-string v2, "\u9ad8\u6e05\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_quality_480_recording_times_key"

    const-string v2, "\u6807\u6e05\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "open_camera_times_key"

    const-string v2, "\u76f8\u673a\u5f00\u542f\u6301\u7eed\u65f6\u95f4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "open_camera_fail_key"

    const-string v2, "\u76f8\u673a\u65e0\u6cd5\u8fde\u63a5\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "picture_with_location_key"

    const-string v2, "\u8bb0\u5f55\u4f4d\u7f6e\u4fe1\u606f\u56fe\u7247\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_with_location_key"

    const-string v2, "\u8bb0\u5f55\u4f4d\u7f6e\u4fe1\u606f\u89c6\u9891\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "picture_without_location_key"

    const-string v2, "\u7f3a\u5c11\u4f4d\u7f6e\u4fe1\u606f\u56fe\u7247\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_without_location_key"

    const-string v2, "\u7f3a\u5c11\u4f4d\u7f6e\u4fe1\u606f\u89c6\u9891\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "front_camera_picture_taken_key"

    const-string v2, "\u81ea\u62cd\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "back_camera_picture_taken_key"

    const-string v2, "\u540e\u7f6e\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_instagram_clarendon_picture_taken_key"

    const-string v2, "\u5c0f\u6e05\u65b0\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_instagram_crema_picture_taken_key"

    const-string v2, "\u79cb\u8272\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_vsco_f2_picture_taken_key"

    const-string v2, "\u5178\u96c5\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_vsco_a4_picture_taken_key"

    const-string v2, "\u552f\u7f8e\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_blackwhite_picture_taken_key"

    const-string v2, "\u892a\u8272\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_instagram_rise_picture_taken_key"

    const-string v2, "LOMO\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_instagram_hudson_picture_taken_key"

    const-string v2, "\u84dd\u8c03\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_big_face_picture_taken_key"

    const-string v2, "\u5927\u8138\u732b\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_small_face_picture_taken_key"

    const-string v2, "\u5916\u661f\u4eba\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_long_face_picture_taken_key"

    const-string v2, "\u62c9\u4f38\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_light_tunnel_picture_taken_key"

    const-string v2, "\u5149\u96a7\u9053\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_gray_picture_taken_key"

    const-string v2, "\u9ed1\u767d\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_vivid_picture_taken_key"

    const-string v2, "\u751f\u52a8\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_yesteryear_picture_taken_key"

    const-string v2, "\u5f80\u6614\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_gaussian_picture_taken_key"

    const-string v2, "\u80cc\u666f\u865a\u5316\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_fisheye_picture_taken_key"

    const-string v2, "\u9c7c\u773c\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_mosaic_picture_taken_key"

    const-string v2, "\u9a6c\u8d5b\u514b\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_brannan_picture_taken_key"

    const-string v2, "\u6668\u5149\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_seventy_picture_taken_key"

    const-string v2, "\u5e74\u4ee370\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_jstyle_picture_taken_key"

    const-string v2, "\u65e5\u7cfb\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_earlybird_picture_taken_key"

    const-string v2, "\u79cb\u8272\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_nashvile_picture_taken_key"

    const-string v2, "\u975b\u9752\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_mirror_picture_taken_key"

    const-string v2, "\u955c\u9762\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_sketch_picture_taken_key"

    const-string v2, "\u7d20\u63cf\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "qrcode_detected_times_key"

    const-string v2, "\u4e8c\u7ef4\u7801\u8bc6\u522b\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "gesture_switch_camera_times_key"

    const-string v2, "\u624b\u52bf\u5207\u6362\u76f8\u673a\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    .line 402
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraDataAnalytics;->PREFERENCE_FILE_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    .line 404
    return-void
.end method

.method private getEventKeyToRulesMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 476
    new-instance v2, Lcom/android/camera/CameraDataAnalytics$RuleParser;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/camera/CameraDataAnalytics$RuleParser;-><init>(Lcom/android/camera/CameraDataAnalytics;Lcom/android/camera/CameraDataAnalytics$1;)V

    .line 477
    .local v2, "parser":Lcom/android/camera/CameraDataAnalytics$RuleParser;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 478
    .local v1, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 480
    .local v3, "ruleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/CameraDataAnalytics$Rule;>;"
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/android/camera/CameraDataAnalytics$RuleParser;->parse(Ljava/io/InputStream;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 486
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/camera/CameraDataAnalytics;->invertRule(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    return-object v4

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "CameraDataAnalytics"

    const-string v5, "XmlPullParserException"

    invoke-static {v4, v5, v0}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 483
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 484
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "CameraDataAnalytics"

    const-string v5, "IOException"

    invoke-static {v4, v5, v0}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static instance()Lcom/android/camera/CameraDataAnalytics;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sAnalytics:Lcom/android/camera/CameraDataAnalytics;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lcom/android/camera/CameraDataAnalytics;

    invoke-direct {v0}, Lcom/android/camera/CameraDataAnalytics;-><init>()V

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->sAnalytics:Lcom/android/camera/CameraDataAnalytics;

    .line 396
    :cond_0
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sAnalytics:Lcom/android/camera/CameraDataAnalytics;

    return-object v0
.end method

.method private invertRule(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/CameraDataAnalytics$Rule;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "ruleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/CameraDataAnalytics$Rule;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 491
    .local v2, "eventKeyRulesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_5

    .line 492
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 493
    .local v5, "ruleIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/CameraDataAnalytics$Rule;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 494
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraDataAnalytics$Rule;

    .line 495
    .local v4, "rule":Lcom/android/camera/CameraDataAnalytics$Rule;
    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->name:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->eventList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 496
    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 497
    .local v1, "eventIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/CameraDataAnalytics$Event;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 498
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraDataAnalytics$Event;

    .line 499
    .local v0, "event":Lcom/android/camera/CameraDataAnalytics$Event;
    iget-object v7, v0, Lcom/android/camera/CameraDataAnalytics$Event;->key:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 500
    sget-object v7, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    iget-object v8, v0, Lcom/android/camera/CameraDataAnalytics$Event;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 501
    .local v3, "expectedName":Ljava/lang/String;
    if-eqz v3, :cond_2

    iget-object v7, v0, Lcom/android/camera/CameraDataAnalytics$Event;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 502
    :cond_2
    const-string v7, "CameraDataAnalytics"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NOT MATCH: key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/camera/CameraDataAnalytics$Event;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/camera/CameraDataAnalytics$Event;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " expectedName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_3
    iget-object v7, v0, Lcom/android/camera/CameraDataAnalytics$Event;->key:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 506
    .local v6, "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_4

    .line 507
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .restart local v6    # "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v7, v0, Lcom/android/camera/CameraDataAnalytics$Event;->key:Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 510
    :cond_4
    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 511
    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    .end local v0    # "event":Lcom/android/camera/CameraDataAnalytics$Event;
    .end local v1    # "eventIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/CameraDataAnalytics$Event;>;"
    .end local v3    # "expectedName":Ljava/lang/String;
    .end local v4    # "rule":Lcom/android/camera/CameraDataAnalytics$Rule;
    .end local v5    # "ruleIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/CameraDataAnalytics$Rule;>;"
    .end local v6    # "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    return-object v2
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 453
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 454
    return-void
.end method

.method public trackEvent(Ljava/lang/String;J)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # J

    .prologue
    .line 465
    if-nez p1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    sget-object v4, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 467
    .local v1, "trackEvent":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 468
    iget-object v4, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 469
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    invoke-interface {v4, p1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 470
    .local v2, "oldValue":J
    add-long v4, p2, v2

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public trackEventTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 458
    return-void
.end method

.method public uploadToServer()V
    .locals 24

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    const-string v20, "open_camera_times_key"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v15, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 408
    .local v16, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v10, v20, v16

    .line 409
    .local v10, "lastTime":J
    const-wide/32 v20, 0x5265c00

    cmp-long v15, v10, v20

    if-gtz v15, :cond_0

    const-wide/16 v20, 0x7d0

    cmp-long v15, v10, v20

    if-gez v15, :cond_1

    .line 410
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 411
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 412
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 450
    :goto_0
    return-void

    .line 416
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraDataAnalytics;->getEventKeyToRulesMap()Ljava/util/HashMap;

    move-result-object v5

    .line 418
    .local v5, "eventKeyToRulesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lmiui/analytics/Analytics;->startSession(Landroid/content/Context;)V

    .line 419
    sget-object v15, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 420
    .local v9, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 421
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-interface {v15, v8, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 422
    .local v18, "value":J
    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-eqz v15, :cond_2

    .line 423
    const-string v15, "open_camera_times_key"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    move-object/from16 v20, v0

    sget-object v15, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    sget-object v21, Lcom/android/camera/CameraDataAnalytics;->sMoreParameter:Ljava/util/Map;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v15, v1, v10, v11}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 426
    const-string v20, "Camera"

    sget-object v15, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v15, v10, v11}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 444
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "value":J
    :catchall_0
    move-exception v15

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    throw v15

    .line 428
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "value":J
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    move-object/from16 v20, v0

    sget-object v15, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    sget-object v21, Lcom/android/camera/CameraDataAnalytics;->sMoreParameter:Ljava/util/Map;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-wide/from16 v2, v18

    invoke-virtual {v0, v15, v1, v2, v3}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 429
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 430
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 431
    .local v14, "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 432
    .local v13, "ruleName":Ljava/lang/String;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 433
    .local v12, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v15, "name"

    sget-object v20, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v15, "Camera"

    move-wide/from16 v0, v18

    invoke-static {v15, v13, v0, v1, v12}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_2

    .line 437
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "ruleName":Ljava/lang/String;
    .end local v14    # "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v20, "Camera"

    sget-object v15, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-static {v0, v15, v1, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 442
    .end local v8    # "key":Ljava/lang/String;
    .end local v18    # "value":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    invoke-virtual {v15}, Lmiui/analytics/Analytics;->endSession()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 447
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 448
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method
