.class Lcom/android/camera/SensorStateManager$3;
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
    name = null
.end annotation


# instance fields
.field private finalFilter:[F

.field private firstFilter:[F

.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 421
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    .line 429
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    return-void
.end method

.method private clearFilter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    aput v2, v1, v0

    .line 475
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aput v2, v1, v0

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 481
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

    .line 482
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 433
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;
    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v7

    if-nez v7, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    const/4 v8, 0x0

    const v9, 0x3f4ccccd    # 0.8f

    iget-object v10, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    const v10, 0x3e4ccccc    # 0.19999999f

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 438
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    const/4 v8, 0x1

    const v9, 0x3f4ccccd    # 0.8f

    iget-object v10, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    mul-float/2addr v9, v10

    const v10, 0x3e4ccccc    # 0.19999999f

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 439
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    const/4 v8, 0x2

    const v9, 0x3f4ccccd    # 0.8f

    iget-object v10, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    mul-float/2addr v9, v10

    const v10, 0x3e4ccccc    # 0.19999999f

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 440
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    const/4 v8, 0x0

    const v9, 0x3f333333    # 0.7f

    iget-object v10, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    const v10, 0x3e99999a    # 0.3f

    iget-object v11, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 441
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    const/4 v8, 0x1

    const v9, 0x3f333333    # 0.7f

    iget-object v10, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    mul-float/2addr v9, v10

    const v10, 0x3e99999a    # 0.3f

    iget-object v11, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 442
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    const/4 v8, 0x2

    const v9, 0x3f333333    # 0.7f

    iget-object v10, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    mul-float/2addr v9, v10

    const v10, 0x3e99999a    # 0.3f

    iget-object v11, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 443
    const-string v7, "SensorStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "finalFilter="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " event.values="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/high16 v6, -0x40800000    # -1.0f

    .line 448
    .local v6, "orientation":F
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    neg-float v1, v7

    .line 449
    .local v1, "X":F
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    neg-float v2, v7

    .line 450
    .local v2, "Y":F
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    neg-float v3, v7

    .line 451
    .local v3, "Z":F
    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float v5, v7, v8

    .line 453
    .local v5, "magnitude":F
    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v7, v5

    mul-float v8, v3, v3

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    .line 454
    const v0, 0x42652ee1

    .line 455
    .local v0, "OneEightyOverPi":F
    neg-float v7, v2

    float-to-double v8, v7

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float v4, v7, v0

    .line 456
    .local v4, "angle":F
    const/high16 v7, 0x42b40000    # 90.0f

    sub-float v6, v7, v4

    .line 458
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    # invokes: Lcom/android/camera/SensorStateManager;->normalizeDegree(F)F
    invoke-static {v7, v6}, Lcom/android/camera/SensorStateManager;->access$1300(Lcom/android/camera/SensorStateManager;F)F

    move-result v6

    .line 461
    .end local v0    # "OneEightyOverPi":F
    .end local v4    # "angle":F
    :cond_2
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;)F

    move-result v7

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_0

    .line 462
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;)F

    move-result v7

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 463
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$3;->clearFilter()V

    .line 465
    :cond_3
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    # setter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v7, v6}, Lcom/android/camera/SensorStateManager;->access$1202(Lcom/android/camera/SensorStateManager;F)F

    .line 466
    const-string v7, "SensorStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SensorEventListenerImpl TYPE_ACCELEROMETER mOrientation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIsLying="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->access$900(Lcom/android/camera/SensorStateManager;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;
    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mOrientation:F
    invoke-static {v8}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;)F

    move-result v8

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    # getter for: Lcom/android/camera/SensorStateManager;->mIsLying:Z
    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->access$900(Lcom/android/camera/SensorStateManager;)Z

    move-result v9

    invoke-interface {v7, v8, v9}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceOrientationChanged(FZ)V

    goto/16 :goto_0
.end method
