.class final Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils$1;
.super Ljava/lang/Object;
.source "XiaomiAccountUtils.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic aow:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils$1;->aow:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    iput-object p2, p0, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3

    .prologue
    .line 46
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 47
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils$1;->aow:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils;->cc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->bk(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/XiaomiAccountUtils$1;->aow:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->bk(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "XiaomiAccountUtils"

    const-string v2, "forgetPrivacyPassword error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
