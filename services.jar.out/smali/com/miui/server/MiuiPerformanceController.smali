.class public Lcom/miui/server/MiuiPerformanceController;
.super Ljava/lang/Object;
.source "MiuiPerformanceController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DELAY_TIME:J = 0x1b7740L

.field static final MSG_REBIND:I = 0x1

.field public static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.miui.performance.MiuiPerfService"

.field public static final PERFORMANCE_PACKAGE:Ljava/lang/String; = "com.miui.performance"

.field private static final TAG:Ljava/lang/String; = "MiuiPerformanceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field final mHandler:Landroid/os/Handler;

.field protected mPerfService:Lcom/miui/server/IMiuiPerfService;

.field private final mPerformanceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/miui/server/MiuiPerformanceController$1;

    invoke-direct {v0, p0}, Lcom/miui/server/MiuiPerformanceController$1;-><init>(Lcom/miui/server/MiuiPerformanceController;)V

    iput-object v0, p0, Lcom/miui/server/MiuiPerformanceController;->mPerformanceConnection:Landroid/content/ServiceConnection;

    .line 68
    new-instance v0, Lcom/miui/server/MiuiPerformanceController$2;

    invoke-direct {v0, p0}, Lcom/miui/server/MiuiPerformanceController$2;-><init>(Lcom/miui/server/MiuiPerformanceController;)V

    iput-object v0, p0, Lcom/miui/server/MiuiPerformanceController;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 78
    new-instance v0, Lcom/miui/server/MiuiPerformanceController$3;

    invoke-direct {v0, p0}, Lcom/miui/server/MiuiPerformanceController$3;-><init>(Lcom/miui/server/MiuiPerformanceController;)V

    iput-object v0, p0, Lcom/miui/server/MiuiPerformanceController;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/miui/server/MiuiPerformanceController;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/miui/server/MiuiPerformanceController;->bindService()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/MiuiPerformanceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/MiuiPerformanceController;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/miui/server/MiuiPerformanceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/server/MiuiPerformanceController;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/MiuiPerformanceController;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/miui/server/MiuiPerformanceController;->mPerformanceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/server/MiuiPerformanceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/MiuiPerformanceController;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/server/MiuiPerformanceController;->bindService()V

    return-void
.end method

.method private bindService()V
    .locals 5

    .prologue
    .line 33
    iget-object v1, p0, Lcom/miui/server/MiuiPerformanceController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/MiuiPerformanceController;->mPerfService:Lcom/miui/server/IMiuiPerfService;

    if-nez v1, :cond_0

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.performance"

    const-string v2, "com.miui.performance.MiuiPerfService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/miui/server/MiuiPerformanceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/MiuiPerformanceController;->mPerformanceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    const-string v1, "MiuiPerformanceController"

    const-string v2, "Miui performance: can\'t bind to com.miui.performance.MiuiPerfService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 40
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "MiuiPerformanceController"

    const-string v2, "Miui performance service started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
