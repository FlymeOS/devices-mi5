.class public Lcom/android/camera/ui/HorizontalSlideView;
.super Landroid/view/View;
.source "HorizontalSlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;,
        Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;
    }
.end annotation


# instance fields
.field private mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaxX:I

.field private mMinX:I

.field private mNeedJustify:Z

.field private mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

.field private mOriginX:F

.field private mPositionX:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedItemIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 23
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    .line 24
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 28
    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 23
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    .line 24
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 28
    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 23
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    .line 24
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 28
    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/HorizontalSlideView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/HorizontalSlideView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/HorizontalSlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/HorizontalSlideView;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/HorizontalSlideView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/HorizontalSlideView;

    .prologue
    .line 14
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/HorizontalSlideView;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/HorizontalSlideView;

    .prologue
    .line 14
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/HorizontalSlideView;

    .prologue
    .line 14
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/HorizontalSlideView;

    .prologue
    .line 14
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/HorizontalSlideView;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setPositionX(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/HorizontalSlideView;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->flingX(I)V

    return-void
.end method

.method private flingX(I)V
    .locals 9
    .param p1, "velocityX"    # I

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v5, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 170
    return-void
.end method

.method private getItemGap(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->measureGap(I)F

    move-result v0

    return v0
.end method

.method private getItemWidth(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result v0

    return v0
.end method

.method private scroll(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    const/4 v2, 0x0

    .line 173
    if-eqz p1, :cond_1

    .line 174
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    if-ge v0, v1, :cond_2

    .line 175
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    sub-int p1, v0, v1

    .line 179
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 180
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 182
    :cond_1
    return-void

    .line 176
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    if-le v0, v1, :cond_0

    .line 177
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    sub-int p1, v0, v1

    goto :goto_0
.end method

.method private select(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 132
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-eq v0, p1, :cond_0

    .line 133
    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    invoke-interface {v0, p0, v1}, Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;->onItemSelect(Lcom/android/camera/ui/HorizontalSlideView;I)V

    .line 138
    :cond_0
    return-void
.end method

.method private setPositionX(I)V
    .locals 2
    .param p1, "positionX"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 159
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    if-ge v0, v1, :cond_1

    .line 160
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 164
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 165
    return-void

    .line 161
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    if-le v0, v1, :cond_0

    .line 162
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    goto :goto_0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 63
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    .line 64
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->getCurrX()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v15, v17, v18

    .line 200
    .local v15, "startX":F
    const/4 v6, 0x0

    .line 201
    .local v6, "drawLeftX":F
    move v4, v15

    .line 202
    .local v4, "drawCenterX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v5, v17, v18

    .line 203
    .local v5, "drawCenterY":F
    const/4 v13, 0x1

    .line 204
    .local v13, "nearestUnFound":Z
    const/4 v12, 0x0

    .line 206
    .local v12, "nearestDistance":F
    const/4 v11, 0x0

    .local v11, "leftHalfMargin":F
    const/4 v14, 0x0

    .line 207
    .local v14, "rightHalfMargin":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    .line 208
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_b

    .line 209
    if-nez v8, :cond_5

    const/4 v9, 0x1

    .line 210
    .local v9, "isFirst":Z
    :goto_1
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/4 v10, 0x1

    .line 211
    .local v10, "isLast":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v16

    .line 212
    .local v16, "width":F
    const/high16 v17, 0x40000000    # 2.0f

    div-float v7, v16, v17

    .line 213
    .local v7, "halfWidth":F
    if-eqz v9, :cond_7

    const/4 v11, 0x0

    .line 214
    :goto_3
    if-eqz v10, :cond_8

    const/4 v14, 0x0

    .line 216
    :goto_4
    if-eqz v9, :cond_1

    sub-float v6, v15, v7

    .line 217
    :cond_1
    if-eqz v9, :cond_9

    move v4, v15

    .line 219
    :goto_5
    if-eqz v13, :cond_4

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    move/from16 v17, v0

    sub-float v3, v4, v17

    .line 221
    .local v3, "distance":F
    const/16 v17, 0x0

    cmpg-float v17, v3, v17

    if-gtz v17, :cond_2

    neg-float v0, v3

    move/from16 v17, v0

    add-float v18, v7, v14

    cmpg-float v17, v17, v18

    if-lez v17, :cond_3

    :cond_2
    const/16 v17, 0x0

    cmpl-float v17, v3, v17

    if-lez v17, :cond_4

    add-float v17, v7, v11

    cmpg-float v17, v3, v17

    if-gtz v17, :cond_4

    .line 223
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->select(I)V

    .line 224
    const/4 v13, 0x0

    .line 225
    move v12, v3

    .line 229
    .end local v3    # "distance":F
    :cond_4
    if-eqz v10, :cond_a

    const/16 v17, 0x0

    :goto_6
    add-float v6, v6, v17

    .line 208
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 209
    .end local v7    # "halfWidth":F
    .end local v9    # "isFirst":Z
    .end local v10    # "isLast":Z
    .end local v16    # "width":F
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 210
    .restart local v9    # "isFirst":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .restart local v7    # "halfWidth":F
    .restart local v10    # "isLast":Z
    .restart local v16    # "width":F
    :cond_7
    move v11, v14

    .line 213
    goto :goto_3

    .line 214
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v14, v17, v18

    goto :goto_4

    .line 217
    :cond_9
    add-float v4, v6, v7

    goto :goto_5

    .line 229
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v17

    add-float v17, v17, v16

    goto :goto_6

    .line 232
    .end local v7    # "halfWidth":F
    .end local v9    # "isFirst":Z
    .end local v10    # "isLast":Z
    .end local v16    # "width":F
    :cond_b
    sub-float v17, v4, v15

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 234
    const/4 v8, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_15

    .line 235
    if-nez v8, :cond_e

    const/4 v9, 0x1

    .line 236
    .restart local v9    # "isFirst":Z
    :goto_8
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    const/4 v10, 0x1

    .line 237
    .restart local v10    # "isLast":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v16

    .line 238
    .restart local v16    # "width":F
    const/high16 v17, 0x40000000    # 2.0f

    div-float v7, v16, v17

    .line 240
    .restart local v7    # "halfWidth":F
    if-eqz v9, :cond_c

    sub-float v6, v15, v7

    .line 241
    :cond_c
    if-eqz v9, :cond_10

    move v4, v15

    .line 243
    :goto_a
    add-float v17, v6, v16

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v6, v17

    if-gtz v17, :cond_d

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v17

    sget-object v18, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 246
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v8, :cond_13

    const/16 v17, 0x1

    :goto_c
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;Z)V

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 256
    :cond_d
    if-eqz v10, :cond_14

    const/16 v17, 0x0

    :goto_d
    add-float v6, v6, v17

    .line 234
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 235
    .end local v7    # "halfWidth":F
    .end local v9    # "isFirst":Z
    .end local v10    # "isLast":Z
    .end local v16    # "width":F
    :cond_e
    const/4 v9, 0x0

    goto :goto_8

    .line 236
    .restart local v9    # "isFirst":Z
    :cond_f
    const/4 v10, 0x0

    goto :goto_9

    .line 241
    .restart local v7    # "halfWidth":F
    .restart local v10    # "isLast":Z
    .restart local v16    # "width":F
    :cond_10
    add-float v4, v6, v7

    goto :goto_a

    .line 247
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v17

    sget-object v18, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 248
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_b

    .line 250
    :cond_12
    add-float v17, v6, v16

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_b

    .line 252
    :cond_13
    const/16 v17, 0x0

    goto :goto_c

    .line 256
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v17

    add-float v17, v17, v16

    goto :goto_d

    .line 260
    .end local v7    # "halfWidth":F
    .end local v8    # "i":I
    .end local v9    # "isFirst":Z
    .end local v10    # "isLast":Z
    .end local v16    # "width":F
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 261
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 262
    float-to-int v0, v12

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V

    .line 264
    :cond_16
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 143
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    .line 144
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 148
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 150
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 151
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 154
    :cond_0
    return v0
.end method

.method public setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    .prologue
    const/4 v0, 0x0

    .line 86
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    .line 87
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 88
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 89
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 93
    return-void
.end method

.method public setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    .line 83
    return-void
.end method

.method public setSelection(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 96
    iget v10, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-ne v10, p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 98
    :cond_0
    iput-boolean v9, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 99
    iget-object v10, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 100
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->select(I)V

    .line 102
    iget v6, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    .line 103
    .local v6, "startX":F
    const/4 v1, 0x0

    .line 104
    .local v1, "drawLeftX":F
    move v0, v6

    .line 106
    .local v0, "drawCenterX":F
    iget-object v10, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    if-eqz v10, :cond_7

    .line 107
    iget-object v10, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v10}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v10

    if-lt p1, v10, :cond_1

    .line 108
    iget-object v10, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v10}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v10

    add-int/lit8 p1, v10, -0x1

    .line 110
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, p1, :cond_7

    .line 111
    if-nez v3, :cond_3

    move v4, v8

    .line 112
    .local v4, "isFirst":Z
    :goto_2
    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v11}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v11

    if-ne v10, v11, :cond_4

    move v5, v8

    .line 113
    .local v5, "isLast":Z
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v7

    .line 114
    .local v7, "width":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v2, v7, v10

    .line 116
    .local v2, "halfWidth":F
    if-eqz v4, :cond_2

    sub-float v1, v6, v2

    .line 117
    :cond_2
    if-eqz v4, :cond_5

    move v0, v6

    .line 119
    :goto_4
    if-eqz v5, :cond_6

    const/4 v10, 0x0

    :goto_5
    add-float/2addr v1, v10

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "halfWidth":F
    .end local v4    # "isFirst":Z
    .end local v5    # "isLast":Z
    .end local v7    # "width":F
    :cond_3
    move v4, v9

    .line 111
    goto :goto_2

    .restart local v4    # "isFirst":Z
    :cond_4
    move v5, v9

    .line 112
    goto :goto_3

    .line 117
    .restart local v2    # "halfWidth":F
    .restart local v5    # "isLast":Z
    .restart local v7    # "width":F
    :cond_5
    add-float v0, v1, v2

    goto :goto_4

    .line 119
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v10

    add-float/2addr v10, v7

    goto :goto_5

    .line 123
    .end local v2    # "halfWidth":F
    .end local v3    # "i":I
    .end local v4    # "isFirst":Z
    .end local v5    # "isLast":Z
    .end local v7    # "width":F
    :cond_7
    sub-float v8, v0, v6

    float-to-int v8, v8

    iput v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    goto :goto_0
.end method
