.class Lcom/android/vendorsettings/fingerprint/r;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic acj:Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/r;->acj:Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/r;->acj:Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;->a(Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;F)F

    .line 123
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/r;->acj:Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;->invalidate()V

    .line 124
    return-void
.end method
