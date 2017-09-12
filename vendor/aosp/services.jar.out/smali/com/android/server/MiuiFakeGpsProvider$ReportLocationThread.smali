.class Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;
.super Ljava/lang/Thread;
.source "MiuiFakeGpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiFakeGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportLocationThread"
.end annotation


# instance fields
.field private mLocation:Landroid/location/Location;

.field private mOnceRun:Z

.field private mPause:Z

.field private mStop:Z

.field final synthetic this$0:Lcom/android/server/MiuiFakeGpsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 360
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    .line 361
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mPause:Z

    .line 364
    iput-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    .line 365
    iput-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mOnceRun:Z

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    .line 367
    return-void
.end method


# virtual methods
.method public letStop()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    .line 382
    invoke-virtual {p0}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->interrupt()V

    .line 383
    return-void
.end method

.method public reschedule()V
    .locals 2

    .prologue
    .line 375
    sget-boolean v0, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "MiuiGpsProvider"

    const-string v1, "location thread reschedule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mPause:Z

    .line 377
    invoke-virtual {p0}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->interrupt()V

    .line 378
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/MiuiFakeGpsProvider;->access$400(Lcom/android/server/MiuiFakeGpsProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z
    invoke-static {v0, v2}, Lcom/android/server/MiuiFakeGpsProvider;->access$502(Lcom/android/server/MiuiFakeGpsProvider;Z)Z

    .line 393
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/MiuiFakeGpsProvider;->access$400(Lcom/android/server/MiuiFakeGpsProvider;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 394
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    if-nez v0, :cond_1

    .line 396
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mPause:Z

    if-nez v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    # invokes: Lcom/android/server/MiuiFakeGpsProvider;->reportLocation(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$600(Lcom/android/server/MiuiFakeGpsProvider;Landroid/location/Location;)V

    .line 400
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mOnceRun:Z

    if-eqz v0, :cond_2

    .line 421
    :cond_1
    return-void

    .line 394
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 404
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I
    invoke-static {v0}, Lcom/android/server/MiuiFakeGpsProvider;->access$700(Lcom/android/server/MiuiFakeGpsProvider;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 405
    :catch_0
    move-exception v0

    goto :goto_1

    .line 410
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    if-nez v0, :cond_1

    .line 415
    :try_start_3
    const-string v0, "MiuiGpsProvider"

    const-string v1, "report location pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 417
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setLocationLocked(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    .line 371
    return-void
.end method

.method public setOnceRun(Z)V
    .locals 0
    .param p1, "onceRun"    # Z

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mOnceRun:Z

    .line 387
    return-void
.end method
