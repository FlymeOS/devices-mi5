.class public Lcom/android/vendorsettings/widget/ChartSweepView;
.super Landroid/view/View;
.source "ChartSweepView.java"


# instance fields
.field private axA:F

.field private axB:I

.field private axC:I

.field private axD:F

.field private axE:I

.field private axF:Landroid/text/SpannableStringBuilder;

.field private axG:Landroid/text/DynamicLayout;

.field private axH:Lcom/android/vendorsettings/widget/a;

.field private axI:J

.field private axJ:J

.field private axK:J

.field private axL:Lcom/android/vendorsettings/widget/ChartSweepView;

.field private axM:Lcom/android/vendorsettings/widget/ChartSweepView;

.field private axN:F

.field private axO:Landroid/graphics/Paint;

.field private axP:J

.field private axQ:Lcom/android/vendorsettings/widget/h;

.field private axR:F

.field private axS:Landroid/view/MotionEvent;

.field private axT:[Lcom/android/vendorsettings/widget/ChartSweepView;

.field private axc:I

.field private axo:I

.field private axv:Landroid/graphics/drawable/Drawable;

.field private axw:Landroid/graphics/Rect;

.field private axx:Landroid/graphics/Rect;

.field private axy:Landroid/graphics/Point;

.field private axz:Landroid/graphics/Rect;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mTouchMode:I

.field private mValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vendorsettings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axO:Landroid/graphics/Paint;

    .line 90
    iput v3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mTouchMode:I

    .line 98
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axP:J

    .line 110
    new-array v0, v3, [Lcom/android/vendorsettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axT:[Lcom/android/vendorsettings/widget/ChartSweepView;

    .line 152
    new-instance v0, Lcom/android/vendorsettings/widget/g;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/widget/g;-><init>(Lcom/android/vendorsettings/widget/ChartSweepView;)V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 123
    sget-object v0, Lcom/android/vendorsettings/gt;->wu:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    const/4 v1, 0x5

    const v2, -0xffff01

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 127
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/vendorsettings/widget/ChartSweepView;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 128
    const/4 v2, -0x1

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/widget/ChartSweepView;->dm(I)V

    .line 129
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/widget/ChartSweepView;->f(F)V

    .line 130
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/widget/ChartSweepView;->dl(I)V

    .line 132
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/widget/ChartSweepView;->dn(I)V

    .line 133
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/widget/ChartSweepView;->do(I)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/widget/ChartSweepView;->dp(I)V

    .line 137
    const v1, 0x7f02007e

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/widget/ChartSweepView;->setBackgroundResource(I)V

    .line 139
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axO:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axO:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axO:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/widget/ChartSweepView;->setClickable(Z)V

    .line 146
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/widget/ChartSweepView;->setFocusable(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ChartSweepView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/widget/ChartSweepView;->setWillNotDraw(Z)V

    .line 150
    return-void
.end method

.method private a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    .prologue
    .line 592
    iget-wide v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axJ:J

    iget-wide v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axK:J

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/vendorsettings/widget/ChartSweepView;->a(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v7

    .line 593
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wx()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wy()J

    move-result-wide v4

    iget v6, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axA:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/vendorsettings/widget/ChartSweepView;->a(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v0

    .line 596
    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 599
    :cond_0
    return-object v7
.end method

.method private a(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axH:Lcom/android/vendorsettings/widget/a;

    instance-of v0, v0, Lcom/android/vendorsettings/widget/k;

    if-eqz v0, :cond_6

    .line 610
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 611
    :goto_1
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 613
    :goto_2
    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axH:Lcom/android/vendorsettings/widget/a;

    invoke-interface {v2, p4, p5}, Lcom/android/vendorsettings/widget/a;->s(J)F

    move-result v2

    add-float v2, v2, p6

    .line 614
    iget-object v3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axH:Lcom/android/vendorsettings/widget/a;

    invoke-interface {v3, p2, p3}, Lcom/android/vendorsettings/widget/a;->s(J)F

    move-result v3

    sub-float v3, v3, p6

    .line 616
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 617
    iget v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 618
    if-eqz v0, :cond_0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    float-to-int v3, v3

    add-int/2addr v0, v3

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 619
    :cond_0
    if-eqz v1, :cond_1

    iget v0, v4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 624
    :cond_1
    :goto_3
    return-object v4

    .line 610
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 611
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 621
    :cond_4
    if-eqz v0, :cond_5

    iget v0, v4, Landroid/graphics/Rect;->left:I

    float-to-int v3, v3

    add-int/2addr v0, v3

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 622
    :cond_5
    if-eqz v1, :cond_1

    iget v0, v4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_6
    move-wide v7, p4

    move-wide p4, p2

    move-wide p2, v7

    goto :goto_0
.end method

.method private bt(Z)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axQ:Lcom/android/vendorsettings/widget/h;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axQ:Lcom/android/vendorsettings/widget/h;

    invoke-interface {v0, p0, p1}, Lcom/android/vendorsettings/widget/h;->b(Lcom/android/vendorsettings/widget/ChartSweepView;Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public static d(Lcom/android/vendorsettings/widget/ChartSweepView;)F
    .locals 2

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static e(Lcom/android/vendorsettings/widget/ChartSweepView;)F
    .locals 2

    .prologue
    .line 746
    invoke-static {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->d(Lcom/android/vendorsettings/widget/ChartSweepView;)F

    move-result v0

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private f(Landroid/view/MotionEvent;)F
    .locals 3

    .prologue
    .line 415
    iget v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wn()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getY()F

    move-result v1

    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wn()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0
.end method

.method public static f(Lcom/android/vendorsettings/widget/ChartSweepView;)F
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/android/vendorsettings/widget/ChartSweepView;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wo()V

    return-void
.end method

.method private wn()F
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 183
    iget v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 186
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 190
    :goto_0
    return v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 190
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private wo()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axQ:Lcom/android/vendorsettings/widget/h;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axQ:Lcom/android/vendorsettings/widget/h;

    invoke-interface {v0, p0}, Lcom/android/vendorsettings/widget/h;->c(Lcom/android/vendorsettings/widget/ChartSweepView;)V

    .line 208
    :cond_0
    return-void
.end method

.method private wp()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 260
    iget v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axE:I

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 263
    new-instance v2, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v2, Landroid/text/TextPaint;->density:F

    .line 265
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 266
    iget v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axc:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 268
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axF:Landroid/text/SpannableStringBuilder;

    .line 269
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axF:Landroid/text/SpannableStringBuilder;

    const/16 v3, 0x400

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    .line 271
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wq()V

    .line 278
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->invalidate()V

    .line 279
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->requestLayout()V

    .line 280
    return-void

    .line 274
    :cond_0
    iput-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axF:Landroid/text/SpannableStringBuilder;

    .line 275
    iput-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    goto :goto_0
.end method

.method private wq()V
    .locals 6

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axF:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axH:Lcom/android/vendorsettings/widget/a;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axH:Lcom/android/vendorsettings/widget/a;

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axF:Landroid/text/SpannableStringBuilder;

    iget-wide v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/android/vendorsettings/widget/a;->a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axI:J

    .line 285
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axF:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ChartSweepView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wr()V

    .line 287
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->invalidate()V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-wide v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mValue:J

    iput-wide v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axI:J

    goto :goto_0
.end method

.method private ww()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 560
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int v0, v5, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private wx()J
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axL:Lcom/android/vendorsettings/widget/ChartSweepView;

    .line 577
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method private wy()J
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axM:Lcom/android/vendorsettings/widget/ChartSweepView;

    .line 582
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 220
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ChartSweepView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_0
    if-eqz p1, :cond_3

    .line 224
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 225
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 229
    iput-object p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    .line 231
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 232
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 237
    :goto_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->invalidate()V

    .line 238
    return-void

    :cond_2
    move v0, v1

    .line 228
    goto :goto_0

    .line 234
    :cond_3
    iput-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public a(Lcom/android/vendorsettings/widget/ChartSweepView;Lcom/android/vendorsettings/widget/ChartSweepView;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axL:Lcom/android/vendorsettings/widget/ChartSweepView;

    .line 401
    iput-object p2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axM:Lcom/android/vendorsettings/widget/ChartSweepView;

    .line 402
    return-void
.end method

.method a(Lcom/android/vendorsettings/widget/a;)V
    .locals 1

    .prologue
    .line 159
    const-string v0, "missing axis"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/widget/a;

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axH:Lcom/android/vendorsettings/widget/a;

    .line 160
    return-void
.end method

.method public a(Lcom/android/vendorsettings/widget/h;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axQ:Lcom/android/vendorsettings/widget/h;

    .line 196
    return-void
.end method

.method public varargs a([Lcom/android/vendorsettings/widget/ChartSweepView;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axT:[Lcom/android/vendorsettings/widget/ChartSweepView;

    .line 164
    return-void
.end method

.method public a(Landroid/view/MotionEvent;Lcom/android/vendorsettings/widget/ChartSweepView;)Z
    .locals 2

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/widget/ChartSweepView;->f(Landroid/view/MotionEvent;)F

    move-result v0

    .line 410
    invoke-direct {p2, p1}, Lcom/android/vendorsettings/widget/ChartSweepView;->f(Landroid/view/MotionEvent;)F

    move-result v1

    .line 411
    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .prologue
    .line 568
    return-void
.end method

.method public dl(I)V
    .locals 0

    .prologue
    .line 391
    iput p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axo:I

    .line 392
    return-void
.end method

.method public dm(I)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    .line 242
    return-void
.end method

.method public dn(I)V
    .locals 0

    .prologue
    .line 245
    iput p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axC:I

    .line 246
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wp()V

    .line 247
    return-void
.end method

.method public do(I)V
    .locals 0

    .prologue
    .line 250
    iput p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axE:I

    .line 251
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wp()V

    .line 252
    return-void
.end method

.method public dp(I)V
    .locals 0

    .prologue
    .line 255
    iput p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axc:I

    .line 256
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wp()V

    .line 257
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 629
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 630
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 633
    :cond_0
    return-void
.end method

.method public f(F)V
    .locals 0

    .prologue
    .line 387
    iput p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axA:F

    .line 388
    return-void
.end method

.method public f(JJ)V
    .locals 1

    .prologue
    .line 382
    iput-wide p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axJ:J

    .line 383
    iput-wide p3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axK:J

    .line 384
    return-void
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mValue:J

    return-wide v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 333
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 336
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 705
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getWidth()I

    move-result v1

    .line 708
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getHeight()I

    move-result v2

    .line 711
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 714
    iget v3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axD:F

    const/high16 v4, 0x44800000    # 1024.0f

    sub-float/2addr v3, v4

    .line 715
    iget-object v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axN:F

    add-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 717
    iget-object v3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    invoke-virtual {v3, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 719
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 720
    iget v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axD:F

    float-to-int v0, v0

    iget v3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axo:I

    add-int/2addr v0, v3

    .line 725
    :goto_0
    iget v3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 726
    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 733
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 739
    return-void

    .line 722
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 699
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 700
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wr()V

    .line 701
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 639
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 641
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    .line 643
    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iput v5, v2, Landroid/graphics/Point;->x:I

    .line 644
    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iput v5, v2, Landroid/graphics/Point;->y:I

    .line 645
    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wn()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 646
    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/vendorsettings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 654
    :goto_0
    iget v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 655
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 657
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    neg-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 658
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 659
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 660
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 670
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 673
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v0

    .line 674
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v1

    .line 675
    iget v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    if-nez v2, :cond_2

    .line 676
    mul-int/lit8 v2, v0, 0x3

    .line 677
    invoke-virtual {p0, v2, v1}, Lcom/android/vendorsettings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 678
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 680
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v0, v0, 0x2

    .line 681
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 682
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 693
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 694
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 695
    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->x:I

    .line 650
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axy:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 651
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/widget/ChartSweepView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 664
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    neg-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 665
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 666
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 667
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 684
    :cond_2
    mul-int/lit8 v2, v1, 0x2

    .line 685
    invoke-virtual {p0, v0, v2}, Lcom/android/vendorsettings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 686
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 688
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v0, v0, 0x2

    .line 689
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axx:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 690
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 424
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    .line 533
    :cond_0
    :goto_0
    return v2

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v2, v3

    .line 533
    goto :goto_0

    .line 433
    :pswitch_0
    iget v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    if-ne v1, v2, :cond_5

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    move v1, v2

    .line 435
    :goto_1
    iget-object v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    invoke-virtual {v5}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    move v4, v2

    .line 443
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v6

    .line 444
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v5, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 447
    iget-object v7, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axT:[Lcom/android/vendorsettings/widget/ChartSweepView;

    array-length v8, v7

    move v5, v3

    :goto_3
    if-ge v5, v8, :cond_a

    aget-object v9, v7, v5

    .line 448
    invoke-virtual {p0, v6, v9}, Lcom/android/vendorsettings/widget/ChartSweepView;->a(Landroid/view/MotionEvent;Lcom/android/vendorsettings/widget/ChartSweepView;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v2, v3

    .line 449
    goto :goto_0

    :cond_2
    move v1, v3

    .line 434
    goto :goto_1

    :cond_3
    move v4, v3

    .line 435
    goto :goto_2

    :cond_4
    move v4, v3

    goto :goto_2

    .line 438
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axw:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    move v1, v2

    .line 439
    :goto_4
    iget-object v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axG:Landroid/text/DynamicLayout;

    invoke-virtual {v5}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    move v4, v2

    goto :goto_2

    :cond_6
    move v1, v3

    .line 438
    goto :goto_4

    :cond_7
    move v4, v3

    .line 439
    goto :goto_2

    :cond_8
    move v4, v3

    goto :goto_2

    .line 447
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 453
    :cond_a
    if-eqz v1, :cond_c

    .line 454
    iget v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    if-ne v1, v2, :cond_b

    .line 455
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axR:F

    .line 459
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axS:Landroid/view/MotionEvent;

    .line 460
    iput v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mTouchMode:I

    .line 463
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_0

    .line 457
    :cond_b
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getLeft()I

    move-result v1

    iget-object v3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axR:F

    goto :goto_5

    .line 468
    :cond_c
    if-eqz v4, :cond_d

    .line 469
    iput v10, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mTouchMode:I

    goto/16 :goto_0

    .line 472
    :cond_d
    iput v3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mTouchMode:I

    move v2, v3

    .line 473
    goto/16 :goto_0

    .line 477
    :pswitch_1
    iget v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mTouchMode:I

    if-eq v0, v10, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 484
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->ww()Landroid/graphics/Rect;

    move-result-object v0

    .line 485
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/widget/ChartSweepView;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 486
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 489
    iget v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    if-ne v4, v2, :cond_e

    .line 490
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 491
    iget v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axR:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v7, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axS:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 493
    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {v5, v6, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 495
    sub-float v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/widget/ChartSweepView;->setTranslationY(F)V

    .line 497
    iget-object v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axH:Lcom/android/vendorsettings/widget/a;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-interface {v4, v0}, Lcom/android/vendorsettings/widget/a;->e(F)J

    move-result-wide v0

    .line 510
    :goto_6
    iget-wide v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axP:J

    rem-long v4, v0, v4

    sub-long/2addr v0, v4

    .line 511
    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/widget/ChartSweepView;->setValue(J)V

    .line 513
    invoke-direct {p0, v3}, Lcom/android/vendorsettings/widget/ChartSweepView;->bt(Z)V

    goto/16 :goto_0

    .line 499
    :cond_e
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 500
    iget v5, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axR:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget-object v7, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axS:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 502
    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v5, v6, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 504
    sub-float v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/widget/ChartSweepView;->setTranslationX(F)V

    .line 506
    iget-object v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axH:Lcom/android/vendorsettings/widget/a;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-interface {v4, v0}, Lcom/android/vendorsettings/widget/a;->e(F)J

    move-result-wide v0

    goto :goto_6

    .line 517
    :pswitch_2
    iget v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mTouchMode:I

    if-ne v0, v10, :cond_10

    .line 518
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->performClick()Z

    .line 529
    :cond_f
    :goto_7
    iput v3, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mTouchMode:I

    goto/16 :goto_0

    .line 519
    :cond_10
    iget v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mTouchMode:I

    if-ne v0, v2, :cond_f

    .line 520
    iput v4, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axR:F

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axS:Landroid/view/MotionEvent;

    .line 522
    iget-wide v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axI:J

    iput-wide v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mValue:J

    .line 523
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/widget/ChartSweepView;->bt(Z)V

    .line 524
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/widget/ChartSweepView;->setTranslationX(F)V

    .line 525
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/widget/ChartSweepView;->setTranslationY(F)V

    .line 526
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->requestLayout()V

    goto :goto_7

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/ChartSweepView;->setFocusable(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->requestLayout()V

    .line 215
    return-void
.end method

.method public setValue(J)V
    .locals 1

    .prologue
    .line 356
    iput-wide p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mValue:J

    .line 357
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wq()V

    .line 358
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 340
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 342
    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 344
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 342
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axv:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

.method public wl()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    return v0
.end method

.method public wm()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    return-object v0
.end method

.method public wr()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 298
    .line 299
    iget v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axL:Lcom/android/vendorsettings/widget/ChartSweepView;

    if-eqz v1, :cond_3

    .line 301
    invoke-static {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->f(Lcom/android/vendorsettings/widget/ChartSweepView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axL:Lcom/android/vendorsettings/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/vendorsettings/widget/ChartSweepView;->f(Lcom/android/vendorsettings/widget/ChartSweepView;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axD:F

    .line 302
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axL:Lcom/android/vendorsettings/widget/ChartSweepView;

    invoke-static {v1}, Lcom/android/vendorsettings/widget/ChartSweepView;->d(Lcom/android/vendorsettings/widget/ChartSweepView;)F

    move-result v1

    invoke-static {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->e(Lcom/android/vendorsettings/widget/ChartSweepView;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 303
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 304
    div-float v0, v1, v3

    .line 319
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axD:F

    iget v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axC:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axD:F

    .line 322
    iget v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axN:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 323
    iput v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axN:F

    .line 324
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->invalidate()V

    .line 325
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axL:Lcom/android/vendorsettings/widget/ChartSweepView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axL:Lcom/android/vendorsettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wr()V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axM:Lcom/android/vendorsettings/widget/ChartSweepView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axM:Lcom/android/vendorsettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ChartSweepView;->wr()V

    .line 328
    :cond_2
    return-void

    .line 306
    :cond_3
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axM:Lcom/android/vendorsettings/widget/ChartSweepView;

    if-eqz v1, :cond_4

    .line 307
    invoke-static {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->f(Lcom/android/vendorsettings/widget/ChartSweepView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axM:Lcom/android/vendorsettings/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/vendorsettings/widget/ChartSweepView;->f(Lcom/android/vendorsettings/widget/ChartSweepView;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axD:F

    .line 308
    invoke-static {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->d(Lcom/android/vendorsettings/widget/ChartSweepView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axM:Lcom/android/vendorsettings/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/vendorsettings/widget/ChartSweepView;->e(Lcom/android/vendorsettings/widget/ChartSweepView;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 309
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 310
    neg-float v0, v1

    div-float/2addr v0, v3

    goto :goto_0

    .line 313
    :cond_4
    invoke-static {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->f(Lcom/android/vendorsettings/widget/ChartSweepView;)F

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axD:F

    goto :goto_0
.end method

.method public ws()J
    .locals 2

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axI:J

    return-wide v0
.end method

.method public wt()F
    .locals 4

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axH:Lcom/android/vendorsettings/widget/a;

    iget-wide v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v2, v3}, Lcom/android/vendorsettings/widget/a;->s(J)F

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wu()V
    .locals 3

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->ww()Landroid/graphics/Rect;

    move-result-object v0

    .line 545
    iget v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axB:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    .line 547
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axH:Lcom/android/vendorsettings/widget/a;

    invoke-interface {v1, v0}, Lcom/android/vendorsettings/widget/a;->e(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/widget/ChartSweepView;->setValue(J)V

    .line 552
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axz:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    .line 550
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axH:Lcom/android/vendorsettings/widget/a;

    invoke-interface {v1, v0}, Lcom/android/vendorsettings/widget/a;->e(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_0
.end method

.method public wv()I
    .locals 4

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axH:Lcom/android/vendorsettings/widget/a;

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/vendorsettings/widget/a;->t(J)I

    move-result v0

    return v0
.end method

.method public x(J)V
    .locals 1

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/android/vendorsettings/widget/ChartSweepView;->axP:J

    .line 176
    return-void
.end method
