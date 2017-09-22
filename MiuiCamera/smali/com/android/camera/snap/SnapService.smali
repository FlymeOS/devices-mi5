.class public Lcom/android/camera/snap/SnapService;
.super Landroid/app/Service;
.source "SnapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/snap/SnapService$InnerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/camera/snap/SnapService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    new-instance v0, Lcom/android/camera/snap/SnapService$InnerHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapService$InnerHandler;-><init>(Lcom/android/camera/snap/SnapService;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    .line 27
    new-instance v0, Lcom/android/camera/snap/SnapService$1;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapService$1;-><init>(Lcom/android/camera/snap/SnapService;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/snap/SnapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/snap/SnapService;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->destroy()V

    return-void
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->unregistPowerkeyReceiver()V

    .line 69
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/camera/snap/SnapService$InnerHandler;->removeMessages(I)V

    .line 70
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->destroy()V

    .line 71
    return-void
.end method

.method private registePowerkeyReceiver()V
    .locals 2

    .prologue
    .line 112
    iget-boolean v1, p0, Lcom/android/camera/snap/SnapService;->mRegistered:Z

    if-nez v1, :cond_0

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "keyEventReceiver":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.KEYCODE_POWER_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/camera/snap/SnapService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/snap/SnapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/snap/SnapService;->mRegistered:Z

    .line 120
    .end local v0    # "keyEventReceiver":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private triggerWatchdog()V
    .locals 4

    .prologue
    const/16 v1, 0x65

    .line 101
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/snap/SnapService$InnerHandler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/snap/SnapService$InnerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    return-void
.end method

.method private unregistPowerkeyReceiver()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapService;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/snap/SnapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/snap/SnapService;->mRegistered:Z

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 108
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->destroy()V

    .line 109
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 77
    sget-object v0, Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;

    const-string v1, "start service"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->triggerWatchdog()V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/snap/SnapTrigger;->init(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v0

    const-string v1, "key_code"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "key_action"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "key_event_time"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/camera/snap/SnapTrigger;->handleKeyEvent(IIJ)V

    .line 86
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->registePowerkeyReceiver()V

    .line 93
    :cond_0
    return-void
.end method
