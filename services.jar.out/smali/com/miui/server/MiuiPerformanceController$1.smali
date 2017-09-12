.class Lcom/miui/server/MiuiPerformanceController$1;
.super Ljava/lang/Object;
.source "MiuiPerformanceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiPerformanceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiPerformanceController;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiPerformanceController;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/server/MiuiPerformanceController$1;->this$0:Lcom/miui/server/MiuiPerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/miui/server/MiuiPerformanceController$1;->this$0:Lcom/miui/server/MiuiPerformanceController;

    invoke-static {p2}, Lcom/miui/server/IMiuiPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/server/IMiuiPerfService;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/server/MiuiPerformanceController;->mPerfService:Lcom/miui/server/IMiuiPerfService;

    .line 58
    iget-object v1, p0, Lcom/miui/server/MiuiPerformanceController$1;->this$0:Lcom/miui/server/MiuiPerformanceController;

    iget-object v1, v1, Lcom/miui/server/MiuiPerformanceController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    :try_start_0
    const-string v1, "MiuiPerformanceController"

    const-string v2, "Miui performance service connected!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/miui/server/MiuiPerformanceController$1;->this$0:Lcom/miui/server/MiuiPerformanceController;

    iget-object v1, v1, Lcom/miui/server/MiuiPerformanceController;->mPerfService:Lcom/miui/server/IMiuiPerfService;

    invoke-interface {v1}, Lcom/miui/server/IMiuiPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/MiuiPerformanceController$1;->this$0:Lcom/miui/server/MiuiPerformanceController;

    iget-object v2, v2, Lcom/miui/server/MiuiPerformanceController;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 48
    const-string v0, "MiuiPerformanceController"

    const-string v1, "Miui performance service disconnected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/miui/server/MiuiPerformanceController$1;->this$0:Lcom/miui/server/MiuiPerformanceController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/server/MiuiPerformanceController;->mPerfService:Lcom/miui/server/IMiuiPerfService;

    .line 50
    iget-object v0, p0, Lcom/miui/server/MiuiPerformanceController$1;->this$0:Lcom/miui/server/MiuiPerformanceController;

    # getter for: Lcom/miui/server/MiuiPerformanceController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/MiuiPerformanceController;->access$000(Lcom/miui/server/MiuiPerformanceController;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/miui/server/MiuiPerformanceController$1;->this$0:Lcom/miui/server/MiuiPerformanceController;

    # getter for: Lcom/miui/server/MiuiPerformanceController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/MiuiPerformanceController;->access$000(Lcom/miui/server/MiuiPerformanceController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/MiuiPerformanceController$1;->this$0:Lcom/miui/server/MiuiPerformanceController;

    # getter for: Lcom/miui/server/MiuiPerformanceController;->mPerformanceConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/miui/server/MiuiPerformanceController;->access$100(Lcom/miui/server/MiuiPerformanceController;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 53
    :cond_0
    return-void
.end method
