.class Lcom/android/vendorsettings/fingerprint/h;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "FingerprintEnrollEnrolling.java"


# instance fields
.field final synthetic abK:Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/h;->abK:Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/h;->abK:Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->l(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/h;->abK:Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->e(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/fingerprint/i;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/fingerprint/i;-><init>(Lcom/android/vendorsettings/fingerprint/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
