.class Lcom/android/vendorsettings/fingerprint/u;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintLocationAnimationView.java"


# instance fields
.field final synthetic acj:Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/u;->acj:Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/u;->acj:Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;->b(Lcom/android/vendorsettings/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 163
    return-void
.end method
