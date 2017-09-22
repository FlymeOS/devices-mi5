.class Lcom/android/settings/fingerprint/z;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintSettings.java"


# instance fields
.field final synthetic acr:Lcom/android/settings/fingerprint/x;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/x;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings/fingerprint/z;->acr:Lcom/android/settings/fingerprint/x;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/fingerprint/z;->acr:Lcom/android/settings/fingerprint/x;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 175
    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/fingerprint/z;->acr:Lcom/android/settings/fingerprint/x;

    invoke-static {v0}, Lcom/android/settings/fingerprint/x;->a(Lcom/android/settings/fingerprint/x;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    return-void
.end method
