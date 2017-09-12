.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;
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
    .line 218
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 221
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_key_press_app_switch"

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z
    invoke-static {v1, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$202(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 225
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
