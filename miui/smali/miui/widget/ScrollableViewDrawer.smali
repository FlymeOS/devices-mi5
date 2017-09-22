.class public Lmiui/widget/ScrollableViewDrawer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScrollableViewDrawer$b;,
        Lmiui/widget/ScrollableViewDrawer$a;,
        Lmiui/widget/ScrollableViewDrawer$IScrollableView;,
        Lmiui/widget/ScrollableViewDrawer$DrawerListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ScrollableViewDrawer"

.field private static final STATE_DRAGGING:I = 0x1

.field private static final XW:I = 0x0

.field private static final XX:I = 0x2

.field private static final XY:Z


# instance fields
.field private Md:Z

.field private XZ:I

.field private Ya:I

.field private Yb:I

.field private Yc:Landroid/view/View;

.field private Yd:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

.field private Ye:I

.field private Yf:Landroid/graphics/drawable/Drawable;

.field private Yg:I

.field private Yh:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

.field private Yi:I

.field private Yj:Z

.field private Yk:Z

.field private Yl:Z

.field private Ym:F

.field private Yn:F

.field private Yo:I

.field private fy:I

.field private mContentView:Landroid/view/View;

.field private mLastMotionY:F

.field private qC:Landroid/view/VelocityTracker;

.field private qr:I

.field private vB:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScrollableViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yi:I

    .line 103
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->fy:I

    .line 104
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->vB:Landroid/widget/Scroller;

    .line 105
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qC:Landroid/view/VelocityTracker;

    .line 107
    sget-object v0, Lmiui/R$styleable;->ScrollableViewDrawer:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    sget v1, Lmiui/R$styleable;->ScrollableViewDrawer_contentView:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->XZ:I

    .line 109
    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->XZ:I

    if-nez v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    sget v1, Lmiui/R$styleable;->ScrollableViewDrawer_targetView:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->Ya:I

    .line 114
    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->Ya:I

    if-nez v1, :cond_1

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The targetView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    sget v1, Lmiui/R$styleable;->ScrollableViewDrawer_scrollableView:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yb:I

    .line 119
    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yb:I

    if-nez v1, :cond_2

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    sget v1, Lmiui/R$styleable;->ScrollableViewDrawer_scrollDivider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yf:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yf:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 125
    sget v1, Lmiui/R$attr;->scrollDivider:I

    invoke-static {p1, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yf:Landroid/graphics/drawable/Drawable;

    .line 127
    :cond_3
    iget-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yf:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 128
    iget-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yg:I

    .line 130
    :cond_4
    sget v1, Lmiui/R$styleable;->ScrollableViewDrawer_dragEnabled:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->Md:Z

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    return-void
.end method

.method private fd()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Ye:I

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->Ye:I

    .line 174
    :cond_0
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Ye:I

    return v0
.end method

.method private fe()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yc:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yd:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    invoke-interface {v0}, Lmiui/widget/ScrollableViewDrawer$IScrollableView;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ff()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 377
    .line 378
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    if-nez v0, :cond_1

    .line 379
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yj:Z

    if-nez v0, :cond_3

    .line 380
    const/4 v0, 0x0

    .line 387
    :goto_0
    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->qr:I

    if-eq v2, v0, :cond_2

    .line 388
    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->qr:I

    .line 389
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fg()V

    .line 393
    :cond_0
    :goto_1
    return-void

    .line 382
    :cond_1
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fd()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 383
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yj:Z

    if-nez v0, :cond_3

    .line 384
    const/4 v0, 0x2

    goto :goto_0

    .line 390
    :cond_2
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->qr:I

    if-ne v0, v1, :cond_0

    .line 391
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fg()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private fg()V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yh:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    if-eqz v0, :cond_0

    .line 397
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->qr:I

    packed-switch v0, :pswitch_data_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 399
    :pswitch_0
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yh:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    invoke-interface {v0, p0}, Lmiui/widget/ScrollableViewDrawer$DrawerListener;->onDrawerClosed(Lmiui/widget/ScrollableViewDrawer;)V

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yh:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    invoke-interface {v0, p0}, Lmiui/widget/ScrollableViewDrawer$DrawerListener;->onDrawerOpened(Lmiui/widget/ScrollableViewDrawer;)V

    goto :goto_0

    .line 405
    :pswitch_2
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yh:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    int-to-float v1, v1

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fd()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, p0, v1}, Lmiui/widget/ScrollableViewDrawer$DrawerListener;->onDrawerSlide(Lmiui/widget/ScrollableViewDrawer;F)V

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private fh()V
    .locals 2

    .prologue
    .line 463
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->Md:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yc:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yc:Landroid/view/View;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 465
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->ff()V

    .line 467
    :cond_0
    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->closeDrawer(Z)V

    .line 446
    return-void
.end method

.method public closeDrawer(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 453
    if-eqz p1, :cond_0

    .line 454
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->vB:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    neg-int v2, v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 459
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    .line 460
    return-void

    .line 456
    :cond_0
    iput v3, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    .line 457
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fh()V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 352
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yc:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    .line 355
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fh()V

    .line 356
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->postInvalidateOnAnimation()V

    .line 359
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 182
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->Md:Z

    if-nez v0, :cond_1

    .line 183
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 259
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yj:Z

    if-eqz v0, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 188
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yi:I

    .line 189
    iput-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yj:Z

    .line 190
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 191
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 192
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->Ym:F

    .line 193
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yn:F

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    .line 194
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    goto :goto_1

    .line 197
    :pswitch_2
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yi:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 198
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 200
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yi:I

    move v0, v1

    .line 203
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->Ym:F

    sub-float/2addr v3, v4

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->Yn:F

    sub-float/2addr v4, v5

    .line 206
    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->Yj:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->Yl:Z

    if-nez v5, :cond_8

    .line 207
    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fd()I

    move-result v6

    if-ne v5, v6, :cond_9

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_9

    .line 208
    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->Yj:Z

    .line 213
    :cond_5
    :goto_2
    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->Yj:Z

    if-eqz v5, :cond_6

    .line 214
    const-string v5, "ScrollableViewDrawer"

    const-string v6, "determine drag"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 216
    if-eqz v5, :cond_6

    .line 217
    invoke-interface {v5, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 221
    :cond_6
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->fy:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    iget-boolean v4, p0, Lmiui/widget/ScrollableViewDrawer;->Yl:Z

    if-nez v4, :cond_7

    .line 222
    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->Yk:Z

    .line 225
    :cond_7
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->fy:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    iget-boolean v3, p0, Lmiui/widget/ScrollableViewDrawer;->Yk:Z

    if-nez v3, :cond_8

    .line 226
    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->Yl:Z

    .line 229
    :cond_8
    iget-boolean v3, p0, Lmiui/widget/ScrollableViewDrawer;->Yj:Z

    if-nez v3, :cond_2

    .line 230
    iget-object v3, p0, Lmiui/widget/ScrollableViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    goto/16 :goto_1

    .line 209
    :cond_9
    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->fy:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    .line 210
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fe()Z

    move-result v5

    iput-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->Yj:Z

    goto :goto_2

    .line 236
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 238
    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->Yi:I

    if-ne v3, v4, :cond_2

    .line 239
    if-nez v0, :cond_a

    move v0, v2

    .line 240
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lmiui/widget/ScrollableViewDrawer;->Yi:I

    .line 241
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lmiui/widget/ScrollableViewDrawer;->Ym:F

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yn:F

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 239
    goto :goto_3

    .line 247
    :pswitch_4
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yj:Z

    if-nez v0, :cond_b

    .line 248
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 250
    :cond_b
    iput-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yj:Z

    .line 251
    iput-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yl:Z

    .line 252
    iput-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yk:Z

    goto/16 :goto_1

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .prologue
    .line 325
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->getPaddingLeft()I

    move-result v1

    .line 327
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    .line 328
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 329
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    add-int/2addr v0, v3

    .line 330
    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->Yg:I

    if-lez v4, :cond_0

    .line 331
    iget-object v4, p0, Lmiui/widget/ScrollableViewDrawer;->Yf:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->Yg:I

    sub-int v5, v0, v5

    invoke-virtual {v4, v1, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    iget-object v4, p0, Lmiui/widget/ScrollableViewDrawer;->Yf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 333
    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->Yg:I

    sub-int/2addr v0, v4

    .line 335
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 336
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 338
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 339
    iget-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v1, :cond_2

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 342
    :cond_2
    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->XZ:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must be a direct child of ScrollableViewDrawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Ya:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yc:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yc:Landroid/view/View;

    if-nez v0, :cond_2

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The targetView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yc:Landroid/view/View;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 153
    if-nez v0, :cond_3

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is must refer to an existing child of targetView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_3
    instance-of v1, v0, Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    if-eqz v1, :cond_4

    .line 159
    check-cast v0, Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yd:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_4
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_5

    .line 161
    new-instance v1, Lmiui/widget/ScrollableViewDrawer$b;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Lmiui/widget/ScrollableViewDrawer$b;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yd:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    goto :goto_0

    .line 162
    :cond_5
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_6

    .line 163
    new-instance v1, Lmiui/widget/ScrollableViewDrawer$a;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-direct {v1, v0}, Lmiui/widget/ScrollableViewDrawer$a;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yd:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    goto :goto_0

    .line 165
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is must refer to an ScrollView or AdapterView or IScrollableViewWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->Md:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yj:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 315
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 271
    :pswitch_1
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 272
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yi:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 273
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 275
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yi:I

    move v0, v1

    .line 277
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 278
    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    sub-float v2, v0, v2

    float-to-int v2, v2

    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    add-int/2addr v2, v3

    .line 279
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 280
    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    .line 281
    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    .line 283
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fh()V

    .line 284
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    goto :goto_0

    .line 288
    :pswitch_2
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 289
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qC:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 290
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    if-eqz v0, :cond_2

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fd()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 291
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 292
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->vB:Landroid/widget/Scroller;

    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fd()I

    move-result v3

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 296
    :goto_1
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    .line 300
    :goto_2
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->vB:Landroid/widget/Scroller;

    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_1

    .line 298
    :cond_2
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->ff()V

    goto :goto_2

    .line 303
    :pswitch_3
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    if-eqz v0, :cond_3

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fd()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 304
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->vB:Landroid/widget/Scroller;

    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 305
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    .line 309
    :goto_3
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 307
    :cond_3
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->ff()V

    goto :goto_3

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->openDrawer(Z)V

    .line 425
    return-void
.end method

.method public openDrawer(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 432
    if-eqz p1, :cond_0

    .line 433
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->vB:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fd()I

    move-result v2

    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 438
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    .line 439
    return-void

    .line 435
    :cond_0
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fd()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->Yo:I

    .line 436
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fh()V

    goto :goto_0
.end method

.method public resetState()V
    .locals 0

    .prologue
    .line 417
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->closeDrawer()V

    .line 418
    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .prologue
    .line 365
    iput-boolean p1, p0, Lmiui/widget/ScrollableViewDrawer;->Md:Z

    .line 366
    return-void
.end method

.method public setDrawerListener(Lmiui/widget/ScrollableViewDrawer$DrawerListener;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->Yh:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    .line 374
    return-void
.end method
