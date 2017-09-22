.class Lcom/android/settings/fingerprint/y;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintSettings.java"


# instance fields
.field final synthetic acr:Lcom/android/settings/fingerprint/x;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/x;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/fingerprint/y;->acr:Lcom/android/settings/fingerprint/x;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/fingerprint/y;->acr:Lcom/android/settings/fingerprint/x;

    invoke-static {v0}, Lcom/android/settings/fingerprint/x;->a(Lcom/android/settings/fingerprint/x;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 153
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/fingerprint/y;->acr:Lcom/android/settings/fingerprint/x;

    invoke-static {v0}, Lcom/android/settings/fingerprint/x;->a(Lcom/android/settings/fingerprint/x;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/fingerprint/y;->acr:Lcom/android/settings/fingerprint/x;

    invoke-static {v0}, Lcom/android/settings/fingerprint/x;->a(Lcom/android/settings/fingerprint/x;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/android/settings/fingerprint/y;->acr:Lcom/android/settings/fingerprint/x;

    invoke-static {v1}, Lcom/android/settings/fingerprint/x;->a(Lcom/android/settings/fingerprint/x;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method
