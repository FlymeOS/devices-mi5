.class public abstract Lcom/android/camera/ActivityBase;
.super Landroid/app/Activity;
.source "ActivityBase.java"


# instance fields
.field protected mActivityPaused:Z

.field private mApplication:Lcom/android/camera/CameraAppImpl;

.field protected mCameraBrightness:Lcom/android/camera/CameraBrightness;

.field protected mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mCameraSound:Lcom/android/camera/MiuiCameraSound;

.field private mCloseActivityThread:Ljava/lang/Thread;

.field protected mCurrentModule:Lcom/android/camera/module/Module;

.field protected final mHandler:Landroid/os/Handler;

.field private mIsFinishInKeygard:Z

.field private mJumpFlag:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardSecureLocked:Z

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field protected mOrientation:I

.field protected mPaused:Z

.field private mResetGotoGallery:Ljava/lang/Runnable;

.field protected mScreenHint:Lcom/android/camera/ui/ScreenHint;

.field private mSecureUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mStartFromKeyguard:Z

.field private mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

.field protected mUIController:Lcom/android/camera/ui/UIController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    .line 65
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    .line 68
    iput v1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 79
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeygard:Z

    .line 80
    new-instance v0, Lcom/android/camera/ActivityBase$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$1;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    .line 496
    new-instance v0, Lcom/android/camera/ActivityBase$4;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$4;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mResetGotoGallery:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ActivityBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ActivityBase;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeygard:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ActivityBase;)Lcom/android/camera/CameraAppImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ActivityBase;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ActivityBase;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    return p1
.end method

.method private checkKeyguardFlag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 175
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 176
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    .line 177
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 180
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeygard:Z

    .line 181
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v0, v3}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 191
    :cond_2
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->lockScreenDelayed()V

    .line 195
    :goto_0
    const-string v1, "ActivityBase"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkKeyguard: fromKeyguard="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " keyguardSecureLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " secureUriList is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 193
    :cond_3
    iput-object v3, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    goto :goto_0

    .line 195
    :cond_4
    const-string v0, "not null"

    goto :goto_1
.end method

.method private initCameraScreenNail()V
    .locals 5

    .prologue
    .line 337
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-nez v2, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 339
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 340
    .local v1, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 341
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 342
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 343
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 345
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "point":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method private releaseCameraScreenNail()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 351
    :cond_0
    return-void
.end method


# virtual methods
.method public addSecureUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_1
    return-void
.end method

.method public createCameraScreenNail(ZZ)V
    .locals 2
    .param p1, "getPictures"    # Z
    .param p2, "recreate"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/android/camera/CameraScreenNail;

    new-instance v1, Lcom/android/camera/ActivityBase$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ActivityBase$3;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-direct {v0, v1}, Lcom/android/camera/CameraScreenNail;-><init>(Lcom/android/camera/CameraScreenNail$Listener;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->initCameraScreenNail()V

    .line 334
    return-void
.end method

.method public dismissKeyguard()V
    .locals 2

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v0, :cond_0

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    .line 515
    :cond_0
    return-void
.end method

.method public getCameraAppImpl()Lcom/android/camera/CameraAppImpl;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public getCurrentModule()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    return-object v0
.end method

.method protected getKeyguardFlag()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 169
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "StartActivityWhenLocked"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getScreenHint()Lcom/android/camera/ui/ScreenHint;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    return-object v0
.end method

.method public getSecureUriList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSoundPlayTime()J
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0}, Lcom/android/camera/MiuiCameraSound;->getLastSoundPlayTime()J

    move-result-wide v0

    .line 422
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    return-object v0
.end method

.method public getUIController()Lcom/android/camera/ui/UIController;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mUIController:Lcom/android/camera/ui/UIController;

    return-object v0
.end method

.method public gotoGallery()V
    .locals 10

    .prologue
    .line 426
    iget-boolean v5, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v5, :cond_0

    .line 427
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v5}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v3

    .line 428
    .local v3, "t":Lcom/android/camera/Thumbnail;
    if-eqz v3, :cond_0

    .line 429
    invoke-virtual {v3}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 430
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 431
    const-string v5, "ActivityBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uri invalid. uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached()V

    .line 469
    .end local v3    # "t":Lcom/android/camera/Thumbnail;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 436
    .restart local v3    # "t":Lcom/android/camera/Thumbnail;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.REVIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 437
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.miui.gallery"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v5, "from_MiuiCamera"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    invoke-static {}, Lcom/android/camera/Device;->adjustScreenLight()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v5}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 440
    const-string v5, "camera-brightness"

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v6}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 443
    const-string v5, "StartActivityWhenLocked"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 446
    const-string v5, "SecureUri"

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 448
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 449
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 456
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mResetGotoGallery:Ljava/lang/Runnable;

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 459
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v5, Lcom/android/camera/module/BaseModule;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 462
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/android/camera/ActivityBase;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 463
    :catch_1
    move-exception v0

    .line 464
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "ActivityBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "review image fail. uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
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

.method public isActivityPaused()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    return v0
.end method

.method public isGotoGallery()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 485
    iget v1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNeedResetGotoGallery()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 489
    iget v2, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v2, v0, :cond_0

    .line 490
    iput v1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 493
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    return v0
.end method

.method public isScanQRCodeIntent()Z
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.camera.action.QR_CODE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public loadCameraSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0, p1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    .line 416
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/module/Module;->onActivityResult(IILandroid/content/Intent;)V

    .line 473
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setVolumeControlStream(I)V

    .line 137
    new-instance v0, Lcom/android/camera/ui/ScreenHint;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ScreenHint;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    .line 138
    new-instance v0, Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {v0, p0}, Lcom/android/camera/ThumbnailUpdater;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    .line 139
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 141
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraAppImpl;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    .line 142
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->addActivity(Landroid/app/Activity;)V

    .line 143
    new-instance v0, Lcom/android/camera/CameraBrightness;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraBrightness;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    .line 144
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 146
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/ActivityBase$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ActivityBase$2;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 285
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->removeInstance(Landroid/content/Context;)V

    .line 286
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 287
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->removeActivity(Landroid/app/Activity;)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0}, Lcom/android/camera/MiuiCameraSound;->release()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    .line 292
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 293
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 269
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 270
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLayoutChange(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p2, p1}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->pause()V

    .line 204
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mResetGotoGallery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iput-object v3, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    .line 208
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    return-void
.end method

.method protected onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPreviewTextureCopied()V

    .line 367
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 164
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->checkKeyguardFlag()V

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->resume()V

    .line 166
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onPause()V

    .line 227
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->releaseCameraScreenNail()V

    .line 228
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v1}, Lcom/android/camera/CameraBrightness;->onPause()V

    .line 229
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeygard:Z

    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->finish()V

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    if-eqz v1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->saveThumbnailToFile()V

    .line 249
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->cancelTask()V

    .line 251
    :cond_3
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public playCameraSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0, p1}, Lcom/android/camera/MiuiCameraSound;->playSound(I)V

    .line 410
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-nez v1, :cond_0

    .line 215
    new-instance v1, Lcom/android/camera/MiuiCameraSound;

    invoke-direct {v1, p0}, Lcom/android/camera/MiuiCameraSound;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->initCameraScreenNail()V

    .line 218
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onResume()V

    .line 219
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onResume()V

    .line 220
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 221
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 222
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v1}, Lcom/android/camera/CameraBrightness;->onResume()V

    .line 223
    return-void
.end method

.method public setJumpFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 508
    iput p1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 509
    return-void
.end method

.method public startFromKeyguard()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    return v0
.end method

.method public startFromSecureKeyguard()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    return v0
.end method
