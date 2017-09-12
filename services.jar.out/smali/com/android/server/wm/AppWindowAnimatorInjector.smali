.class Lcom/android/server/wm/AppWindowAnimatorInjector;
.super Ljava/lang/Object;
.source "AppWindowAnimatorInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static scaleCurrentDuration(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p0, "anim"    # Landroid/view/animation/Animation;
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 7
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 15
    :goto_0
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    goto :goto_0

    .line 7
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
