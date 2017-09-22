.class public Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFinish;
.super Lcom/android/vendorsettings/fingerprint/FingerprintEnrollFinish;
.source "SetupFingerprintEnrollFinish.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollFinish;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFinish;->qh()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public hX()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFinish;->onBackPressed()V

    .line 75
    return-void
.end method

.method public hY()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFinish;->qi()V

    .line 80
    return-void
.end method

.method protected initViews()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 49
    invoke-static {p0}, Lcom/android/vendorsettings/hH;->a(Landroid/app/Activity;)V

    .line 51
    const v0, 0x7f130076

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFinish;->qh()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->a(Lcom/android/setupwizardlib/view/c;)V

    .line 58
    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->Bd()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    const v0, 0x7f130051

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0c0206

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    const v0, 0x7f1300fe

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/hH;->n(Landroid/content/Intent;)I

    move-result v0

    .line 44
    invoke-super {p0, p1, v0, p3}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollFinish;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 45
    return-void
.end method

.method protected qj()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFinish;->abp:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/vendorsettings/hH;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 38
    return-object v0
.end method
