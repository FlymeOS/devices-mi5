.class public Lcom/android/camera/ui/CaptureControlPanel;
.super Landroid/widget/RelativeLayout;
.source "CaptureControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field private mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    .line 28
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 96
    return-void
.end method

.method public getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f090023

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    if-ne v0, p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x1

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 33
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CaptureControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    .line 34
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CaptureControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/ui/CaptureControlPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 75
    .local v0, "activity":Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    .line 76
    iget-boolean v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CaptureControlPanel;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 83
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 84
    return-void

    :cond_1
    move v1, v2

    .line 75
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CaptureControlPanel;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 24
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOrientation(IZ)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOrientation(IZ)V

    .line 111
    :cond_0
    return-void
.end method
