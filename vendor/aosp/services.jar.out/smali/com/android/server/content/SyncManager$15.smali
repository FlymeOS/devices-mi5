.class Lcom/android/server/content/SyncManager$15;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .prologue
    .line 3552
    iput-object p1, p0, Lcom/android/server/content/SyncManager$15;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3557
    iget-object v0, p0, Lcom/android/server/content/SyncManager$15;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->isTrafficForbidden(Lcom/android/server/content/SyncOperation;)Z
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3558
    const-string v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3559
    const-string v0, "SyncManager"

    const-string v2, "sync on wifi switch turns on, reschedule all sync"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$15;->this$0:Lcom/android/server/content/SyncManager;

    sget-object v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 3566
    :goto_0
    return-void

    .line 3563
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$15;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v10, 0x0

    move v3, v2

    move-object v4, v1

    move-object v5, v1

    move-wide v8, v6

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    goto :goto_0
.end method
