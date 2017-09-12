.class Lmiui/maml/data/SensorBinder$1;
.super Ljava/lang/Object;
.source "SensorBinder.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/SensorBinder;


# direct methods
.method constructor <init>(Lmiui/maml/data/SensorBinder;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 92
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 80
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v4

    .line 81
    .local v1, "size":I
    iget-object v4, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    iget-object v4, v4, Lmiui/maml/data/SensorBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/VariableBinder$Variable;

    .local v2, "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object v3, v2

    .line 82
    check-cast v3, Lmiui/maml/data/SensorBinder$Variable;

    .line 83
    .local v3, "var":Lmiui/maml/data/SensorBinder$Variable;
    iget v4, v3, Lmiui/maml/data/SensorBinder$Variable;->mIndex:I

    if-ltz v4, :cond_0

    iget v4, v3, Lmiui/maml/data/SensorBinder$Variable;->mIndex:I

    if-ge v4, v1, :cond_0

    .line 84
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    iget v5, v3, Lmiui/maml/data/SensorBinder$Variable;->mIndex:I

    aget v4, v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/SensorBinder$Variable;->set(D)V

    goto :goto_0

    .line 87
    .end local v2    # "v":Lmiui/maml/data/VariableBinder$Variable;
    .end local v3    # "var":Lmiui/maml/data/SensorBinder$Variable;
    :cond_1
    iget-object v4, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    invoke-virtual {v4}, Lmiui/maml/data/SensorBinder;->onUpdateComplete()V

    .line 88
    return-void
.end method
