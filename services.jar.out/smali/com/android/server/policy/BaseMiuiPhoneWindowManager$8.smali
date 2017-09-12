.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I
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
    .line 916
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    new-instance v1, Lmiui/util/ProximitySensorWrapper;

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/util/ProximitySensorWrapper;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$902(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lmiui/util/ProximitySensorWrapper;)Lmiui/util/ProximitySensorWrapper;

    .line 921
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    invoke-static {v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/util/ProximitySensorWrapper;->registerListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V

    .line 923
    :cond_0
    return-void
.end method
