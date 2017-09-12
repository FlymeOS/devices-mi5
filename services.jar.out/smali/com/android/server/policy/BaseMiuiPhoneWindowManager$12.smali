.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-result-object v0

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mPackageSettingActivity:Ljava/util/HashMap;
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$1402(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1449
    return-void
.end method
