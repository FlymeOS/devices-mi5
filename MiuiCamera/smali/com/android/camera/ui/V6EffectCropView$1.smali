.class Lcom/android/camera/ui/V6EffectCropView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "V6EffectCropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6EffectCropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6EffectCropView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6EffectCropView;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    # getter for: Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectCropView;->access$000(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskAlive:Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->access$102(Lcom/android/camera/ui/V6EffectCropView;Z)Z

    .line 113
    :cond_0
    return-void
.end method
