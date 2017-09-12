.class public Lcom/android/server/policy/MiuiScreenOnProximityLock;
.super Ljava/lang/Object;
.source "MiuiScreenOnProximityLock.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENT_PREPARE_VIEW:I = 0x1

.field private static final EVENT_RELEASE:I = 0x0

.field private static final EVENT_RELEASE_VIEW:I = 0x3

.field private static final EVENT_SHOW_VIEW:I = 0x2

.field private static final FIRST_CHANGE_TIMEOUT:I = 0x5dc

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiScreenOnProximityLock"


# instance fields
.field private mAquiredTime:J

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field protected mHintContainer:Landroid/view/ViewGroup;

.field protected mHintView:Landroid/view/View;

.field protected mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

.field private mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

.field private final mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/MiuiKeyguardServiceDelegate;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardDelegate"    # Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    .line 54
    new-instance v1, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    iput-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .line 66
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    .line 69
    new-instance v1, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;

    iget-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    .line 95
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 98
    .local v0, "mWindowManager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->prepareHintWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseHintWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->showHint()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private prepareHintWindow()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 158
    new-instance v2, Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const v5, 0x103006b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    .line 159
    iget-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;

    invoke-direct {v3, p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d9

    const v4, 0x1021100

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 177
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 178
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 179
    const-string v1, "ScreenOnProximitySensorGuide"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 181
    .local v6, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->enableUserActivity(Z)V

    .line 184
    return-void
.end method

.method private releaseHintWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 187
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    .line 188
    .local v1, "container":Landroid/view/View;
    if-nez v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 192
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 220
    .end local v2    # "wm":Landroid/view/WindowManager;
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->enableUserActivity(Z)V

    .line 223
    :cond_1
    iput-object v6, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    goto :goto_0

    .line 195
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 196
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 197
    new-instance v3, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;

    invoke-direct {v3, p0, v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 216
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 217
    iput-object v6, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    goto :goto_1

    .line 195
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showHint()V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const-wide/16 v8, 0x1f4

    .line 227
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const-string v4, "MiuiScreenOnProximityLock"

    const-string v5, "show hint..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const v3, 0x11030013

    .line 233
    .local v3, "resource":I
    iget-boolean v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    if-eqz v4, :cond_2

    .line 234
    const v3, 0x11030014

    .line 236
    :cond_2
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const v6, 0x103006b

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    invoke-static {v4, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    .line 240
    iget-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 241
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 242
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 244
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 245
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 246
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 247
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 248
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 250
    iget-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    const v5, 0x110b002e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 251
    .local v1, "animationView":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 240
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public declared-synchronized aquire()V
    .locals 4

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string v0, "MiuiScreenOnProximityLock"

    const-string v1, "aquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J

    .line 112
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    new-instance v0, Lmiui/util/ProximitySensorWrapper;

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/util/ProximitySensorWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    .line 116
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    invoke-virtual {v0, v1}, Lmiui/util/ProximitySensorWrapper;->registerListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public forceShow()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 155
    return-void
.end method

.method public declared-synchronized isHeld()Z
    .locals 4

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 121
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "MiuiScreenOnProximityLock"

    const-string v2, "release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J

    .line 124
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    invoke-virtual {v1}, Lmiui/util/ProximitySensorWrapper;->unregisterAllListeners()V

    .line 125
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldBeBlocked(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 150
    :cond_1
    :goto_0
    return v1

    .line 136
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 139
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 140
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :sswitch_1
    move v1, v2

    .line 148
    goto :goto_0

    .line 136
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
    .end sparse-switch
.end method
