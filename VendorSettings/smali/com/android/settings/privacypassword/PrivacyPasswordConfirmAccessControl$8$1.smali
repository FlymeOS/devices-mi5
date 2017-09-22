.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8$1;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic aol:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8$1;->aol:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3

    .prologue
    .line 539
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 540
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 542
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8$1;->aol:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;

    iget-object v1, v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8$1;->aol:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;

    iget-object v2, v2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->aH()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->a(ZLandroid/app/Activity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    const-string v1, "PrivacyPasswordConfirmAccessControl"

    const-string v2, "setPasswordOfXiaomi error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
