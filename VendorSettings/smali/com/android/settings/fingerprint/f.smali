.class Lcom/android/vendorsettings/fingerprint/f;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic abK:Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/f;->abK:Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/f;->abK:Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->j(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/f;->abK:Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->j(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/f;->abK:Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v1}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->k(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method
