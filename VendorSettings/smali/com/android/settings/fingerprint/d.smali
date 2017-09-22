.class Lcom/android/settings/fingerprint/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintEnrollEnrolling.java"


# instance fields
.field final synthetic abK:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

.field final synthetic abL:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings/fingerprint/d;->abK:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    iput-object p2, p0, Lcom/android/settings/fingerprint/d;->abL:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/d;->abK:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->f(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/fingerprint/d;->abK:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->g(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/settings/fingerprint/d;->abL:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 205
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 206
    iget-object v1, p0, Lcom/android/settings/fingerprint/d;->abK:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->h(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 207
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 208
    return-void
.end method
