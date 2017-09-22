.class public Lcom/android/camera/preferences/CameraSettingPreferences;
.super Ljava/lang/Object;
.source "CameraSettingPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;
    }
.end annotation


# static fields
.field private static sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;


# instance fields
.field private mPrefGlobal:Landroid/content/SharedPreferences;

.field private mPrefLocal:Landroid/content/SharedPreferences;

.field private mPrefModeGlobal:Landroid/content/SharedPreferences;

.field private mPreferencesLocalId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "camera_settings_global"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/preferences/CameraSettingPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/preferences/CameraSettingPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/preferences/CameraSettingPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getCameraId()I
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    const-string v1, "pref_camera_id_key"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized instance()Lcom/android/camera/preferences/CameraSettingPreferences;
    .locals 3

    .prologue
    .line 31
    const-class v1, Lcom/android/camera/preferences/CameraSettingPreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 33
    sget-object v0, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    sget-object v2, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-direct {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getCameraId()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalIdInternal(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 35
    :cond_0
    sget-object v0, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isGlobal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "pref_camera_id_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_recordlocation_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_volumekey_function_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_version_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camerasound_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_referenceline_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_watermark_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_face_info_watermark_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_antibanding_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_front_mirror_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_show_gender_age_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "open_camera_fail_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_first_touch_toast_shown_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_confirm_location_shown_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_key_camera_smart_shutter_position"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_priority_storage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_snap_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_mode_settings_key_remind"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isModeGlobal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v0, "pref_video_captrue_ability_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setLocalIdInternal(I)Lcom/android/camera/preferences/CameraSettingPreferences;
    .locals 4
    .param p1, "preferencesLocalId"    # I

    .prologue
    const/4 v3, 0x0

    .line 46
    iput p1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPreferencesLocalId:I

    .line 47
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera_settings_simple_mode_global"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    .line 50
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera_settings_simple_mode_local_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 52
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 53
    sget-object v0, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 166
    iget-object v1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;

    invoke-direct {v0, p0}, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;-><init>(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 99
    iget-object v1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 100
    iget-object v1, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 101
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 150
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 139
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 144
    :goto_0
    return v0

    .line 141
    :cond_0
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 117
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 122
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 128
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 133
    :goto_0
    return-wide v0

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isBackCamera()Z
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrontCamera()Z
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 293
    return-void
.end method

.method public setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;
    .locals 1
    .param p1, "preferencesLocalId"    # I

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences;->mPreferencesLocalId:I

    if-eq p1, v0, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalIdInternal(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object p0

    .line 42
    .end local p0    # "this":Lcom/android/camera/preferences/CameraSettingPreferences;
    :cond_0
    return-object p0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 298
    return-void
.end method
