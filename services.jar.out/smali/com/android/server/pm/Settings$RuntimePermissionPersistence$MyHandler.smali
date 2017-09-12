.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V
    .locals 1

    .prologue
    .line 4832
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$1:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 4833
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4834
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 4838
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4839
    .local v1, "userId":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 4840
    .local v0, "callback":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$1:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    # invokes: Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V
    invoke-static {v2, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$200(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4841
    if-eqz v0, :cond_0

    .line 4842
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4844
    :cond_0
    return-void
.end method
