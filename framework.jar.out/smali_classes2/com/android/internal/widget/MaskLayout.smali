.class public Lcom/android/internal/widget/MaskLayout;
.super Landroid/widget/FrameLayout;
.source "MaskLayout.java"


# instance fields
.field private mDrawTouchMask:Z

.field private mMaskColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    .line 31
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/widget/MaskLayout;->mDrawTouchMask:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 51
    .local v7, "result":Z
    iget v0, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 55
    .end local v7    # "result":Z
    :goto_0
    return v7

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/widget/MaskLayout;->getDrawableState()[I

    move-result-object v1

    .line 38
    .local v1, "stateSet":[I
    sget-object v2, Lcom/android/internal/widget/MaskLayout;->PRESSED_STATE_SET:[I

    invoke-static {v2, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/internal/widget/MaskLayout;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v2, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 40
    .local v0, "drawMask":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/widget/MaskLayout;->mDrawTouchMask:Z

    if-eq v2, v0, :cond_1

    .line 41
    iput-boolean v0, p0, Lcom/android/internal/widget/MaskLayout;->mDrawTouchMask:Z

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/widget/MaskLayout;->invalidate()V

    .line 44
    :cond_1
    return-void

    .line 38
    .end local v0    # "drawMask":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaskColor(I)V
    .locals 0
    .param p1, "maskColor"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    .line 60
    return-void
.end method
