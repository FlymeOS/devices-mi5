.class public Landroid/widget/FloatPanelView;
.super Landroid/widget/FrameLayout;
.source "FloatPanelView.java"


# static fields
.field public static final DOWN_ARROW:I = -0x1

.field public static final NO_ARROW:I = 0x0

.field public static final UP_ARROW:I = 0x1


# instance fields
.field private mContent:Landroid/view/ViewGroup;

.field private mDirection:I

.field private mDownArrow:Landroid/widget/ImageView;

.field private mLeftRoundCorner:I

.field private mOffset:I

.field private mRightRoundCorner:I

.field private mUpArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    .line 33
    return-void
.end method

.method private getImageView(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 51
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "i":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x110200bc

    invoke-direct {p0, v0}, Landroid/widget/FloatPanelView;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    .line 47
    const v0, 0x110200bb

    invoke-direct {p0, v0}, Landroid/widget/FloatPanelView;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    .line 48
    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 135
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 136
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 137
    :cond_0
    const-string v5, "FloatPanelView"

    const-string v6, "couldn\'t find view"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "arrow":Landroid/widget/ImageView;
    iget v5, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 145
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    .line 149
    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 150
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 151
    .local v2, "arrowWidth":I
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 152
    .local v1, "arrowHeight":I
    iget v5, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    move v4, p3

    .line 153
    .local v4, "t":I
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    sub-int v5, p4, p2

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    iget v6, p0, Landroid/widget/FloatPanelView;->mOffset:I

    add-int v3, v5, v6

    .line 155
    .local v3, "l":I
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_6

    .line 156
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    add-int v3, v5, v6

    .line 160
    :cond_3
    :goto_3
    add-int v5, v3, v2

    add-int v6, v4, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 161
    if-ne v4, p3, :cond_7

    move v4, v1

    .line 162
    :goto_4
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0

    .line 146
    .end local v1    # "arrowHeight":I
    .end local v2    # "arrowWidth":I
    .end local v3    # "l":I
    .end local v4    # "t":I
    :cond_4
    iget v5, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 147
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    goto :goto_1

    .line 152
    .restart local v1    # "arrowHeight":I
    .restart local v2    # "arrowWidth":I
    :cond_5
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    add-int v4, p3, v5

    goto :goto_2

    .line 157
    .restart local v3    # "l":I
    .restart local v4    # "t":I
    :cond_6
    sub-int v5, p4, v2

    iget v6, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_3

    .line 158
    sub-int v5, p4, v2

    iget v6, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    sub-int v3, v5, v6

    goto :goto_3

    :cond_7
    move v4, p3

    .line 161
    goto :goto_4

    .line 166
    .end local v1    # "arrowHeight":I
    .end local v2    # "arrowWidth":I
    .end local v3    # "l":I
    .end local v4    # "t":I
    :cond_8
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "arrow":Landroid/widget/ImageView;
    iget v2, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 124
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    .line 128
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 129
    .local v1, "arrowHeight":I
    :goto_1
    iget-object v2, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 130
    iget-object v2, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/widget/FloatPanelView;->setMeasuredDimension(II)V

    .line 132
    return-void

    .line 125
    .end local v1    # "arrowHeight":I
    :cond_1
    iget v2, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 126
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1
.end method

.method public setArrow(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/FloatPanelView;->mDirection:I

    if-eq p1, v0, :cond_0

    .line 79
    iput p1, p0, Landroid/widget/FloatPanelView;->mDirection:I

    .line 80
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 82
    :cond_0
    return-void
.end method

.method public setContent(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->removeAllViews()V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    .line 61
    iput-object p1, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    .line 62
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setLeftCorner(I)V
    .locals 1
    .param p1, "corner"    # I

    .prologue
    .line 102
    iget v0, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    if-eq p1, v0, :cond_0

    .line 103
    iput p1, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    .line 104
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 106
    :cond_0
    return-void
.end method

.method public setOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/FloatPanelView;->mOffset:I

    if-eq v0, p1, :cond_0

    .line 91
    iput p1, p0, Landroid/widget/FloatPanelView;->mOffset:I

    .line 92
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 94
    :cond_0
    return-void
.end method

.method public setRightCorner(I)V
    .locals 1
    .param p1, "corner"    # I

    .prologue
    .line 114
    iget v0, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    if-eq p1, v0, :cond_0

    .line 115
    iput p1, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    .line 116
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 118
    :cond_0
    return-void
.end method
