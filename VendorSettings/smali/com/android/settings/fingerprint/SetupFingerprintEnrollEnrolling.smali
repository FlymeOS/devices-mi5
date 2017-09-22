.class public Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollEnrolling;
.super Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;
.source "SetupFingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollEnrolling;->qh()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public hX()V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollEnrolling;->onBackPressed()V

    .line 67
    return-void
.end method

.method public hY()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollEnrolling;->setResult(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollEnrolling;->finish()V

    .line 73
    return-void
.end method

.method protected initViews()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 46
    invoke-static {p0}, Lcom/android/vendorsettings/hH;->a(Landroid/app/Activity;)V

    .line 48
    const v0, 0x7f130102

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollEnrolling;->qh()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->a(Lcom/android/setupwizardlib/view/c;)V

    .line 55
    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0c019c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 56
    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->Bd()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 57
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/hH;->n(Landroid/content/Intent;)I

    move-result v0

    .line 41
    invoke-super {p0, p1, v0, p3}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 42
    return-void
.end method

.method protected qn()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/SetupFingerprintEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/vendorsettings/hH;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 35
    return-object v0
.end method
