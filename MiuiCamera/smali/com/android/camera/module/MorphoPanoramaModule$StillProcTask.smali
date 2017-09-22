.class public Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;
.super Ljava/lang/Thread;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StillProcTask"
.end annotation


# instance fields
.field private shootCount:I

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 1

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1030
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1033
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$700(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1034
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2300(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1035
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2300(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    .line 1037
    .local v0, "dat":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2400()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1038
    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": run attachStillImageExt() start :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2500(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    iget-object v6, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachStillImageExt(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v2

    .line 1040
    .local v2, "ret":I
    if-eqz v2, :cond_0

    .line 1041
    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s: attachStillImageExt() -> 0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v3, v3, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v4, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;

    invoke-direct {v4, p0}, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;-><init>(Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1049
    :cond_0
    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    if-nez v3, :cond_1

    .line 1050
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2500(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachSetJpegForCopyingExif(Ljava/nio/ByteBuffer;)I

    .line 1059
    :cond_1
    :goto_1
    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    .line 1060
    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 1061
    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 1062
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # operator++ for: Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2708(Lcom/android/camera/module/MorphoPanoramaModule;)I

    .line 1065
    .end local v0    # "dat":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    .end local v2    # "ret":I
    :cond_2
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1066
    :catch_0
    move-exception v1

    .line 1067
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1053
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "dat":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    :cond_3
    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": run attachStillImageRaw() start :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2500(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    iget-object v6, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachStillImageRaw(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v2

    .line 1055
    .restart local v2    # "ret":I
    if-eqz v2, :cond_1

    .line 1056
    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s:attachStillImageExt() -> 0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1071
    .end local v0    # "dat":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    .end local v2    # "ret":I
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2800(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I
    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2700(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v4

    if-le v3, v4, :cond_5

    .line 1072
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2300(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1073
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2300(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    .line 1074
    .restart local v0    # "dat":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 1075
    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 1076
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # operator++ for: Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2708(Lcom/android/camera/module/MorphoPanoramaModule;)I

    goto :goto_2

    .line 1079
    .end local v0    # "dat":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    :cond_5
    return-void
.end method
