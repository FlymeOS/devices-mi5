.class Lcom/android/server/policy/MiuiScreenOnProximityLock$1;
.super Ljava/lang/Object;
.source "MiuiScreenOnProximityLock.java"

# interfaces
.implements Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiScreenOnProximityLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Z)V
    .locals 2
    .param p1, "tooClose"    # Z

    .prologue
    const/4 v1, 0x0

    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    # getter for: Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->access$000(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    # getter for: Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->access$000(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
