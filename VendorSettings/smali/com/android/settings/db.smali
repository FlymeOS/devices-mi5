.class Lcom/android/vendorsettings/db;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintHelper.java"


# instance fields
.field final synthetic mP:Lcom/android/vendorsettings/cZ;

.field final synthetic mQ:Lcom/android/vendorsettings/de;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/cZ;Lcom/android/vendorsettings/de;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/vendorsettings/db;->mP:Lcom/android/vendorsettings/cZ;

    iput-object p2, p0, Lcom/android/vendorsettings/db;->mQ:Lcom/android/vendorsettings/de;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/vendorsettings/db;->mQ:Lcom/android/vendorsettings/de;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/vendorsettings/db;->mQ:Lcom/android/vendorsettings/de;

    invoke-interface {v0}, Lcom/android/vendorsettings/de;->onFailed()V

    .line 112
    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/vendorsettings/db;->mQ:Lcom/android/vendorsettings/de;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/vendorsettings/db;->mQ:Lcom/android/vendorsettings/de;

    invoke-interface {v0}, Lcom/android/vendorsettings/de;->dY()V

    .line 117
    :cond_0
    return-void
.end method
