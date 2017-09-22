.class public Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;
.super Lcom/android/settings/fingerprint/a;
.source "FingerprintEnrollOnboard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/fingerprint/a;-><init>()V

    return-void
.end method

.method private g([B)V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->qs()Landroid/content/Intent;

    move-result-object v0

    .line 77
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->finish()V

    .line 80
    return-void
.end method

.method private qu()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->qv()Landroid/content/Intent;

    move-result-object v1

    .line 61
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v2

    .line 62
    const-string v0, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v0, "hide_disabled_prefs"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    const-string v0, "has_challenge"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const-string v0, "challenge"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    const-string v0, "for_fingerprint"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v1, v5}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    if-ne p1, v1, :cond_0

    if-ne p2, v1, :cond_0

    .line 50
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->setResult(I)V

    .line 53
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->g([B)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/a;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/a;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f040084

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->setContentView(I)V

    .line 39
    const v0, 0x7f0c01f0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->bZ(I)V

    .line 40
    return-void
.end method

.method protected qi()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollOnboard;->qu()V

    .line 45
    return-void
.end method

.method protected qs()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected qv()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
