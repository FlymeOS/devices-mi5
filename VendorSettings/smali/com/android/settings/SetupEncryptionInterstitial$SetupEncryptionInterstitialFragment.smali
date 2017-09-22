.class public Lcom/android/vendorsettings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/vendorsettings/EncryptionInterstitial$EncryptionInterstitialFragment;
.source "SetupEncryptionInterstitial.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/vendorsettings/EncryptionInterstitial$EncryptionInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hX()V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/vendorsettings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 103
    :cond_0
    return-void
.end method

.method public hY()V
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/vendorsettings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/SetupEncryptionInterstitial;

    .line 109
    if-eqz v0, :cond_0

    .line 110
    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/android/vendorsettings/SetupEncryptionInterstitial;->hL()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/SetupEncryptionInterstitial;->setResult(ILandroid/content/Intent;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/vendorsettings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->finish()V

    .line 113
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 77
    const v0, 0x7f040144

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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

    .line 90
    invoke-virtual {p0}, Lcom/android/vendorsettings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    const v1, 0x7f0c0acd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 93
    invoke-static {v0}, Lcom/android/vendorsettings/hH;->a(Landroid/app/Activity;)V

    .line 95
    :cond_0
    return-void
.end method
