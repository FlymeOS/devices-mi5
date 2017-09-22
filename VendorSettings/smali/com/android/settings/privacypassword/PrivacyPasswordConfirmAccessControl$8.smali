.class Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

.field final synthetic aok:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iput-object p2, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8;->aok:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 529
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->i(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lmiui/security/SecurityManager;

    move-result-object v0

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->b(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->i(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lmiui/security/SecurityManager;

    move-result-object v0

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->a(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8;->aok:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->bY(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 533
    if-eqz v1, :cond_1

    .line 534
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8;->aok:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    new-instance v4, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8$1;

    invoke-direct {v4, p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8$1;-><init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$8;)V

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 549
    :cond_1
    return-void
.end method
