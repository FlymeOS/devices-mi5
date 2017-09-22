.class Lcom/android/vendorsettings/display/q;
.super Ljava/lang/Object;
.source "HandyModeGuideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Yz:Lcom/android/vendorsettings/display/p;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/display/p;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget v3, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mState:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mState:I

    .line 58
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mState:I

    const/4 v3, 0x4

    if-le v0, v3, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iput v2, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mState:I

    .line 60
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v3, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-boolean v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->Yw:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/android/vendorsettings/display/HandyModeGuideView;->Yw:Z

    .line 61
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-boolean v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->Yw:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-object v3, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v3, v3, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-boolean v3, v3, Lcom/android/vendorsettings/display/HandyModeGuideView;->Yx:Z

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v1, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->Yx:Z

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-object v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 84
    return-void

    :cond_1
    move v0, v2

    .line 60
    goto :goto_0

    :cond_2
    move v1, v2

    .line 61
    goto :goto_1

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-object v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v1, v1, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    invoke-virtual {v1}, Lcom/android/vendorsettings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 68
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-object v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v1, v1, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    invoke-virtual {v1}, Lcom/android/vendorsettings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-object v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-object v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v1, v1, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    invoke-virtual {v1}, Lcom/android/vendorsettings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-object v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 76
    :pswitch_3
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-object v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v1, v1, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    invoke-virtual {v1}, Lcom/android/vendorsettings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-object v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    .line 80
    :pswitch_4
    iget-object v0, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v0, v0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    iget-object v0, v0, Lcom/android/vendorsettings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/vendorsettings/display/q;->Yz:Lcom/android/vendorsettings/display/p;

    iget-object v1, v1, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    invoke-virtual {v1}, Lcom/android/vendorsettings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
