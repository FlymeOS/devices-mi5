.class public Lcom/android/settings/cZ;
.super Ljava/lang/Object;
.source "FingerprintHelper.java"


# instance fields
.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mContext:Landroid/content/Context;

.field private mM:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/settings/cZ;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private a(ILjava/util/List;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 170
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/settings/cZ;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/security/FingerprintIdUtils;->getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 175
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 177
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/android/settings/cZ;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/security/FingerprintIdUtils;->putUserFingerprintIds(Landroid/content/Context;Ljava/util/HashMap;)V

    goto :goto_0

    .line 182
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/android/settings/cZ;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/cZ;->a(ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private dU()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/cZ;->mM:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/settings/cZ;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/cZ;->mM:Landroid/hardware/fingerprint/FingerprintManager;

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/cY;[B)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/cZ;->dU()V

    .line 56
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cZ;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/cZ;->dV()Ljava/util/List;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/android/settings/da;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/da;-><init>(Lcom/android/settings/cZ;Lcom/android/settings/cY;Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/cZ;->mM:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/cZ;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v2, v3, v1}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 86
    return-void
.end method

.method public a(Lcom/android/settings/dd;Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 123
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can not be null, and ids can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/cZ;->dU()V

    .line 127
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cZ;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 129
    new-instance v4, Lcom/android/settings/dc;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/dc;-><init>(Lcom/android/settings/cZ;Lcom/android/settings/dd;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/cZ;->mM:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/cZ;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 161
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/android/settings/de;)V
    .locals 6

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings/cZ;->dU()V

    .line 106
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 107
    new-instance v1, Lcom/android/settings/db;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/db;-><init>(Lcom/android/settings/cZ;Lcom/android/settings/de;)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/cZ;->mM:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 120
    return-void
.end method

.method public dV()Ljava/util/List;
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/cZ;->dU()V

    .line 37
    iget-object v0, p0, Lcom/android/settings/cZ;->mM:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 42
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_0
    return-object v1
.end method

.method public dW()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/cZ;->mM:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/cZ;->mM:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cZ;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/settings/cZ;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 102
    :cond_1
    return-void
.end method

.method public dX()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/cZ;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/cZ;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 167
    :cond_0
    return-void
.end method

.method public isHardwareDetected()Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/cZ;->dU()V

    .line 26
    iget-object v0, p0, Lcom/android/settings/cZ;->mM:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method public preEnroll()J
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/cZ;->dU()V

    .line 51
    iget-object v0, p0, Lcom/android/settings/cZ;->mM:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    return-wide v0
.end method
