.class public Lcom/android/camera/ui/ScreenHint;
.super Ljava/lang/Object;
.source "ScreenHint.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpace:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ScreenHint;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ScreenHint;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenHint;->recordLocation(Z)V

    return-void
.end method

.method private recordLocation(Z)V
    .locals 2
    .param p1, "recorded"    # Z

    .prologue
    .line 71
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 75
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenHint;->showTouchToast()V

    .line 78
    :cond_0
    return-void
.end method

.method private showTouchToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_first_touch_toast_shown_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0e00ef

    :goto_0
    invoke-virtual {v2, v1, v3}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 96
    return-void

    .line 92
    :cond_0
    const v1, 0x7f0e00f0

    goto :goto_0
.end method


# virtual methods
.method public cancelHint()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 68
    :cond_0
    return-void
.end method

.method public getStorageSpace()J
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public hideToast()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-static {}, Lcom/android/camera/ui/RotateTextToast;->getInstance()Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 152
    .local v0, "toast":Lcom/android/camera/ui/RotateTextToast;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 155
    :cond_0
    return-void
.end method

.method public isScreenHintVisible()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->getHintViewVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showConfirmMessage(II)V
    .locals 7
    .param p1, "title"    # I
    .param p2, "message"    # I

    .prologue
    const/4 v4, 0x0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v5, 0x104000a

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public showFirstUseHint()V
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v11

    .line 100
    .local v11, "preferences":Lcom/android/camera/preferences/CameraSettingPreferences;
    const-string v0, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {v11, v0, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 101
    .local v9, "firstLocation":Z
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v11}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 103
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string v0, "pref_camera_confirm_location_shown_key"

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    const-string v0, "pref_camera_first_touch_toast_shown_key"

    invoke-virtual {v11, v0, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 113
    .local v10, "firstTouchToast":Z
    if-nez v9, :cond_2

    if-nez v10, :cond_2

    .line 140
    :cond_0
    :goto_1
    return-void

    .line 107
    .end local v10    # "firstTouchToast":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 115
    .restart local v10    # "firstTouchToast":Z
    :cond_2
    const-string v0, "pref_camera_recordlocation_key"

    invoke-virtual {v11, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    .line 116
    .local v7, "containsRecordLocation":Z
    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v7, :cond_3

    if-eqz v9, :cond_3

    .line 117
    new-instance v5, Lcom/android/camera/ui/ScreenHint$1;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/ScreenHint$1;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    .line 124
    .local v5, "save":Ljava/lang/Runnable;
    new-instance v6, Lcom/android/camera/ui/ScreenHint$2;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ScreenHint$2;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    .line 131
    .local v6, "no_save":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e0010

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0e0011

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0e0012

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0e0013

    invoke-virtual {v4, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemChoiceDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 137
    .end local v5    # "save":Ljava/lang/Runnable;
    .end local v6    # "no_save":Ljava/lang/Runnable;
    :cond_3
    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenHint;->showTouchToast()V

    goto :goto_1
.end method

.method public showObjectTrackHint(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 4
    .param p1, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-virtual {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_first_tap_screen_hint_shown_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    const v2, 0x7f0e0189

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 86
    return-void
.end method

.method public updateHint()V
    .locals 6

    .prologue
    .line 30
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    .line 31
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "message":Ljava/lang/String;
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 34
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e000a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    .line 47
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_6

    .line 48
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 52
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    .line 57
    :cond_1
    :goto_2
    return-void

    .line 35
    :cond_2
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 36
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e000c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_3
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v4, -0x3

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 38
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_4
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/32 v4, 0x3200000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 40
    invoke-static {}, Lcom/android/camera/storage/Storage;->isPhoneStoragePriority()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e00d6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e00d7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 53
    :cond_7
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2
.end method
