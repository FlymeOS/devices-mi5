.class public Lcom/miui/internal/widget/ArrowPopupView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ArrowPopupView$a;
    }
.end annotation


# static fields
.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_NONE_MODE:I = -0x1

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ArrowPopupView"

.field private static final sQ:I = 0x4

.field private static final sR:I = 0x8


# instance fields
.field private na:Landroid/graphics/drawable/Drawable;

.field private pS:Landroid/widget/LinearLayout;

.field private sA:Landroid/graphics/drawable/Drawable;

.field private sB:Landroid/graphics/drawable/Drawable;

.field private sC:Landroid/graphics/drawable/Drawable;

.field private sD:Lmiui/widget/ArrowPopupWindow;

.field private sE:Landroid/view/View$OnTouchListener;

.field private sF:Landroid/graphics/Rect;

.field private sG:Landroid/graphics/RectF;

.field private sH:Landroid/animation/AnimatorSet;

.field private sI:Z

.field private sJ:I

.field private sK:I

.field private sL:I

.field private sM:I

.field private sN:I

.field private sO:Z

.field private sP:I

.field private sS:Landroid/animation/Animator$AnimatorListener;

.field private sT:Landroid/animation/Animator$AnimatorListener;

.field private sU:I

.field private sV:F

.field private sk:Landroid/view/View;

.field private sl:Landroid/widget/ImageView;

.field private sm:Landroid/widget/FrameLayout;

.field private sn:Landroid/widget/LinearLayout;

.field private so:Landroid/widget/TextView;

.field private sp:Landroid/widget/Button;

.field private sq:Landroid/widget/Button;

.field private sr:Lcom/miui/internal/widget/ArrowPopupView$a;

.field private ss:Lcom/miui/internal/widget/ArrowPopupView$a;

.field private st:I

.field private su:I

.field private sv:Landroid/graphics/drawable/Drawable;

.field private sw:Landroid/graphics/drawable/Drawable;

.field private sx:Landroid/graphics/drawable/Drawable;

.field private sy:Landroid/graphics/drawable/Drawable;

.field private sz:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/miui/internal/R$attr;->arrowPopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sF:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/graphics/RectF;

    .line 124
    iput-boolean v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Z

    .line 132
    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$1;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sS:Landroid/animation/Animator$AnimatorListener;

    .line 157
    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$2;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sT:Landroid/animation/Animator$AnimatorListener;

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    .line 198
    sget-object v0, Lcom/miui/internal/R$styleable;->ArrowPopupView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_contentBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->na:Landroid/graphics/drawable/Drawable;

    .line 203
    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_backgroundLeft:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sv:Landroid/graphics/drawable/Drawable;

    .line 204
    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_backgroundRight:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sw:Landroid/graphics/drawable/Drawable;

    .line 205
    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_titleBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sx:Landroid/graphics/drawable/Drawable;

    .line 206
    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_topArrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sy:Landroid/graphics/drawable/Drawable;

    .line 207
    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_topArrowWithTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sz:Landroid/graphics/drawable/Drawable;

    .line 208
    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_bottomArrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sA:Landroid/graphics/drawable/Drawable;

    .line 209
    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_rightArrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sB:Landroid/graphics/drawable/Drawable;

    .line 210
    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_leftArrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sC:Landroid/graphics/drawable/Drawable;

    .line 212
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->arrow_popup_window_min_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sJ:I

    .line 216
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:I

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Z

    return v0
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sI:Z

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->br()V

    return-void
.end method

.method private bo()V
    .locals 5

    .prologue
    .line 296
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bp()V

    .line 303
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 306
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->pS:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_5

    .line 307
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->pS:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    :cond_1
    :goto_1
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_2

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v0, :cond_3

    .line 314
    :cond_2
    const-string v0, "ArrowPopupView"

    const-string v1, "Invalid LayoutPrams of content view, please check the anchor view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_3
    return-void

    .line 299
    :cond_4
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bq()V

    goto :goto_0

    .line 309
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 310
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 311
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private bp()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v3, 0x0

    .line 320
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sk:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 321
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sk:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 322
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v5

    .line 323
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v6

    .line 324
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 326
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v7

    if-le v1, v7, :cond_2

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 329
    :goto_1
    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    .line 330
    iget-object v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    .line 332
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 333
    iget-object v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->sk:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 334
    aget v10, v9, v3

    .line 335
    aget v11, v9, v14

    .line 336
    invoke-virtual {p0, v9}, Lcom/miui/internal/widget/ArrowPopupView;->getLocationInWindow([I)V

    .line 337
    div-int/lit8 v12, v2, 0x2

    add-int/2addr v12, v10

    aget v13, v9, v3

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    .line 338
    iget v12, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    sub-int v12, v5, v12

    .line 339
    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v10

    aget v10, v9, v3

    sub-int/2addr v2, v10

    iput v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sM:I

    .line 341
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getTop()I

    move-result v2

    iget v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->su:I

    add-int/2addr v2, v10

    iput v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    .line 343
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    if-nez v2, :cond_3

    .line 344
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    aget v4, v9, v14

    sub-int v4, v11, v4

    sub-int/2addr v4, v1

    iget-object v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v10, v8

    add-int/2addr v4, v10

    add-int/2addr v2, v4

    iput v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    .line 346
    aget v2, v9, v14

    sub-int v2, v11, v2

    sub-int/2addr v2, v8

    iget v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->su:I

    add-int/2addr v2, v4

    .line 353
    :goto_2
    div-int/lit8 v4, v0, 0x2

    .line 354
    sub-int v9, v0, v4

    .line 355
    iget v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    if-lt v10, v4, :cond_4

    if-lt v12, v9, :cond_4

    .line 357
    iget v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    sub-int v4, v9, v4

    iput v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    .line 365
    :cond_0
    :goto_3
    iget v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    iget v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->st:I

    add-int/2addr v4, v9

    iput v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    .line 366
    iget v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sM:I

    iget v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->st:I

    add-int/2addr v4, v9

    iput v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sM:I

    .line 368
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    add-int/2addr v0, v10

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    add-int/2addr v1, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v4, v9, v3, v0, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 374
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sM:I

    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sM:I

    add-int/2addr v3, v7

    add-int v4, v2, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 378
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v0

    goto/16 :goto_0

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    goto/16 :goto_1

    .line 347
    :cond_3
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    if-ne v2, v14, :cond_6

    .line 348
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    add-int/2addr v4, v11

    aget v9, v9, v14

    sub-int/2addr v4, v9

    iget-object v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v9

    sub-int/2addr v4, v9

    add-int/2addr v4, v8

    add-int/2addr v2, v4

    iput v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    .line 350
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    goto :goto_2

    .line 358
    :cond_4
    if-ge v12, v9, :cond_5

    .line 360
    sub-int v4, v5, v0

    iput v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    goto :goto_3

    .line 361
    :cond_5
    iget v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    if-ge v9, v4, :cond_0

    .line 363
    iput v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    goto :goto_3

    :cond_6
    move v2, v3

    goto/16 :goto_2
.end method

.method private bq()V
    .locals 15

    .prologue
    .line 381
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 382
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sk:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 383
    const/4 v0, 0x0

    aget v4, v3, v0

    .line 384
    const/4 v0, 0x1

    aget v2, v3, v0

    .line 385
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ArrowPopupView;->getLocationInWindow([I)V

    .line 386
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sk:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 387
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sk:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 388
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v7

    .line 389
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v8

    .line 390
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 393
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v9

    if-le v1, v9, :cond_3

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 396
    :goto_1
    iget-object v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    .line 397
    iget-object v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    .line 398
    div-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v2

    const/4 v12, 0x1

    aget v12, v3, v12

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    .line 399
    iget v11, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    sub-int v11, v8, v11

    .line 400
    sub-int/2addr v6, v10

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    const/4 v6, 0x1

    aget v6, v3, v6

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    .line 402
    div-int/lit8 v6, v1, 0x2

    .line 403
    sub-int v12, v1, v6

    .line 405
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getLeft()I

    move-result v2

    iget v13, p0, Lcom/miui/internal/widget/ArrowPopupView;->st:I

    add-int/2addr v2, v13

    iput v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    .line 406
    const/4 v2, 0x0

    .line 407
    iget v13, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 408
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    sub-int v5, v4, v0

    iget-object v13, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v13

    add-int/2addr v5, v13

    sub-int/2addr v5, v9

    const/4 v13, 0x0

    aget v13, v3, v13

    sub-int/2addr v5, v13

    add-int/2addr v2, v5

    iput v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    .line 410
    sub-int v2, v4, v9

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->st:I

    add-int/2addr v2, v3

    .line 417
    :cond_0
    :goto_2
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    if-lt v3, v6, :cond_5

    if-lt v11, v12, :cond_5

    .line 419
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    sub-int/2addr v3, v6

    iget v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->su:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    .line 427
    :cond_1
    :goto_3
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    iget v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->su:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    .line 429
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    add-int/2addr v0, v6

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    add-int/2addr v1, v6

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 435
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    add-int v3, v2, v9

    iget v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    add-int/2addr v4, v10

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 439
    return-void

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v0

    goto/16 :goto_0

    .line 393
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    goto/16 :goto_1

    .line 411
    :cond_4
    iget v13, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 412
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v9

    const/4 v5, 0x0

    aget v3, v3, v5

    sub-int v3, v4, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    .line 414
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    goto :goto_2

    .line 420
    :cond_5
    if-ge v11, v12, :cond_6

    .line 422
    sub-int v3, v8, v1

    iget v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->su:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    goto :goto_3

    .line 423
    :cond_6
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    if-ge v3, v6, :cond_1

    .line 425
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->su:I

    iput v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    goto :goto_3
.end method

.method private br()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 647
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 651
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    .line 652
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$4;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$4;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 659
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 660
    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$5;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$5;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    const-wide/16 v0, 0x76c

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 668
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    .line 669
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 670
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    packed-switch v3, :pswitch_data_0

    .line 685
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    new-array v4, v10, [F

    aput v6, v4, v7

    aput v1, v4, v9

    aput v6, v4, v8

    invoke-static {v3, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 686
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 687
    const-wide/16 v4, 0x4b0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 688
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 689
    new-instance v4, Lcom/miui/internal/widget/ArrowPopupView$6;

    invoke-direct {v4, p0}, Lcom/miui/internal/widget/ArrowPopupView$6;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 699
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    new-array v5, v10, [F

    aput v6, v5, v7

    aput v1, v5, v9

    aput v6, v5, v8

    invoke-static {v4, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 700
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 701
    const-wide/16 v4, 0x4b0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 702
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 704
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v2, v4, v7

    aput-object v3, v4, v9

    aput-object v0, v4, v8

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 705
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 709
    :goto_1
    return-void

    .line 672
    :pswitch_1
    neg-float v1, v1

    .line 673
    goto :goto_0

    .line 676
    :pswitch_2
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_0

    .line 680
    :pswitch_3
    neg-float v1, v1

    .line 681
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 659
    nop

    :array_0
    .array-data 4
        0xa6
        0x0
    .end array-data

    .line 670
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private bs()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 715
    new-array v0, v11, [I

    .line 716
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sk:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 718
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v1

    .line 719
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v3

    .line 720
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    .line 721
    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    .line 722
    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sk:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 723
    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->sk:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 725
    new-array v8, v12, [I

    .line 726
    aget v9, v0, v10

    sub-int/2addr v9, v5

    aput v9, v8, v2

    .line 727
    aget v9, v0, v10

    sub-int/2addr v3, v9

    sub-int/2addr v3, v6

    sub-int/2addr v3, v5

    aput v3, v8, v10

    .line 728
    aget v3, v0, v2

    sub-int/2addr v3, v4

    aput v3, v8, v11

    .line 729
    const/4 v3, 0x3

    aget v0, v0, v2

    sub-int v0, v1, v0

    sub-int/2addr v0, v7

    sub-int/2addr v0, v4

    aput v0, v8, v3

    .line 734
    const/high16 v0, -0x80000000

    move v1, v2

    .line 735
    :goto_0
    if-ge v2, v12, :cond_2

    .line 736
    aget v3, v8, v2

    iget v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sJ:I

    if-lt v3, v4, :cond_0

    .line 744
    :goto_1
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    .line 745
    return-void

    .line 739
    :cond_0
    aget v3, v8, v2

    if-le v3, v0, :cond_1

    .line 741
    aget v0, v8, v2

    move v1, v2

    .line 735
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Lmiui/widget/ArrowPopupWindow;

    return-object v0
.end method

.method static synthetic d(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic e(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sS:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic h(Lcom/miui/internal/widget/ArrowPopupView;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:I

    return v0
.end method


# virtual methods
.method public animateToDismiss()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xb4

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 622
    iget-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sI:Z

    if-eqz v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 629
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    .line 630
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v7, [F

    aput v4, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v7, [F

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 632
    const-string v2, "RollingPercent"

    new-array v3, v7, [F

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 634
    sget-boolean v3, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v3, :cond_2

    .line 635
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 636
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 637
    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 641
    :goto_1
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 642
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sT:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 643
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 639
    :cond_2
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_1
.end method

.method public animateToShow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 578
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 579
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ArrowPopupView;->setRollingPercent(F)V

    .line 580
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 582
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->invalidate()V

    .line 583
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$3;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$3;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 619
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 536
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/graphics/RectF;

    .line 538
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 539
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 540
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 541
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 542
    iget v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:F

    sub-float v1, v2, v1

    .line 544
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    packed-switch v2, :pswitch_data_0

    .line 560
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 561
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 562
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 566
    :goto_1
    return-void

    .line 546
    :pswitch_0
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 550
    :pswitch_1
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 553
    :pswitch_2
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 556
    :pswitch_3
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 564
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 544
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public enableShowingAnimation(Z)V
    .locals 0

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Z

    .line 806
    return-void
.end method

.method public getArrowMode()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sm:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sm:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sq:Landroid/widget/Button;

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sp:Landroid/widget/Button;

    return-object v0
.end method

.method public getRollingPercent()F
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->na:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 460
    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v5, v0, v2

    .line 461
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v6, v0, v2

    .line 463
    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/graphics/RectF;

    .line 464
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:F

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_1

    .line 465
    iput v4, v7, Landroid/graphics/RectF;->left:F

    .line 466
    iput v4, v7, Landroid/graphics/RectF;->top:F

    .line 467
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 468
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 471
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v2, v1

    move v3, v4

    .line 497
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 498
    int-to-float v9, v5

    int-to-float v10, v6

    invoke-virtual {p1, v3, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 499
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    packed-switch v3, :pswitch_data_1

    .line 531
    :goto_2
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 474
    :pswitch_0
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sM:I

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 475
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    sub-int v2, v0, v2

    .line 476
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    sub-int v0, v3, v0

    move v3, v4

    .line 477
    goto :goto_1

    .line 479
    :pswitch_1
    const/high16 v3, 0x43340000    # 180.0f

    .line 480
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sM:I

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 481
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    sub-int/2addr v2, v0

    .line 482
    iget v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    sub-int/2addr v0, v8

    .line 483
    goto :goto_1

    .line 485
    :pswitch_2
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 486
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 487
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    sub-int/2addr v2, v0

    .line 488
    iget v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    sub-int/2addr v0, v8

    .line 489
    goto :goto_1

    .line 491
    :pswitch_3
    const/high16 v3, 0x42b40000    # 90.0f

    .line 492
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 493
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    sub-int v2, v0, v2

    .line 494
    iget-object v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v8

    sub-int v0, v8, v0

    goto :goto_1

    .line 502
    :pswitch_4
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:I

    int-to-float v3, v3

    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 503
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sv:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 504
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:F

    cmpl-float v3, v3, v11

    if-eqz v3, :cond_2

    .line 505
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v7, Landroid/graphics/RectF;->bottom:F

    .line 506
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 510
    :goto_3
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 511
    int-to-float v2, v2

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 512
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sw:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 513
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 508
    :cond_2
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:I

    int-to-float v3, v3

    :goto_4
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_3
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:I

    neg-int v3, v3

    int-to-float v3, v3

    goto :goto_4

    .line 517
    :pswitch_5
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v5, v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v6, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 518
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sv:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    invoke-virtual {v3, v1, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 519
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:F

    cmpl-float v3, v3, v11

    if-eqz v3, :cond_4

    .line 520
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v7, Landroid/graphics/RectF;->bottom:F

    .line 521
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 525
    :goto_5
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 526
    int-to-float v2, v2

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 527
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sw:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 528
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 523
    :cond_4
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:I

    int-to-float v3, v3

    :goto_6
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_5
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:I

    neg-int v3, v3

    int-to-float v3, v3

    goto :goto_6

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 499
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 220
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 221
    sget v0, Lcom/miui/internal/R$id;->popup_arrow:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    .line 222
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sm:Landroid/widget/FrameLayout;

    .line 223
    sget v0, Lcom/miui/internal/R$id;->content_wrapper:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    .line 224
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->na:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sv:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 228
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 229
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 232
    :cond_0
    sget v0, Lcom/miui/internal/R$id;->title_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->pS:Landroid/widget/LinearLayout;

    .line 233
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->pS:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sx:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->so:Landroid/widget/TextView;

    .line 235
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sp:Landroid/widget/Button;

    .line 236
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sq:Landroid/widget/Button;

    .line 238
    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$a;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$a;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sr:Lcom/miui/internal/widget/ArrowPopupView$a;

    .line 239
    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$a;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$a;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ss:Lcom/miui/internal/widget/ArrowPopupView$a;

    .line 240
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sp:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sr:Lcom/miui/internal/widget/ArrowPopupView$a;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sq:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->ss:Lcom/miui/internal/widget/ArrowPopupView$a;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 443
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bs()V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bo()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 791
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 792
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 795
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sF:Landroid/graphics/Rect;

    .line 796
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 797
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 798
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v1, v0}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 801
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sk:Landroid/view/View;

    .line 774
    return-void
.end method

.method public setArrowMode(I)V
    .locals 2

    .prologue
    .line 752
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:I

    .line 753
    packed-switch p1, :pswitch_data_0

    .line 770
    :goto_0
    return-void

    .line 755
    :pswitch_0
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->pS:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sz:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sy:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 759
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sA:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 763
    :pswitch_2
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 767
    :pswitch_3
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sl:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 753
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setArrowPopupWindow(Lmiui/widget/ArrowPopupWindow;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Lmiui/widget/ArrowPopupWindow;

    .line 783
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    .line 265
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 245
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sm:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sm:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    :cond_0
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sq:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sq:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ss:Lcom/miui/internal/widget/ArrowPopupView$a;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ArrowPopupView$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOffset(II)V
    .locals 0

    .prologue
    .line 777
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->st:I

    .line 778
    iput p2, p0, Lcom/miui/internal/widget/ArrowPopupView;->su:I

    .line 779
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sp:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sp:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sr:Lcom/miui/internal/widget/ArrowPopupView$a;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ArrowPopupView$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRollingPercent(F)V
    .locals 0

    .prologue
    .line 573
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:F

    .line 574
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->postInvalidateOnAnimation()V

    .line 575
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->pS:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->so:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/view/View$OnTouchListener;

    .line 787
    return-void
.end method
