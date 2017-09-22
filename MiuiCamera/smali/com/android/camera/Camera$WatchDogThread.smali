.class Lcom/android/camera/Camera$WatchDogThread;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchDogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/Camera;
    .param p2, "x1"    # Lcom/android/camera/Camera$1;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$WatchDogThread;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 432
    const-string v2, "ANR-WatchDog"

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera$WatchDogThread;->setName(Ljava/lang/String;)V

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera$WatchDogThread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "watch dog run "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v2, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    # getter for: Lcom/android/camera/Camera;->mTick:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)I

    move-result v1

    .line 438
    .local v1, "lastTick":I
    iget-object v2, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    # getter for: Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$200(Lcom/android/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    iget-object v2, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    # getter for: Lcom/android/camera/Camera;->mTick:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 449
    iget-object v2, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->setEdgeMode(Landroid/content/Context;Z)V

    .line 453
    .end local v1    # "lastTick":I
    :cond_1
    :goto_0
    return-void

    .line 441
    .restart local v1    # "lastTick":I
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "watch dog InterruptedException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
