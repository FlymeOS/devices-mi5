.class Lcom/android/server/policy/MiuiPhoneWindowManager$2;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiPhoneWindowManager;->bringUpActionChooseDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 313
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    .line 316
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_nav_center_action"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 318
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$100(Lcom/android/server/policy/MiuiPhoneWindowManager;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 319
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$102(Lcom/android/server/policy/MiuiPhoneWindowManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 320
    return-void

    .line 313
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
