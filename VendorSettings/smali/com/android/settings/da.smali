.class Lcom/android/settings/da;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "FingerprintHelper.java"


# instance fields
.field final synthetic mN:Lcom/android/settings/cY;

.field final synthetic mO:Ljava/util/List;

.field final synthetic mP:Lcom/android/settings/cZ;


# direct methods
.method constructor <init>(Lcom/android/settings/cZ;Lcom/android/settings/cY;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/da;->mP:Lcom/android/settings/cZ;

    iput-object p2, p0, Lcom/android/settings/da;->mN:Lcom/android/settings/cY;

    iput-object p3, p0, Lcom/android/settings/da;->mO:Ljava/util/List;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/da;->mN:Lcom/android/settings/cY;

    invoke-interface {v0}, Lcom/android/settings/cY;->dT()V

    .line 64
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 74
    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings/da;->mN:Lcom/android/settings/cY;

    invoke-interface {v0, p1}, Lcom/android/settings/cY;->F(I)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/settings/da;->mN:Lcom/android/settings/cY;

    invoke-interface {v0}, Lcom/android/settings/cY;->dS()V

    .line 78
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/da;->mP:Lcom/android/settings/cZ;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/da;->mO:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/da;->mP:Lcom/android/settings/cZ;

    invoke-virtual {v3}, Lcom/android/settings/cZ;->dV()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/cZ;->a(Lcom/android/settings/cZ;ILjava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method
