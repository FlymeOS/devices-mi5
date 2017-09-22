.class public Lcom/android/camera/snap/SnapKeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SnapKeyReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/camera/snap/SnapKeyReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/snap/SnapKeyReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedQuickSnap()Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v2, "miui.intent.action.CAMERA_KEY_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-static {p1}, Lcom/android/camera/snap/SnapCamera;->isSnapEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 46
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x1a

    const-string v3, "key_code"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    :cond_3
    const/4 v2, 0x1

    sget-object v3, Lcom/android/camera/snap/SnapKeyReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 55
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v2

    const-string v3, "key_code"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "key_action"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "key_event_time"

    invoke-virtual {p2, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/camera/snap/SnapTrigger;->handleKeyEvent(IIJ)V

    goto :goto_0

    .line 61
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/camera/snap/SnapService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "key_code"

    const-string v3, "key_code"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v2, "key_action"

    const-string v3, "key_action"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v2, "key_event_time"

    const-string v3, "key_event_time"

    invoke-virtual {p2, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
