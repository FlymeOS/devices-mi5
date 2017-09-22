.class Lcom/android/vendorsettings/dc;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintHelper.java"


# instance fields
.field final synthetic mP:Lcom/android/vendorsettings/cZ;

.field final synthetic mR:Lcom/android/vendorsettings/dd;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/cZ;Lcom/android/vendorsettings/dd;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/vendorsettings/dc;->mP:Lcom/android/vendorsettings/cZ;

    iput-object p2, p0, Lcom/android/vendorsettings/dc;->mR:Lcom/android/vendorsettings/dd;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 157
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 151
    iget-object v0, p0, Lcom/android/vendorsettings/dc;->mR:Lcom/android/vendorsettings/dd;

    invoke-interface {v0}, Lcom/android/vendorsettings/dd;->onFailed()V

    .line 152
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/vendorsettings/dc;->mR:Lcom/android/vendorsettings/dd;

    invoke-interface {v0}, Lcom/android/vendorsettings/dd;->onFailed()V

    .line 140
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 145
    iget-object v0, p0, Lcom/android/vendorsettings/dc;->mR:Lcom/android/vendorsettings/dd;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/vendorsettings/dd;->G(I)V

    .line 146
    return-void
.end method
