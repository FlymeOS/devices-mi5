.class public abstract Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;
.super Lcom/android/settings/InstrumentedFragment;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Lcom/android/settings/fingerprint/M;


# instance fields
.field protected dY:Landroid/widget/Button;

.field private fd:Lcom/android/settings/fingerprint/K;

.field private fe:Z

.field protected ff:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->fe:Z

    .line 57
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->fe:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->fd:Lcom/android/settings/fingerprint/K;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/K;->stopListening()V

    .line 106
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->fe:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->fd:Lcom/android/settings/fingerprint/K;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/K;->startListening()V

    .line 84
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f13007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->dY:Landroid/widget/Button;

    .line 63
    const v0, 0x7f130080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->ff:Landroid/widget/ImageView;

    .line 64
    new-instance v2, Lcom/android/settings/fingerprint/K;

    iget-object v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->ff:Landroid/widget/ImageView;

    const v0, 0x7f13007f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v2, v3, v0, p0}, Lcom/android/settings/fingerprint/K;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings/fingerprint/M;)V

    iput-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->fd:Lcom/android/settings/fingerprint/K;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    iget-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->dY:Landroid/widget/Button;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->dY:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/aL;

    invoke-direct {v1, p0}, Lcom/android/settings/aL;-><init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void

    .line 69
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
