.class Lcom/miui/server/MiuiPerformanceController$2;
.super Ljava/lang/Object;
.source "MiuiPerformanceController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    .line 68
    iput-object p1, p0, Lcom/miui/server/MiuiPerformanceController$2;->this$0:Lcom/miui/server/MiuiPerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 71
    const-string v1, "MiuiPerformanceController"

    const-string v2, "Miui performance service binderDied!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/miui/server/MiuiPerformanceController$2;->this$0:Lcom/miui/server/MiuiPerformanceController;

    iget-object v1, v1, Lcom/miui/server/MiuiPerformanceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    iget-object v1, p0, Lcom/miui/server/MiuiPerformanceController$2;->this$0:Lcom/miui/server/MiuiPerformanceController;

    iget-object v1, v1, Lcom/miui/server/MiuiPerformanceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 74
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/MiuiPerformanceController$2;->this$0:Lcom/miui/server/MiuiPerformanceController;

    iget-object v1, v1, Lcom/miui/server/MiuiPerformanceController;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 75
    return-void
.end method
