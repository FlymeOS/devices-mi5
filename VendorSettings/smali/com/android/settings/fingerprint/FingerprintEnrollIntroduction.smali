.class public Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/android/vendorsettings/fingerprint/a;
.source "FingerprintEnrollIntroduction.java"


# instance fields
.field private abP:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/a;-><init>()V

    return-void
.end method

.method private qt()V
    .locals 2

    .prologue
    .line 96
    const v0, 0x7f0c09c1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/vendorsettings/dn;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 77
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->setResult(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/fingerprint/a;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1300d2

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f130101

    if-ne v0, v1, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->qt()V

    .line 92
    :cond_1
    invoke-super {p0, p1}, Lcom/android/vendorsettings/fingerprint/a;->onClick(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/android/vendorsettings/fingerprint/a;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f040083

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->setContentView(I)V

    .line 41
    const v1, 0x7f0c01f4

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->bZ(I)V

    .line 42
    const v1, 0x7f1300d2

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x7f130101

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 44
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 46
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :cond_0
    new-instance v1, Lcom/android/vendorsettings/aH;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/aH;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/android/vendorsettings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 50
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->abP:Z

    .line 51
    return-void
.end method

.method protected qi()V
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->abP:Z

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->qr()Landroid/content/Intent;

    move-result-object v0

    .line 63
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollIntroduction;->qs()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected qr()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollOnboard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected qs()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
