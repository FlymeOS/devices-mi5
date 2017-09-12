.class Lcom/android/server/policy/MiuiScreenOnProximityLock$2;
.super Landroid/os/Handler;
.source "MiuiScreenOnProximityLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/server/policy/MiuiKeyguardServiceDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    monitor-enter v1

    .line 73
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    monitor-exit v1

    .line 92
    return-void

    .line 75
    :pswitch_0
    const-string v0, "MiuiScreenOnProximityLock"

    const-string v2, "far from the screen for a certain time, release proximity sensor..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->release()Z

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 80
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    # invokes: Lcom/android/server/policy/MiuiScreenOnProximityLock;->prepareHintWindow()V
    invoke-static {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->access$100(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    # invokes: Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseHintWindow()V
    invoke-static {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->access$200(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    # invokes: Lcom/android/server/policy/MiuiScreenOnProximityLock;->showHint()V
    invoke-static {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->access$300(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
