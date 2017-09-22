.class public Lcom/android/camera/ui/V6SettingPage;
.super Landroid/widget/RelativeLayout;
.source "V6SettingPage.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mDefaultColumnCount:I

.field private mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

.field private mEnabled:Z

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mIndicatorWidth:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mModeView:Lcom/android/camera/ui/ModeView;

.field public mOrientation:I

.field private mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field public mSettingButton:Lcom/android/camera/ui/V6SettingButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V
    .locals 2
    .param p1, "group"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "pref"    # Lcom/android/camera/preferences/ListPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Lcom/android/camera/preferences/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 423
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 424
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6SettingPage;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    .line 435
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/preferences/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 429
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 430
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6SettingPage;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 434
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SettingPage;->resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V

    goto :goto_0
.end method

.method private initAnimation()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    const v1, 0x7f05000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    const v1, 0x7f05000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    return-void
.end method

.method private initPreference()V
    .locals 11

    .prologue
    .line 368
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    .line 369
    .local v1, "cameraId":I
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 370
    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/android/camera/ActivityBase;

    invoke-virtual {v9}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 372
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_video_quality_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v7

    .line 373
    .local v7, "videoQuality":Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_delay_capture_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v3

    .line 374
    .local v3, "delayCapture":Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v6

    .line 375
    .local v6, "timeLapseInterval":Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_camera_whitebalance_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v8

    .line 376
    .local v8, "whiteBalance":Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_camera_scenemode_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v5

    .line 377
    .local v5, "sceneMode":Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_camera_coloreffect_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v2

    .line 378
    .local v2, "colorEffect":Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_camera_focus_mode_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    .line 382
    .local v0, "cameraFocusMode":Lcom/android/camera/preferences/ListPreference;
    if-eqz v7, :cond_0

    .line 383
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {p0, v9, v7, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 386
    :cond_0
    if-eqz v8, :cond_1

    .line 387
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedWhiteBalance(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v8, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 390
    :cond_1
    if-eqz v5, :cond_2

    .line 391
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v5, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 395
    :cond_2
    if-eqz v2, :cond_3

    .line 396
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v2, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 400
    :cond_3
    if-eqz v0, :cond_4

    .line 401
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v0, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 405
    :cond_4
    if-eqz v6, :cond_5

    invoke-direct {p0, v6}, Lcom/android/camera/ui/V6SettingPage;->resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V

    .line 410
    :cond_5
    return-void
.end method

.method private removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p1, "group"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 446
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/android/camera/preferences/PreferenceGroup;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 447
    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/PreferenceGroup;->get(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v0

    .line 448
    .local v0, "child":Lcom/android/camera/preferences/CameraPreference;
    instance-of v3, v0, Lcom/android/camera/preferences/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 449
    check-cast v3, Lcom/android/camera/preferences/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/camera/ui/V6SettingPage;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 459
    .end local v0    # "child":Lcom/android/camera/preferences/CameraPreference;
    :goto_1
    return v3

    .line 453
    .restart local v0    # "child":Lcom/android/camera/preferences/CameraPreference;
    :cond_0
    instance-of v3, v0, Lcom/android/camera/preferences/ListPreference;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/camera/preferences/ListPreference;

    .end local v0    # "child":Lcom/android/camera/preferences/CameraPreference;
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 455
    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/PreferenceGroup;->removePreference(I)V

    move v3, v4

    .line 456
    goto :goto_1

    .line 446
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/android/camera/preferences/ListPreference;

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 441
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 443
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->clearAnimation()V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 145
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    .line 146
    return-void
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 221
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f090085

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f090082

    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6SettingPage;->setEnabled(Z)V

    .line 209
    iput-boolean p1, p0, Lcom/android/camera/ui/V6SettingPage;->mEnabled:Z

    .line 210
    return-void
.end method

.method public getCurrentPopup()Landroid/view/View;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->getCurrentPopup()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method protected initIndicators()V
    .locals 4

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v0

    .line 270
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/android/camera/ui/ModeView;->initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/MessageDispacher;I)V

    goto :goto_0
.end method

.method public isItemSelected()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->isItemSelected()Z

    move-result v0

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x0

    .line 499
    const/4 v2, 0x0

    .line 500
    .local v2, "id":I
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_2

    .line 502
    const v2, 0x7f09000c

    .line 506
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 514
    :cond_1
    return-void

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 504
    const v2, 0x7f09000b

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 517
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 495
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->reload()V

    .line 78
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->resetSelectedFlag()V

    .line 73
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 61
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDefaultColumnCount:I

    .line 62
    const v0, 0x7f090083

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModeView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    .line 63
    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    .line 64
    const v0, 0x7f090085

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingDismissButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicatorWidth:I

    .line 67
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPage;->initAnimation()V

    .line 68
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    .line 94
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeView;->overrideSettings([Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 103
    const-string v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reload getid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->removePopup()V

    .line 113
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    .line 116
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPage;->initPreference()V

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->updatePreference()V

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->initIndicators()V

    .line 119
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->reloadPreferences()V

    .line 361
    return-void
.end method

.method public removePopup()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->removePopup()V

    .line 192
    return-void
.end method

.method public resetSettings()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->resetSettings()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SettingButton;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeView;->setEnabled(Z)V

    .line 341
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 342
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 1
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 214
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SettingButton;->setMessageDispatcher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SettingDismissButton;->setMessageDispatcher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 216
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 346
    iput p1, p0, Lcom/android/camera/ui/V6SettingPage;->mOrientation:I

    .line 347
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ModeView;->setOrientation(IZ)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6SettingButton;->setOrientation(IZ)V

    .line 349
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V6SettingPage setVisibility ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->clearAnimation()V

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->reloadPreferences()V

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->enableControls(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    return-void
.end method

.method public updatePreference()V
    .locals 4

    .prologue
    .line 463
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 465
    .local v0, "cameraId":I
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v2, "pref_video_speed_slow_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->setEnable(Z)V

    .line 471
    :cond_0
    return-void

    .line 467
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
