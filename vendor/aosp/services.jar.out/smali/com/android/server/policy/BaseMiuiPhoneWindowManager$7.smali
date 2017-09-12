.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Z)V
    .locals 4
    .param p1, "tooClose"    # Z

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/ProximitySensorWrapper;->unregisterAllListeners()V

    .line 877
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$902(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lmiui/util/ProximitySensorWrapper;)Lmiui/util/ProximitySensorWrapper;

    .line 878
    if-eqz p1, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 881
    :cond_0
    return-void
.end method
