.class Lcom/android/vendorsettings/fingerprint/t;
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
    .line 152
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/t;->acj:Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/t;->acj:Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;

    invoke-static {v0}, Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;->b(Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;)Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/t;->acj:Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;->invalidate()V

    .line 157
    return-void
.end method
