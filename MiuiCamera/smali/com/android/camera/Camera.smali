.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$LogThread;,
        Lcom/android/camera/Camera$WatchDogThread;,
        Lcom/android/camera/Camera$MyOrientationEventListener;
    }
.end annotation


# instance fields
.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mContentInflated:Z

.field private mCurrentModuleIndex:I

.field private mDebugThread:Lcom/android/camera/Camera$LogThread;

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mIsFromLauncher:Z

.field private mLastIgnoreKey:I

.field private mLastKeyEventTime:J

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mSensorStateManager:Lcom/android/camera/SensorStateManager;

.field private mTick:I

.field private mWatchDog:Ljava/lang/Thread;

.field private final tickerRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 65
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    .line 465
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/Camera;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/Camera;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/Camera;->mTick:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/Camera;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/Camera;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/camera/Camera;->mTick:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/Camera;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private closeModule(Lcom/android/camera/module/Module;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/module/Module;

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 233
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    .line 234
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    .line 235
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onStop()V

    .line 236
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 237
    return-void
.end method

.method private getCameraByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Lcom/android/camera/camera_adapter/CameraPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraPadOne;-><init>()V

    .line 270
    :goto_0
    return-object v0

    .line 260
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    new-instance v0, Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraQcom;-><init>()V

    goto :goto_0

    .line 262
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    new-instance v0, Lcom/android/camera/camera_adapter/CameraLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraLC;-><init>()V

    goto :goto_0

    .line 264
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    new-instance v0, Lcom/android/camera/camera_adapter/CameraNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraNv;-><init>()V

    goto :goto_0

    .line 266
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraMTK;-><init>()V

    goto :goto_0

    .line 270
    :cond_4
    new-instance v0, Lcom/android/camera/module/CameraModule;

    invoke-direct {v0}, Lcom/android/camera/module/CameraModule;-><init>()V

    goto :goto_0
.end method

.method private getModuleByIndex(I)Lcom/android/camera/module/Module;
    .locals 2
    .param p1, "moduleIndex"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "module":Lcom/android/camera/module/Module;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 242
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 243
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 244
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule;

    .end local v0    # "module":Lcom/android/camera/module/Module;
    invoke-direct {v0}, Lcom/android/camera/module/MorphoPanoramaModule;-><init>()V

    .line 254
    .restart local v0    # "module":Lcom/android/camera/module/Module;
    :goto_0
    return-object v0

    .line 245
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 246
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 247
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 248
    invoke-direct {p0}, Lcom/android/camera/Camera;->getVideoByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 251
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 252
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    goto :goto_0
.end method

.method private getVideoByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lcom/android/camera/camera_adapter/VideoQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoQcom;-><init>()V

    .line 286
    :goto_0
    return-object v0

    .line 276
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    new-instance v0, Lcom/android/camera/camera_adapter/VideoLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoLC;-><init>()V

    goto :goto_0

    .line 278
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    new-instance v0, Lcom/android/camera/camera_adapter/VideoNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoNv;-><init>()V

    goto :goto_0

    .line 280
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    new-instance v0, Lcom/android/camera/camera_adapter/VideoMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoMTK;-><init>()V

    goto :goto_0

    .line 282
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    new-instance v0, Lcom/android/camera/camera_adapter/VideoPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoPadOne;-><init>()V

    goto :goto_0

    .line 286
    :cond_4
    new-instance v0, Lcom/android/camera/module/VideoModule;

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;-><init>()V

    goto :goto_0
.end method

.method private openModule(Lcom/android/camera/module/Module;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/module/Module;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1, v0}, Lcom/android/camera/module/Module;->transferOrientationCompensation(Lcom/android/camera/module/Module;)V

    .line 224
    iput-object p1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 226
    invoke-interface {p1, p0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;)V

    .line 227
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    .line 228
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    .line 229
    return-void
.end method

.method private setTranslucentNavigation(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 108
    invoke-static {p0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 110
    .local v0, "win":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 112
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 114
    .end local v0    # "win":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private showDebug()V
    .locals 2

    .prologue
    .line 457
    invoke-static {}, Lcom/android/camera/Util;->isShowDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "CameraDebug"

    const-string v1, "ready to start show debug info "

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/android/camera/Camera;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->showDebugView()V

    .line 460
    new-instance v0, Lcom/android/camera/Camera$LogThread;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$LogThread;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    .line 461
    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$LogThread;->start()V

    .line 463
    :cond_0
    return-void
.end method

.method private switchEdgeFingerMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 412
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setEdgeMode(Landroid/content/Context;Z)V

    .line 416
    if-eqz p1, :cond_2

    .line 417
    new-instance v0, Lcom/android/camera/Camera$WatchDogThread;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$WatchDogThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    .line 418
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 422
    iput-object v1, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    goto :goto_0
.end method


# virtual methods
.method public changeRequestOrientation()V
    .locals 1

    .prologue
    .line 503
    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setRequestedOrientation(I)V

    goto :goto_0

    .line 507
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public createContentView()V
    .locals 3

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001d

    iget-object v2, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    .line 121
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 351
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public getCapturePosture()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->getCapturePosture()I

    move-result v0

    return v0
.end method

.method public getImageSaver()Lcom/android/camera/storage/ImageSaver;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object v0
.end method

.method public getSensorStateManager()Lcom/android/camera/SensorStateManager;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    return-object v0
.end method

.method public isStable()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->isStable()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    .line 294
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Lcom/android/camera/effect/EffectController;->releaseInstance()V

    .line 76
    const v1, 0x7f040023

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getKeyguardFlag()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/camera/permission/PermissionManager;->requestCameraRuntimePermissions(Landroid/app/Activity;)Z

    .line 81
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    .line 82
    const v1, 0x7f09006b

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    .line 83
    new-instance v1, Lcom/android/camera/ui/UIController;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/UIController;-><init>(Lcom/android/camera/Camera;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mUIController:Lcom/android/camera/ui/UIController;

    .line 84
    const/4 v0, -0x1

    .line 85
    .local v0, "restoreModuleIndex":I
    if-eqz p1, :cond_2

    const-string v1, "killed-moduleIndex"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 86
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 87
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1, v3}, Lcom/android/camera/module/Module;->setRestoring(Z)V

    .line 88
    const-string v1, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreModuleIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    .line 96
    invoke-static {p0}, Lcom/android/camera/Util;->updateCountryIso(Landroid/content/Context;)V

    .line 97
    new-instance v1, Lcom/android/camera/SensorStateManager;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/camera/SensorStateManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    .line 98
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1, p0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;)V

    .line 99
    new-instance v1, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v1, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 100
    new-instance v4, Lcom/android/camera/storage/ImageSaver;

    iget-object v5, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    move v1, v3

    :goto_1
    invoke-direct {v4, p0, v5, v1}, Lcom/android/camera/storage/ImageSaver;-><init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    .line 103
    invoke-direct {p0}, Lcom/android/camera/Camera;->showDebug()V

    .line 104
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setTranslucentNavigation(Z)V

    .line 105
    return-void

    .line 89
    :cond_2
    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    goto :goto_0

    .line 93
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    goto :goto_0

    :cond_5
    move v1, v2

    .line 100
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 185
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostDestroy()V

    .line 187
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->onDestory()V

    .line 188
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onDestroy()V

    .line 189
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->onDestory(Lcom/android/camera/ActivityBase;)V

    .line 190
    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera$LogThread;->setRunFlag(Z)V

    .line 193
    :cond_0
    return-void
.end method

.method public onEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 355
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 300
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 305
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const-wide/16 v4, 0x96

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v6

    :goto_0
    move v6, v0

    :goto_1
    return v6

    .line 308
    :cond_3
    iput p1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    goto :goto_1

    .line 312
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 318
    iget v1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne p1, v1, :cond_1

    .line 319
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 320
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 324
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/module/Module;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->setIntent(Landroid/content/Intent;)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onNewIntent()V

    .line 128
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 170
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mActivityPaused:Z

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 173
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    .line 174
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 175
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    .line 178
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostPause()V

    .line 179
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    .line 180
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 490
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->getCameraRuntimePermissionRequestCode()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 492
    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 495
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v1, :cond_1

    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 497
    .local v0, "recordLocation":Z
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 500
    .end local v0    # "recordLocation":Z
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getKeyguardFlag()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 137
    :cond_0
    const-string v3, "CameraActivity"

    invoke-static {p0, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 138
    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    .line 139
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mActivityPaused:Z

    .line 141
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    .line 142
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    .line 143
    iget-object v3, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v3}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 144
    invoke-static {p0}, Lcom/android/camera/Util;->getStartModuleIndex(Landroid/app/Activity;)I

    move-result v0

    .line 145
    .local v0, "switchToModuleIndex":I
    if-ltz v0, :cond_1

    iget v3, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    if-ne v0, v3, :cond_5

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    .line 147
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 148
    iget-object v3, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    .line 153
    :goto_0
    iget v3, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    if-nez v3, :cond_2

    .line 154
    invoke-static {p0}, Lcom/android/camera/Util;->replaceStartEffectRender(Landroid/app/Activity;)I

    .line 156
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-virtual {v3, v1}, Lcom/android/camera/storage/ImageSaver;->onHostResume(Z)V

    .line 158
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/zxing/QRCodeManager;->resetQRScanExit(Z)V

    .line 159
    return-void

    .line 150
    :cond_5
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 164
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onStop()V

    .line 165
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 364
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onUserInteraction()V

    .line 365
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onWindowFocusChanged(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->canIgnoreFocusChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraBrightness;->onWindowFocusChanged(Z)V

    .line 336
    :cond_0
    if-eqz p1, :cond_2

    .line 337
    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    .line 338
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->checkActivityOrientation()V

    .line 339
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->register()V

    .line 347
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->pause()V

    .line 207
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->resume()V

    .line 200
    :cond_0
    return-void
.end method

.method public setBlurFlag(Z)V
    .locals 3
    .param p1, "blurred"    # Z

    .prologue
    const/4 v1, 0x4

    .line 394
    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 396
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setBackgroundColor(I)V

    .line 401
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 399
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public switchToOtherModule(I)V
    .locals 1
    .param p1, "moduleIndex"    # I

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    .line 212
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->keep()V

    .line 213
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->closeModule(Lcom/android/camera/module/Module;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->openModule(Lcom/android/camera/module/Module;)V

    goto :goto_0
.end method
