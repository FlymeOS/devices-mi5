.class Lcom/android/server/display/AutomaticBrightnessController$2;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 858
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 844
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$800(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 845
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 846
    .local v2, "time":J
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v6, v5

    .line 847
    .local v0, "distance":F
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityThreshold:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$900(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_1

    move v1, v4

    .line 848
    .local v1, "positive":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 849
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I
    invoke-static {v5, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 853
    .end local v0    # "distance":F
    .end local v1    # "positive":Z
    .end local v2    # "time":J
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "distance":F
    .restart local v2    # "time":J
    :cond_1
    move v1, v5

    .line 847
    goto :goto_0

    .line 851
    .restart local v1    # "positive":Z
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto :goto_1
.end method
