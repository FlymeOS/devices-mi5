.class public Lcom/miui/internal/view/menu/PhoneActionMenuView;
.super Lcom/miui/internal/view/menu/ActionMenuView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/PhoneActionMenuView$1;,
        Lcom/miui/internal/view/menu/PhoneActionMenuView$a;,
        Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    }
.end annotation


# static fields
.field private static final ox:[I


# instance fields
.field private oA:Lcom/miui/internal/view/menu/PhoneActionMenuView$a;

.field private oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

.field private oC:Landroid/graphics/drawable/Drawable;

.field private oD:Landroid/graphics/drawable/Drawable;

.field private oE:I

.field private oF:I

.field private oG:Landroid/graphics/Rect;

.field private oH:I

.field private oI:I

.field private oJ:I

.field private oy:Landroid/view/View;

.field private oz:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/miui/internal/R$attr;->expandBackground:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/miui/internal/R$attr;->splitActionBarOverlayHeight:I

    aput v2, v0, v1

    sput-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ox:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oK:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 62
    iput v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oI:I

    .line 64
    iput v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oJ:I

    .line 73
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oD:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oC:Landroid/graphics/drawable/Drawable;

    .line 78
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oH:I

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aP()V

    .line 82
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->addView(Landroid/view/View;)V

    .line 85
    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setChildrenDrawingOrderEnabled(Z)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->action_button_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oI:I

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object p1
.end method

.method private aO()Lcom/miui/internal/view/menu/PhoneActionMenuView$a;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oA:Lcom/miui/internal/view/menu/PhoneActionMenuView$a;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;-><init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$1;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oA:Lcom/miui/internal/view/menu/PhoneActionMenuView$a;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oA:Lcom/miui/internal/view/menu/PhoneActionMenuView$a;

    return-object v0
.end method

.method private aP()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oG:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oG:Landroid/graphics/Rect;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oD:Landroid/graphics/drawable/Drawable;

    .line 336
    :goto_0
    if-nez v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oG:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 342
    :goto_1
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oC:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 341
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oG:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object v0
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 103
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v1

    .line 109
    :goto_0
    if-eqz v0, :cond_4

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->filterLeftoverView(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    return v2

    .line 106
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    .line 107
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    .line 109
    goto :goto_1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 357
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 358
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 360
    if-nez p2, :cond_1

    .line 361
    if-eq v0, v3, :cond_0

    .line 389
    :goto_0
    return v0

    .line 363
    :cond_0
    if-eq v1, v3, :cond_2

    move v0, v1

    .line 364
    goto :goto_0

    .line 366
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 367
    if-eq v0, v3, :cond_2

    if-eq v1, v3, :cond_2

    move v0, v1

    .line 368
    goto :goto_0

    .line 372
    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_6

    .line 373
    if-eq v2, v0, :cond_3

    if-ne v2, v1, :cond_4

    .line 372
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 378
    :cond_4
    if-ge v2, v0, :cond_7

    .line 379
    add-int/lit8 v3, v2, 0x1

    .line 381
    :goto_2
    if-ge v2, v1, :cond_5

    .line 382
    add-int/lit8 v3, v3, 0x1

    .line 384
    :cond_5
    if-ne v3, p2, :cond_3

    move v0, v2

    .line 385
    goto :goto_0

    .line 389
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildDrawingOrder(II)I

    move-result v0

    goto :goto_0

    :cond_7
    move v3, v2

    goto :goto_2
.end method

.method public getCollapsedHeight()I
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oF:I

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oF:I

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oG:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oH:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public hasBackgroundView()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 158
    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oN:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oK:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_1

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oD:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aO()Lcom/miui/internal/view/menu/PhoneActionMenuView$a;

    move-result-object v1

    .line 164
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oM:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_3

    .line 165
    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oN:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 166
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->hide()V

    .line 170
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :cond_3
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oL:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_2

    .line 168
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->reverse()V

    goto :goto_1
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oL:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oM:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    .prologue
    .line 248
    sub-int v4, p4, p2

    .line 249
    sub-int v8, p5, p3

    .line 252
    const/4 v3, 0x0

    .line 253
    const/4 v0, 0x0

    .line 256
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 257
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 258
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 259
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oG:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v0

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    const/4 v2, 0x0

    move-object v0, p0

    move v5, v8

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 265
    const/4 v6, 0x0

    .line 266
    const/4 v1, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v9

    .line 269
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v9, :cond_1

    .line 270
    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    iget-object v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-eq v0, v5, :cond_8

    iget-object v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    if-ne v0, v5, :cond_0

    move v0, v1

    .line 269
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 274
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oJ:I

    if-lt v0, v5, :cond_7

    .line 275
    const/4 v0, 0x1

    .line 277
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v6, v0

    move v0, v1

    goto :goto_2

    .line 281
    :cond_1
    if-eqz v6, :cond_3

    .line 282
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oJ:I

    mul-int/2addr v0, v1

    sub-int v0, v4, v0

    shr-int/lit8 v0, v0, 0x1

    .line 287
    :goto_4
    const/4 v1, 0x0

    move v7, v1

    move v2, v0

    :goto_5
    if-ge v7, v9, :cond_6

    .line 288
    invoke-virtual {p0, v7}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 289
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    if-ne v1, v0, :cond_4

    .line 287
    :cond_2
    :goto_6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5

    .line 284
    :cond_3
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oE:I

    sub-int v0, v4, v0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 292
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 293
    if-eqz v6, :cond_5

    .line 294
    iget v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oJ:I

    sub-int/2addr v4, v0

    shr-int/lit8 v10, v4, 0x1

    .line 295
    add-int/2addr v2, v10

    .line 296
    add-int v4, v2, v0

    move-object v0, p0

    move v5, v8

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 297
    sub-int v0, v2, v10

    .line 298
    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oJ:I

    add-int v2, v0, v1

    .line 299
    goto :goto_6

    .line 300
    :cond_5
    add-int v4, v2, v0

    move-object v0, p0

    move v5, v8

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 301
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_6

    .line 305
    :cond_6
    return-void

    :cond_7
    move v0, v6

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move v3, v0

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 190
    .line 194
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v9

    .line 195
    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->hasBackgroundView()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    .line 196
    :cond_0
    iput v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oF:I

    .line 197
    invoke-virtual {p0, v3, v3}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setMeasuredDimension(II)V

    .line 244
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 203
    add-int/lit8 v0, v0, -0x1

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 206
    add-int/lit8 v0, v0, -0x1

    .line 208
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int v0, v1, v0

    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oI:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oJ:I

    .line 211
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oJ:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v8, v3

    move v6, v3

    move v7, v3

    .line 213
    :goto_1
    if-ge v8, v9, :cond_5

    .line 214
    invoke-virtual {p0, v8}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 215
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-eq v1, v0, :cond_b

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    if-ne v1, v0, :cond_4

    move v0, v6

    move v1, v7

    .line 213
    :goto_2
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v6, v0

    move v7, v1

    goto :goto_1

    :cond_4
    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 219
    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 220
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, v7, v0

    .line 221
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v4

    goto :goto_2

    .line 223
    :cond_5
    iput v7, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oE:I

    .line 224
    iput v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oF:I

    .line 226
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 227
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 228
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 229
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v6, v0

    .line 231
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oM:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_9

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 235
    :cond_6
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-nez v0, :cond_7

    .line 236
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oG:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    .line 238
    :cond_7
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oM:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oL:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oC:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 243
    invoke-virtual {p0, v0, v6}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 231
    :cond_9
    int-to-float v0, v6

    goto :goto_3

    .line 238
    :cond_a
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oD:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_b
    move v0, v6

    move v1, v7

    goto :goto_2
.end method

.method public onPageScrolled(IFZZ)V
    .locals 4

    .prologue
    .line 316
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->computeAlpha(FZZ)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setAlpha(F)V

    .line 320
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->computeTranslationY(FZZ)F

    move-result v1

    .line 321
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 322
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 323
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    if-ne v2, v3, :cond_2

    .line 321
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 328
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    cmpl-float v0, v1, v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oD:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 94
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oD:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aP()V

    .line 97
    :cond_0
    return-void
.end method

.method public setOverflowMenuView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->removeView(Landroid/view/View;)V

    .line 121
    :cond_1
    if-eqz p1, :cond_2

    .line 122
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->addView(Landroid/view/View;)V

    .line 124
    :cond_2
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    .line 125
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aP()V

    .line 127
    :cond_3
    return-void
.end method

.method public setValue(F)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public showOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 130
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 131
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oL:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oM:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oy:Landroid/view/View;

    if-nez v2, :cond_1

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oz:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aO()Lcom/miui/internal/view/menu/PhoneActionMenuView$a;

    move-result-object v2

    .line 137
    sget-object v3, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oK:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v3, :cond_3

    .line 138
    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oL:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oB:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 139
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->show()V

    .line 144
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    .line 146
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setFocusable(Z)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setFocusableInTouchMode(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->requestFocus()Z

    goto :goto_0

    .line 140
    :cond_3
    sget-object v3, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oN:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v3, :cond_2

    .line 141
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->reverse()V

    goto :goto_1
.end method
