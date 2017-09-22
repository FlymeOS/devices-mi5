.class public Lcom/android/vendorsettings/PrivacyPasswordChooseLockPattern;
.super Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;
.source "PrivacyPasswordChooseLockPattern.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;-><init>()V

    return-void
.end method


# virtual methods
.method protected M(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Lcom/android/vendorsettings/privacypassword/BussinessPackageInfoCache;

    invoke-direct {v0}, Lcom/android/vendorsettings/privacypassword/BussinessPackageInfoCache;-><init>()V

    .line 31
    invoke-static {}, Lcom/android/vendorsettings/privacypassword/BussinessPackageInfoCache;->tn()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/privacypassword/BussinessPackageInfo;

    .line 32
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/android/vendorsettings/PrivacyPasswordChooseLockPattern;->ann:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/PrivacyPasswordChooseLockPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Lcom/android/vendorsettings/privacypassword/BussinessPackageInfo;->amI:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/vendorsettings/PrivacyPasswordChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/PrivacyPasswordChooseLockPattern;->M(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;->onResume()V

    .line 41
    invoke-static {p0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->bW(Landroid/content/Context;)Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->tG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/vendorsettings/PrivacyPasswordChooseLockPattern;->finish()V

    .line 45
    :cond_0
    return-void
.end method
