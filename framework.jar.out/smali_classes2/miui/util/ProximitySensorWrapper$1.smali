.class Lmiui/util/ProximitySensorWrapper$1;
.super Ljava/lang/Object;
.source "ProximitySensorWrapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ProximitySensorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/ProximitySensorWrapper;


# direct methods
.method constructor <init>(Lmiui/util/ProximitySensorWrapper;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 61
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v3

    .line 41
    .local v0, "distance":F
    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    const/high16 v4, 0x40800000    # 4.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lmiui/util/ProximitySensorWrapper;->access$000(Lmiui/util/ProximitySensorWrapper;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    move v1, v2

    .line 44
    .local v1, "isTooClose":Z
    :goto_0
    const-string v4, "ProximitySensorWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proximity distance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz v1, :cond_2

    .line 46
    iget-object v4, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I
    invoke-static {v4}, Lmiui/util/ProximitySensorWrapper;->access$100(Lmiui/util/ProximitySensorWrapper;)I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 47
    iget-object v4, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # setter for: Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I
    invoke-static {v4, v2}, Lmiui/util/ProximitySensorWrapper;->access$102(Lmiui/util/ProximitySensorWrapper;I)I

    .line 48
    iget-object v4, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lmiui/util/ProximitySensorWrapper;->access$200(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->access$200(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 58
    :cond_0
    :goto_1
    return-void

    .end local v1    # "isTooClose":Z
    :cond_1
    move v1, v3

    .line 41
    goto :goto_0

    .line 52
    .restart local v1    # "isTooClose":Z
    :cond_2
    iget-object v4, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I
    invoke-static {v4}, Lmiui/util/ProximitySensorWrapper;->access$100(Lmiui/util/ProximitySensorWrapper;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    iget-object v4, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # setter for: Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I
    invoke-static {v4, v3}, Lmiui/util/ProximitySensorWrapper;->access$102(Lmiui/util/ProximitySensorWrapper;I)I

    .line 54
    iget-object v4, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lmiui/util/ProximitySensorWrapper;->access$200(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    iget-object v3, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lmiui/util/ProximitySensorWrapper;->access$200(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
