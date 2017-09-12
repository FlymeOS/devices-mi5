.class Lcom/android/server/display/AutomaticBrightnessController$3;
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
    .line 865
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 897
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 868
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAccSensorEnabled:Z
    invoke-static {v10}, Lcom/android/server/display/AutomaticBrightnessController;->access$1000(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 869
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 870
    .local v5, "values":[F
    const/4 v10, 0x0

    aget v2, v5, v10

    .line 871
    .local v2, "ax":F
    const/4 v10, 0x1

    aget v3, v5, v10

    .line 872
    .local v3, "ay":F
    const/4 v10, 0x2

    aget v4, v5, v10

    .line 873
    .local v4, "az":F
    mul-float v10, v2, v2

    mul-float v11, v3, v3

    add-float/2addr v10, v11

    mul-float v11, v4, v4

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 874
    .local v8, "g":D
    float-to-double v10, v4

    div-double v6, v10, v8

    .line 875
    .local v6, "cos":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v6, v10

    if-lez v10, :cond_2

    .line 876
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 880
    :cond_0
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double v0, v10, v12

    .line 881
    .local v0, "angle":D
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    double-to-float v11, v0

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->angle_xy2horizon:F
    invoke-static {v10, v11}, Lcom/android/server/display/AutomaticBrightnessController;->access$1102(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 892
    .end local v0    # "angle":D
    .end local v2    # "ax":F
    .end local v3    # "ay":F
    .end local v4    # "az":F
    .end local v5    # "values":[F
    .end local v6    # "cos":D
    .end local v8    # "g":D
    :cond_1
    return-void

    .line 877
    .restart local v2    # "ax":F
    .restart local v3    # "ay":F
    .restart local v4    # "az":F
    .restart local v5    # "values":[F
    .restart local v6    # "cos":D
    .restart local v8    # "g":D
    :cond_2
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpg-double v10, v6, v10

    if-gez v10, :cond_0

    .line 878
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method
