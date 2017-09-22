.class public Lcom/miui/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# static fields
.field private static final pG:I = 0x0

.field private static final pH:I = 0x1

.field private static final pI:I = 0x2

.field private static final pJ:I = 0x3


# instance fields
.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mContentHeight:I

.field private na:Landroid/graphics/drawable/Drawable;

.field private pA:Z

.field private pB:Z

.field private pC:Z

.field private pD:Z

.field private pE:Landroid/graphics/Rect;

.field private pF:I

.field private pK:Z

.field private pL:Landroid/animation/AnimatorListenerAdapter;

.field private pM:Landroid/animation/AnimatorListenerAdapter;

.field private pq:Z

.field private pr:Landroid/view/View;

.field private ps:Lcom/miui/internal/widget/ActionBarContextView;

.field private pt:Landroid/animation/Animator;

.field private pu:[Landroid/graphics/drawable/Drawable;

.field private pv:Landroid/graphics/drawable/Drawable;

.field private pw:Landroid/graphics/drawable/Drawable;

.field private px:Landroid/graphics/drawable/Drawable;

.field private py:Landroid/graphics/drawable/Drawable;

.field private pz:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pK:Z

    .line 85
    new-instance v2, Lcom/miui/internal/widget/ActionBarContainer$1;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ActionBarContainer$1;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pL:Landroid/animation/AnimatorListenerAdapter;

    .line 93
    new-instance v2, Lcom/miui/internal/widget/ActionBarContainer$2;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ActionBarContainer$2;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pM:Landroid/animation/AnimatorListenerAdapter;

    .line 106
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    sget-object v2, Lmiui/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 110
    sget v3, Lmiui/R$styleable;->ActionBar_android_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    .line 111
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v1

    sget v4, Lmiui/R$styleable;->ActionBar_miui_actionBarEmbededTabsBackground:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    sget v5, Lmiui/R$styleable;->ActionBar_miui_actionBarStackedBackground:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pu:[Landroid/graphics/drawable/Drawable;

    .line 113
    sget v3, Lmiui/R$styleable;->ActionBar_android_backgroundStacked:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    .line 115
    sget v3, Lmiui/R$styleable;->ActionBar_customViewAutoFitSystemWindow:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pD:Z

    .line 117
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getId()I

    move-result v3

    sget v4, Lcom/miui/internal/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_0

    .line 118
    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    .line 119
    sget v3, Lmiui/R$styleable;->ActionBar_android_backgroundSplit:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    .line 120
    sget v3, Lmiui/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mContentHeight:I

    .line 122
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lmiui/R$attr;->colorPrimary:I

    invoke-static {p1, v3}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->px:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-nez v2, :cond_1

    .line 128
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setPadding(IIII)V

    .line 131
    :cond_1
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 133
    return-void

    :cond_3
    move v0, v1

    .line 131
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    return-object p1
.end method

.method private aU()V
    .locals 3

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pK:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pu:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pu:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    const/4 v0, 0x0

    .line 597
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 598
    const/4 v0, 0x1

    .line 599
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v1

    .line 600
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_2

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_2

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 603
    :cond_2
    const/4 v0, 0x2

    .line 606
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pu:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pu:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private b(II)V
    .locals 5

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 432
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    .line 433
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 437
    :cond_0
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mContentHeight:I

    if-lez v0, :cond_1

    .line 438
    iget v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mContentHeight:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 441
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 444
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v3

    move v0, v1

    move v2, v1

    .line 446
    :goto_0
    if-ge v0, v3, :cond_2

    .line 447
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_2
    if-nez v2, :cond_3

    .line 450
    invoke-virtual {p0, v1, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 452
    :cond_3
    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 371
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pD:Z

    if-nez v0, :cond_1

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 374
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 376
    :cond_1
    return-void

    .line 374
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 576
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 578
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pB:Z

    if-eqz v0, :cond_0

    .line 579
    new-instance v0, Lcom/miui/internal/widget/ActionBarContainer$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarContainer$3;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->post(Ljava/lang/Runnable;)Z

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pB:Z

    .line 587
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 271
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 280
    :cond_2
    return-void
.end method

.method getCollapsedHeight()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 164
    .line 165
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v0, :cond_5

    move v1, v2

    move v3, v2

    move v4, v2

    .line 167
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 168
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 170
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v5

    if-lez v5, :cond_0

    .line 171
    add-int/lit8 v3, v3, 0x1

    .line 172
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 167
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 177
    :cond_1
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 181
    :cond_2
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pC:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->ps:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContextView;->getAnimatedVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v4, v2

    .line 186
    :cond_4
    :goto_1
    return v4

    :cond_5
    move v4, v2

    goto :goto_1
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mContentHeight:I

    return v0
.end method

.method public getPendingInsets()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    return-object v0
.end method

.method public hide(Z)V
    .locals 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 522
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v0, :cond_2

    .line 523
    const-string v0, "TranslationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    .line 525
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 527
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pL:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 528
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 532
    :goto_1
    return-void

    .line 525
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 530
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v0, :cond_2

    .line 346
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->px:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->px:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 357
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->py:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->py:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 138
    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 139
    sget v0, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->ps:Lcom/miui/internal/widget/ActionBarContextView;

    .line 140
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pq:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 456
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 458
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    .line 459
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 460
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 461
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/miui/internal/widget/ActionBarContainer;->pF:I

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    move v0, v2

    .line 473
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    sub-int v0, v4, v0

    invoke-virtual {v2, p2, v0, p4, v4}, Landroid/view/View;->layout(IIII)V

    .line 478
    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v0, :cond_5

    .line 479
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 480
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 500
    :goto_1
    if-eqz v3, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->invalidate()V

    .line 503
    :cond_1
    return-void

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_2
    add-int/2addr v2, v0

    .line 468
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/miui/internal/widget/ActionBarContainer;->pF:I

    add-int/2addr v0, v7

    :goto_3
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 467
    goto :goto_2

    .line 468
    :cond_4
    iget v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pF:I

    goto :goto_3

    .line 484
    :cond_5
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContainer;->aU()V

    .line 485
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 486
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    sub-int v2, p4, p2

    invoke-virtual {v0, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move v0, v3

    .line 489
    :goto_4
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->px:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 490
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->px:Landroid/graphics/drawable/Drawable;

    sub-int v2, p4, p2

    invoke-virtual {v0, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 493
    :goto_5
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->py:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 494
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$drawable;->branding_bottom_divider:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->py:Landroid/graphics/drawable/Drawable;

    .line 497
    :cond_6
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->py:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v4, -0x1

    sub-int v5, p4, p2

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_7
    move v3, v0

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    move v3, v1

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 380
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v0, :cond_1

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarContainer;->b(II)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pF:I

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->e(Landroid/view/View;)V

    .line 392
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->ps:Lcom/miui/internal/widget/ActionBarContextView;

    .line 393
    if-eqz v2, :cond_3

    .line 394
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_1
    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setContentInset(I)V

    .line 397
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 399
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_7

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    move v2, v0

    .line 401
    :goto_2
    if-eqz v2, :cond_b

    .line 402
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 403
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 407
    :goto_3
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 408
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 409
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_4

    .line 410
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 411
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v2, :cond_9

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0, v4, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    :cond_4
    move v0, v1

    move v2, v1

    .line 419
    :goto_5
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 420
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 421
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_5

    .line 422
    add-int/lit8 v2, v2, 0x1

    .line 419
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move v0, v1

    .line 394
    goto/16 :goto_1

    :cond_7
    move v2, v1

    .line 399
    goto :goto_2

    .line 403
    :cond_8
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v3

    goto :goto_3

    :cond_9
    move v0, v1

    .line 411
    goto :goto_4

    .line 425
    :cond_a
    if-nez v2, :cond_0

    .line 426
    invoke-virtual {p0, v1, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_3
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 562
    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->onPageScrolled(IFZZ)V

    .line 566
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 569
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowHide()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 515
    :cond_0
    return-void
.end method

.method public onWindowShow()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 509
    :cond_0
    return-void
.end method

.method public setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->ps:Lcom/miui/internal/widget/ActionBarContextView;

    .line 144
    return-void
.end method

.method public setFragmentViewPagerMode(Z)V
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pC:Z

    .line 161
    return-void
.end method

.method public setPendingInsets(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pE:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 153
    :cond_1
    return-void
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    .line 191
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 193
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 194
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :goto_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    .line 197
    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 199
    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->requestLayout()V

    .line 204
    :goto_1
    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pK:Z

    .line 208
    :goto_2
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->invalidate()V

    .line 211
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 206
    :cond_1
    iput-boolean v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pK:Z

    goto :goto_2

    :cond_2
    move v0, v3

    .line 208
    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 232
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    .line 235
    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 238
    :cond_1
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->invalidate()V

    .line 241
    return-void

    :cond_3
    move v0, v1

    .line 238
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 214
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 216
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    .line 219
    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 222
    :cond_1
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 224
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 222
    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 325
    :cond_0
    if-eqz p1, :cond_2

    .line 326
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 327
    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 328
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 329
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 332
    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pF:I

    .line 336
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    .line 337
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pr:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setTransitioning(Z)V
    .locals 1

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pq:Z

    .line 291
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 293
    return-void

    .line 291
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 250
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 251
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 257
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 258
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 260
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 250
    goto :goto_0
.end method

.method public show(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 535
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 539
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 540
    if-eqz p1, :cond_3

    .line 541
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v0, :cond_1

    .line 542
    const-string v0, "TranslationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    .line 543
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 545
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pM:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 546
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pt:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 548
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 549
    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 556
    :cond_1
    :goto_1
    return-void

    .line 543
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 554
    :cond_3
    invoke-virtual {p0, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setTranslationY(F)V

    goto :goto_1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->na:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pv:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pA:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pw:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pz:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
