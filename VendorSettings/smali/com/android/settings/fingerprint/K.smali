.class public Lcom/android/vendorsettings/fingerprint/K;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintUiHelper.java"


# instance fields
.field private acA:Landroid/widget/TextView;

.field private acB:Lcom/android/vendorsettings/fingerprint/M;

.field private acC:Ljava/lang/Runnable;

.field private dD:Landroid/hardware/fingerprint/FingerprintManager;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/vendorsettings/fingerprint/M;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 107
    new-instance v0, Lcom/android/vendorsettings/fingerprint/L;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fingerprint/L;-><init>(Lcom/android/vendorsettings/fingerprint/K;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->acC:Ljava/lang/Runnable;

    .line 42
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->dD:Landroid/hardware/fingerprint/FingerprintManager;

    .line 43
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/K;->mIcon:Landroid/widget/ImageView;

    .line 44
    iput-object p2, p0, Lcom/android/vendorsettings/fingerprint/K;->acA:Landroid/widget/TextView;

    .line 45
    iput-object p3, p0, Lcom/android/vendorsettings/fingerprint/K;->acB:Lcom/android/vendorsettings/fingerprint/M;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/K;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->acA:Landroid/widget/TextView;

    return-object v0
.end method

.method private aQ(Z)V
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/K;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->acB:Lcom/android/vendorsettings/fingerprint/M;

    invoke-interface {v0, p1}, Lcom/android/vendorsettings/fingerprint/M;->aR(Z)V

    .line 71
    return-void

    .line 69
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/fingerprint/K;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/K;->qK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->acA:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->acA:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/K;->acC:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->acA:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/K;->acC:Ljava/lang/Runnable;

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private qK()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p2}, Lcom/android/vendorsettings/fingerprint/K;->e(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fingerprint/K;->aQ(Z)V

    .line 77
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0b17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fingerprint/K;->e(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p2}, Lcom/android/vendorsettings/fingerprint/K;->e(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->acB:Lcom/android/vendorsettings/fingerprint/M;

    invoke-interface {v0}, Lcom/android/vendorsettings/fingerprint/M;->qL()V

    .line 94
    return-void
.end method

.method public startListening()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->dD:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 51
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->dD:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/vendorsettings/fingerprint/K;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fingerprint/K;->aQ(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/K;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 62
    :cond_0
    return-void
.end method
