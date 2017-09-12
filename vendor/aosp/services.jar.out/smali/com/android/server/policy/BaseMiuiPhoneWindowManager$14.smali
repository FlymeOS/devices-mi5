.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->hideBootMessages()V
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
    .line 2163
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2165
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2167
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3002(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2168
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3102(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 2169
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3302(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2170
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$3202(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2172
    :cond_0
    return-void
.end method
