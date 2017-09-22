.class Lcom/android/camera/module/VideoModule$SavingTask;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingTask"
.end annotation


# instance fields
.field private mRestart:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/VideoModule;Z)V
    .locals 1
    .param p2, "restart"    # Z

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    .line 1791
    iput-boolean p2, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    .line 1792
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/android/camera/module/VideoModule$1;

    .prologue
    .line 1787
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1796
    const-string v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SavingTask run mMediaRecorderRecording = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v5}, Lcom/android/camera/module/VideoModule;->access$200(Lcom/android/camera/module/VideoModule;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # setter for: Lcom/android/camera/module/VideoModule;->mSavingResult:Z
    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->access$2102(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1798
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$200(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1799
    const/4 v0, 0x0

    .line 1800
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->subStopRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1801
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-eqz v1, :cond_4

    .line 1802
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2200(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1803
    .restart local v0    # "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # ++operator for: Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2304(Lcom/android/camera/module/VideoModule;)I

    .line 1804
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    .line 1805
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    .line 1814
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # invokes: Lcom/android/camera/module/VideoModule;->addVideoToMediaStore(Landroid/content/ContentValues;)Z
    invoke-static {v1, v0}, Lcom/android/camera/module/VideoModule;->access$2400(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # setter for: Lcom/android/camera/module/VideoModule;->mSavingResult:Z
    invoke-static {v1, v2}, Lcom/android/camera/module/VideoModule;->access$2102(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1816
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-eqz v1, :cond_6

    .line 1817
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v3, v1, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 1843
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # setter for: Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;
    invoke-static {v1, v6}, Lcom/android/camera/module/VideoModule;->access$2902(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;

    .line 1844
    return-void

    .restart local v0    # "values":Landroid/content/ContentValues;
    :cond_3
    move v1, v3

    .line 1805
    goto :goto_0

    .line 1807
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v1, :cond_5

    .line 1808
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    .line 1810
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2200(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1812
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2300(Lcom/android/camera/module/VideoModule;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # ++operator for: Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2304(Lcom/android/camera/module/VideoModule;)I

    goto :goto_1

    .line 1819
    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # setter for: Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;
    invoke-static {v1, v6}, Lcom/android/camera/module/VideoModule;->access$2202(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 1820
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.stop_video_recording"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1821
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mSavingResult:Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2100(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1822
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v1, :cond_9

    .line 1824
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v4, v4, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v4, :cond_8

    :goto_3
    invoke-virtual {v1, v6, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 1831
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2600(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1832
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2600(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1833
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$2700(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1834
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$2700(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1835
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1836
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$2800(Lcom/android/camera/module/VideoModule;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1837
    const-string v1, "videocamera"

    const-string v2, "listen none"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # setter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->access$202(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1840
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop recording at SavingTask, space = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    move v2, v3

    .line 1824
    goto :goto_3

    .line 1826
    :cond_9
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2500(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2500(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1827
    :cond_a
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    new-instance v2, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {v2, v4}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;-><init>(Lcom/android/camera/module/VideoModule;)V

    new-array v4, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    # setter for: Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/android/camera/module/VideoModule;->access$2502(Lcom/android/camera/module/VideoModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    .line 1835
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
