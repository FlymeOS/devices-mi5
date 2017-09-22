.class Lcom/android/settings/fingerprint/o;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "FingerprintEnrollSidecar.java"


# instance fields
.field final synthetic abY:Lcom/android/settings/fingerprint/n;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/n;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/fingerprint/o;->abY:Lcom/android/settings/fingerprint/n;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/fingerprint/o;->abY:Lcom/android/settings/fingerprint/n;

    invoke-static {v0}, Lcom/android/settings/fingerprint/n;->b(Lcom/android/settings/fingerprint/n;)Lcom/android/settings/fingerprint/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/fingerprint/o;->abY:Lcom/android/settings/fingerprint/n;

    invoke-static {v0}, Lcom/android/settings/fingerprint/n;->b(Lcom/android/settings/fingerprint/n;)Lcom/android/settings/fingerprint/q;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings/fingerprint/q;->d(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/fingerprint/o;->abY:Lcom/android/settings/fingerprint/n;

    invoke-static {v0}, Lcom/android/settings/fingerprint/n;->b(Lcom/android/settings/fingerprint/n;)Lcom/android/settings/fingerprint/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/fingerprint/o;->abY:Lcom/android/settings/fingerprint/n;

    invoke-static {v0}, Lcom/android/settings/fingerprint/n;->b(Lcom/android/settings/fingerprint/n;)Lcom/android/settings/fingerprint/q;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings/fingerprint/q;->c(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/fingerprint/o;->abY:Lcom/android/settings/fingerprint/n;

    invoke-static {v0}, Lcom/android/settings/fingerprint/n;->a(Lcom/android/settings/fingerprint/n;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/fingerprint/o;->abY:Lcom/android/settings/fingerprint/n;

    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/n;->a(Lcom/android/settings/fingerprint/n;I)I

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/o;->abY:Lcom/android/settings/fingerprint/n;

    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/n;->b(Lcom/android/settings/fingerprint/n;I)I

    .line 115
    iget-object v1, p0, Lcom/android/settings/fingerprint/o;->abY:Lcom/android/settings/fingerprint/n;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/fingerprint/n;->a(Lcom/android/settings/fingerprint/n;Z)Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/fingerprint/o;->abY:Lcom/android/settings/fingerprint/n;

    invoke-static {v0}, Lcom/android/settings/fingerprint/n;->b(Lcom/android/settings/fingerprint/n;)Lcom/android/settings/fingerprint/q;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/settings/fingerprint/o;->abY:Lcom/android/settings/fingerprint/n;

    invoke-static {v0}, Lcom/android/settings/fingerprint/n;->b(Lcom/android/settings/fingerprint/n;)Lcom/android/settings/fingerprint/q;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/o;->abY:Lcom/android/settings/fingerprint/n;

    invoke-static {v1}, Lcom/android/settings/fingerprint/n;->a(Lcom/android/settings/fingerprint/n;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/settings/fingerprint/q;->j(II)V

    .line 119
    :cond_1
    return-void

    .line 115
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
