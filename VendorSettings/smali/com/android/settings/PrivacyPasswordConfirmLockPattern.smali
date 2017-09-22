.class public Lcom/android/settings/PrivacyPasswordConfirmLockPattern;
.super Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;
.source "PrivacyPasswordConfirmLockPattern.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;-><init>()V

    return-void
.end method


# virtual methods
.method protected M(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 20
    if-eqz p1, :cond_0

    .line 21
    new-instance v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;

    invoke-direct {v0}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;-><init>()V

    .line 22
    invoke-static {}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->tn()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacypassword/BussinessPackageInfo;

    .line 23
    if-eqz v0, :cond_0

    .line 24
    iget-object v1, p0, Lcom/android/settings/PrivacyPasswordConfirmLockPattern;->anR:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/PrivacyPasswordConfirmLockPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Lcom/android/settings/privacypassword/BussinessPackageInfo;->amI:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/settings/PrivacyPasswordConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacyPasswordConfirmLockPattern;->M(Ljava/lang/String;)V

    .line 17
    return-void
.end method
