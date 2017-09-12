.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 846
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 852
    :cond_0
    return-void
.end method
