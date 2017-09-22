.class public Lcom/android/settings/widget/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# instance fields
.field private awE:Landroid/graphics/drawable/AnimatedRotateDrawable;

.field private pV:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private updateDrawable()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->awE:Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->awE:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v1, :cond_2

    .line 44
    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    iput-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->awE:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 46
    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->awE:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->awE:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/widget/AnimatedImageView;->pV:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->awE:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 54
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->awE:Landroid/graphics/drawable/AnimatedRotateDrawable;

    goto :goto_0
.end method

.method private vZ()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->awE:Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/widget/AnimatedImageView;->pV:Z

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->awE:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->awE:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->vZ()V

    .line 82
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->vZ()V

    .line 88
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->vZ()V

    .line 99
    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/settings/widget/AnimatedImageView;->pV:Z

    .line 92
    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->vZ()V

    .line 93
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateDrawable()V

    .line 70
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateDrawable()V

    .line 76
    return-void
.end method
