.class public Lcom/android/vendorsettings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/vendorsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;
.source "SetupRedactionInterstitial.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hX()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/vendorsettings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 99
    :cond_0
    return-void
.end method

.method public hY()V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/vendorsettings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/SetupRedactionInterstitial;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/android/vendorsettings/SetupRedactionInterstitial;->hL()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/SetupRedactionInterstitial;->setResult(ILandroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/vendorsettings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->finish()V

    .line 108
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 78
    const v0, 0x7f040145

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f1300f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 87
    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->qh()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->a(Lcom/android/setupwizardlib/view/c;)V

    .line 89
    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->Bd()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/vendorsettings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/hH;->a(Landroid/app/Activity;)V

    .line 91
    return-void
.end method
