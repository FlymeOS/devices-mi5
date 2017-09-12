.class Lcom/android/server/connectivity/PermissionMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "PermissionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PermissionMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PermissionMonitor;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.extra.user_handle"

    const/16 v7, -0x2710

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 79
    .local v5, "user":I
    const-string v6, "android.intent.extra.UID"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 80
    .local v3, "appUid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 81
    .local v1, "appData":Landroid/net/Uri;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "appName":Ljava/lang/String;
    :goto_0
    const-string v6, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 85
    .local v4, "removedForAllUsers":Z
    const-string v6, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->onUserAdded(I)V
    invoke-static {v6, v5}, Lcom/android/server/connectivity/PermissionMonitor;->access$000(Lcom/android/server/connectivity/PermissionMonitor;I)V

    .line 94
    :cond_0
    :goto_1
    return-void

    .line 81
    .end local v2    # "appName":Ljava/lang/String;
    .end local v4    # "removedForAllUsers":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 87
    .restart local v2    # "appName":Ljava/lang/String;
    .restart local v4    # "removedForAllUsers":Z
    :cond_2
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->onUserRemoved(I)V
    invoke-static {v6, v5}, Lcom/android/server/connectivity/PermissionMonitor;->access$100(Lcom/android/server/connectivity/PermissionMonitor;I)V

    goto :goto_1

    .line 89
    :cond_3
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 90
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->onAppAdded(Ljava/lang/String;II)V
    invoke-static {v6, v2, v3, v5}, Lcom/android/server/connectivity/PermissionMonitor;->access$200(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;II)V

    goto :goto_1

    .line 91
    :cond_4
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->onAppRemoved(IZI)V
    invoke-static {v6, v3, v4, v5}, Lcom/android/server/connectivity/PermissionMonitor;->access$300(Lcom/android/server/connectivity/PermissionMonitor;IZI)V

    goto :goto_1
.end method
