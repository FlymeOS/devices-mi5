.class public Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFindSensor;
.super Lcom/android/vendorsettings/fingerprint/FingerprintEnrollFindSensor;
.source "SetupFingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollFindSensor;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFindSensor;->qh()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public hX()V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFindSensor;->onBackPressed()V

    .line 67
    return-void
.end method

.method public hY()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFindSensor;->qi()V

    .line 72
    return-void
.end method

.method protected initViews()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 48
    invoke-static {p0}, Lcom/android/vendorsettings/hH;->a(Landroid/app/Activity;)V

    .line 50
    const v0, 0x7f130076

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFindSensor;->qh()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->a(Lcom/android/setupwizardlib/view/c;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFindSensor;->qh()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->Bd()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 57
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/hH;->n(Landroid/content/Intent;)I

    move-result v0

    .line 43
    invoke-super {p0, p1, v0, p3}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollFindSensor;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 44
    return-void
.end method

.method protected qj()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFindSensor;->abp:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/vendorsettings/hH;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 37
    return-object v0
.end method
