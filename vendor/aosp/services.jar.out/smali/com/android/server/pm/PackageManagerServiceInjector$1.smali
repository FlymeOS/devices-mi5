.class final Lcom/android/server/pm/PackageManagerServiceInjector$1;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 747
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 766
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 750
    :pswitch_0
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v1, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;

    .line 751
    .local v1, "param":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    # getter for: Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "goon the pending installation"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    # invokes: Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->getHandler()Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->access$100(Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;)Landroid/os/Handler;

    move-result-object v0

    .line 753
    .local v0, "h":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 754
    # getter for: Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->msg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->access$200(Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    .end local v0    # "h":Landroid/os/Handler;
    .end local v1    # "param":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    :catch_0
    move-exception v2

    .line 759
    .local v2, "t":Ljava/lang/Throwable;
    # getter for: Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed goon the pending installation due to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "h":Landroid/os/Handler;
    .restart local v1    # "param":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    :cond_0
    :try_start_1
    # getter for: Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "handler dismissed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
