.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;
.super Landroid/database/ContentObserver;
.source "BaseMiuiPhoneWindowManager.java"


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
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 210
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_state"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v1, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$002(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 212
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    :cond_1
    return-void
.end method
