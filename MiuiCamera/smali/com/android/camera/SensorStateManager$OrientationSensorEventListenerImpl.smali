.class Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;
.super Ljava/lang/Object;
.source "SensorStateManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrientationSensorEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 417
    const-string v0, "SensorStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccuracyChanged accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 377
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;
    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v9

    if-nez v9, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const/high16 v6, -0x40800000    # -1.0f

    .line 380
    .local v6, "orientation":F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x1

    aget v7, v9, v10

    .line 381
    .local v7, "y":F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v8, v9, v10

    .line 382
    .local v8, "z":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 383
    .local v0, "absY":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 385
    .local v1, "absZ":F
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->access$900(Lcom/android/camera/SensorStateManager;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v2, 0x5

    .line 386
    .local v2, "hysteresis":I
    :goto_1
    add-int/lit8 v5, v2, 0x1a

    .line 387
    .local v5, "minBound":I
    rsub-int v4, v2, 0x99

    .line 388
    .local v4, "maxBound":I
    int-to-float v9, v5

    cmpg-float v9, v0, v9

    if-lez v9, :cond_2

    int-to-float v9, v4

    cmpl-float v9, v0, v9

    if-ltz v9, :cond_8

    :cond_2
    int-to-float v9, v5

    cmpg-float v9, v1, v9

    if-lez v9, :cond_3

    int-to-float v9, v4

    cmpl-float v9, v1, v9

    if-ltz v9, :cond_8

    :cond_3
    const/4 v3, 0x1

    .line 390
    .local v3, "isLying":Z
    :goto_2
    if-eqz v3, :cond_4

    sub-float v9, v0, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 391
    cmpl-float v9, v0, v1

    if-lez v9, :cond_a

    .line 392
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_9

    const/4 v6, 0x0

    .line 399
    :cond_4
    :goto_3
    const/high16 v9, 0x42b40000    # 90.0f

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    # getter for: Lcom/android/camera/SensorStateManager;->CAPTURE_POSTURE_DEGREE:I
    invoke-static {}, Lcom/android/camera/SensorStateManager;->access$1000()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_d

    .line 400
    iget-object v10, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_c

    const/4 v9, 0x1

    :goto_4
    # invokes: Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V
    invoke-static {v10, v9}, Lcom/android/camera/SensorStateManager;->access$1100(Lcom/android/camera/SensorStateManager;I)V

    .line 405
    :goto_5
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->access$900(Lcom/android/camera/SensorStateManager;)Z

    move-result v9

    if-ne v3, v9, :cond_5

    if-eqz v3, :cond_0

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;)F

    move-result v9

    cmpl-float v9, v6, v9

    if-eqz v9, :cond_0

    .line 406
    :cond_5
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # setter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v9, v3}, Lcom/android/camera/SensorStateManager;->access$902(Lcom/android/camera/SensorStateManager;Z)Z

    .line 407
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->access$900(Lcom/android/camera/SensorStateManager;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 408
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # setter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v9, v6}, Lcom/android/camera/SensorStateManager;->access$1202(Lcom/android/camera/SensorStateManager;F)F

    .line 409
    :cond_6
    const-string v9, "SensorStateManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SensorEventListenerImpl TYPE_ORIENTATION mOrientation="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v11}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mIsLying="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v11}, Lcom/android/camera/SensorStateManager;->access$900(Lcom/android/camera/SensorStateManager;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;
    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v10}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;)F

    move-result v10

    iget-object v11, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v11}, Lcom/android/camera/SensorStateManager;->access$900(Lcom/android/camera/SensorStateManager;)Z

    move-result v11

    invoke-interface {v9, v10, v11}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceOrientationChanged(FZ)V

    goto/16 :goto_0

    .line 385
    .end local v2    # "hysteresis":I
    .end local v3    # "isLying":Z
    .end local v4    # "maxBound":I
    .end local v5    # "minBound":I
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 388
    .restart local v2    # "hysteresis":I
    .restart local v4    # "maxBound":I
    .restart local v5    # "minBound":I
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 392
    .restart local v3    # "isLying":Z
    :cond_9
    const/high16 v6, 0x43340000    # 180.0f

    goto/16 :goto_3

    .line 393
    :cond_a
    cmpg-float v9, v0, v1

    if-gez v9, :cond_4

    .line 394
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_b

    const/high16 v6, 0x42b40000    # 90.0f

    :goto_6
    goto/16 :goto_3

    :cond_b
    const/high16 v6, 0x43870000    # 270.0f

    goto :goto_6

    .line 400
    :cond_c
    const/4 v9, 0x2

    goto/16 :goto_4

    .line 402
    :cond_d
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    const/4 v10, 0x0

    # invokes: Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V
    invoke-static {v9, v10}, Lcom/android/camera/SensorStateManager;->access$1100(Lcom/android/camera/SensorStateManager;I)V

    goto/16 :goto_5
.end method
