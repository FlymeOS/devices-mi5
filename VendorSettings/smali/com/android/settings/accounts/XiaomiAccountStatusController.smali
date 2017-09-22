.class public Lcom/android/settings/accounts/XiaomiAccountStatusController;
.super Lcom/android/settings/ag;
.source "XiaomiAccountStatusController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ag;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 21
    return-void
.end method


# virtual methods
.method public af()V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/accounts/XiaomiAccountStatusController;->cw:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/XiaomiAccountStatusController;->mContext:Landroid/content/Context;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 29
    iget-object v1, p0, Lcom/android/settings/accounts/XiaomiAccountStatusController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    const-string v2, "acc_user_name"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    iget-object v1, p0, Lcom/android/settings/accounts/XiaomiAccountStatusController;->cw:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/XiaomiAccountStatusController;->cw:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/XiaomiAccountStatusController;->cw:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
