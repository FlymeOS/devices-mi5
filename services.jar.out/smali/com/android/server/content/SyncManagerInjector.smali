.class public Lcom/android/server/content/SyncManagerInjector;
.super Ljava/lang/Object;
.source "SyncManagerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_FOR_NET_RECHABLE_DISCONNECT:Ljava/lang/String; = "android.os.action.networkDisconnectFromInternet"

.field private static final ACTION_FOR_NET_RECHABLE_RECONNECT:Ljava/lang/String; = "android.os.action.networkReconnectToInternet"

.field public static final REASON_NET_REACHABLE_CHANGED:I = -0x9

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static volatile mNetReachableStat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/content/SyncManagerInjector;->mNetReachableStat:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 13
    invoke-static {p0}, Lcom/android/server/content/SyncManagerInjector;->setNetReachableStat(Z)V

    return-void
.end method

.method public static canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static initNetReachableControl(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 64
    new-instance v0, Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;

    invoke-direct {v0, p1}, Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 66
    .local v0, "netReachableIntentReceiver":Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;
    invoke-static {p0, v0}, Lcom/android/server/content/SyncManagerInjector;->registerNetReachableIntentReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void
.end method

.method public static isNetReachable()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/server/content/SyncManagerInjector;->mNetReachableStat:Z

    return v0
.end method

.method private static registerNetReachableIntentReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.networkReconnectToInternet"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.networkDisconnectFromInternet"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method private static setNetReachableStat(Z)V
    .locals 0
    .param p0, "netReachableStat"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/android/server/content/SyncManagerInjector;->mNetReachableStat:Z

    .line 57
    return-void
.end method
