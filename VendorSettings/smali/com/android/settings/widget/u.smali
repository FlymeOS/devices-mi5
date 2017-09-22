.class Lcom/android/settings/widget/u;
.super Landroid/widget/FrameLayout;
.source "ScreenView.java"

# interfaces
.implements Lcom/android/settings/widget/p;


# instance fields
.field private azc:Landroid/graphics/Bitmap;

.field private azd:Landroid/graphics/NinePatch;

.field private aze:Landroid/graphics/Rect;

.field private mPadding:Landroid/graphics/Rect;


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 2202
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2203
    iget-object v0, p0, Lcom/android/settings/widget/u;->azd:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/android/settings/widget/u;->azd:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/settings/widget/u;->aze:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2206
    :cond_0
    return-void
.end method

.method public getSlideWidth()I
    .locals 2

    .prologue
    .line 2224
    invoke-virtual {p0}, Lcom/android/settings/widget/u;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/u;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/u;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/android/settings/widget/u;->azc:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 2211
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2212
    iget-object v0, p0, Lcom/android/settings/widget/u;->azd:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/android/settings/widget/u;->aze:Landroid/graphics/Rect;

    sub-int v1, p5, p3

    iget-object v2, p0, Lcom/android/settings/widget/u;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2214
    iget-object v0, p0, Lcom/android/settings/widget/u;->aze:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/u;->aze:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/settings/widget/u;->azd:Landroid/graphics/NinePatch;

    invoke-virtual {v2}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2216
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 2

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/settings/widget/u;->aze:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/u;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2220
    iget-object v0, p0, Lcom/android/settings/widget/u;->aze:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/u;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2221
    return-void
.end method
