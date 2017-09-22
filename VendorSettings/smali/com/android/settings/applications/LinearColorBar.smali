.class public Lcom/android/settings/applications/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# instance fields
.field private JA:I

.field private JB:I

.field private JC:Z

.field private JD:Z

.field private JE:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

.field private JF:I

.field JG:I

.field JH:I

.field JI:I

.field JJ:I

.field JK:I

.field JL:I

.field final JM:Landroid/graphics/Path;

.field final JN:Landroid/graphics/Path;

.field final JO:Landroid/graphics/Paint;

.field final JP:Landroid/graphics/Paint;

.field private Jw:F

.field private Jx:F

.field private Jy:F

.field private Jz:I

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const v0, -0xff6978

    const/4 v1, 0x1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->Jz:I

    .line 30
    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->JA:I

    .line 31
    const v0, -0x312825

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->JB:I

    .line 33
    iput-boolean v1, p0, Lcom/android/settings/applications/LinearColorBar;->JC:Z

    .line 37
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->JF:I

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JM:Landroid/graphics/Path;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JN:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JO:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JP:Landroid/graphics/Paint;

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LinearColorBar;->setWillNotDraw(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JO:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JO:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JP:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->JI:I

    .line 71
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JP:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->JI:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JP:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    return-void

    :cond_0
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method private i(II)I
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->JL:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 178
    const/4 p1, -0x1

    .line 183
    :cond_0
    :goto_0
    return p1

    .line 180
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->JF:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 181
    const p1, -0xaaaaab

    goto :goto_0
.end method

.method private kJ()V
    .locals 10

    .prologue
    const v3, 0xffffff

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 119
    if-gez v0, :cond_2

    const/4 v0, 0x0

    move v8, v0

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 121
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 122
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->JC:Z

    if-nez v0, :cond_0

    .line 134
    :goto_1
    return-void

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->JD:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->JO:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->JB:I

    and-int v5, v2, v3

    iget v6, p0, Lcom/android/settings/applications/LinearColorBar;->JB:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 132
    :goto_2
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->JP:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    div-int/lit8 v2, v8, 0x2

    int-to-float v4, v2

    const v5, 0xa0a0a0

    const v6, -0x5f5f60

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    .line 129
    :cond_1
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->JO:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->JA:I

    and-int v5, v2, v3

    iget v6, p0, Lcom/android/settings/applications/LinearColorBar;->JA:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :cond_2
    move v8, v0

    goto :goto_0
.end method


# virtual methods
.method public a(FFF)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->Jw:F

    .line 90
    iput p2, p0, Lcom/android/settings/applications/LinearColorBar;->Jx:F

    .line 91
    iput p3, p0, Lcom/android/settings/applications/LinearColorBar;->Jy:F

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 93
    return-void
.end method

.method public a(III)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->Jz:I

    .line 97
    iput p2, p0, Lcom/android/settings/applications/LinearColorBar;->JA:I

    .line 98
    iput p3, p0, Lcom/android/settings/applications/LinearColorBar;->JB:I

    .line 99
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->kJ()V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 101
    return-void
.end method

.method public a(Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JE:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eq p1, v0, :cond_0

    .line 78
    iput-object p1, p0, Lcom/android/settings/applications/LinearColorBar;->JE:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    .line 79
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LinearColorBar;->setClickable(Z)V

    .line 81
    :cond_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aL(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->JF:I

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 86
    return-void
.end method

.method public aq(Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/settings/applications/LinearColorBar;->JC:Z

    .line 105
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->kJ()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 107
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 165
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 188
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->getWidth()I

    move-result v13

    .line 192
    const/4 v12, 0x0

    .line 194
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->Jw:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v9, v12, v1

    .line 195
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->Jx:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v8, v9, v1

    .line 196
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->Jy:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v2, v8, v1

    .line 199
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/applications/LinearColorBar;->JD:Z

    if-eqz v1, :cond_9

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_8

    sub-int v1, v13, v2

    .line 205
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    sub-int v2, v13, v8

    :cond_0
    move v10, v2

    move v11, v1

    .line 217
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->JG:I

    if-ne v1, v11, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->JH:I

    if-eq v1, v10, :cond_3

    .line 218
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JM:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JN:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 220
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/applications/LinearColorBar;->JC:Z

    if-eqz v1, :cond_2

    if-ge v11, v10, :cond_2

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v14, v1, Landroid/graphics/Rect;->top:I

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JM:Landroid/graphics/Path;

    int-to-float v2, v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JM:Landroid/graphics/Path;

    int-to-float v2, v11

    const/4 v3, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    int-to-float v5, v14

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JM:Landroid/graphics/Path;

    add-int/lit8 v2, v13, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JM:Landroid/graphics/Path;

    add-int/lit8 v2, v13, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    int-to-float v3, v14

    int-to-float v4, v10

    const/4 v5, 0x0

    int-to-float v6, v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JM:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 233
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->JI:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v15, v1, v2

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JN:Landroid/graphics/Path;

    const/high16 v2, -0x40000000    # -2.0f

    add-float/2addr v2, v15

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JN:Landroid/graphics/Path;

    const/high16 v2, -0x40000000    # -2.0f

    add-float/2addr v2, v15

    int-to-float v3, v14

    int-to-float v4, v11

    add-float/2addr v4, v15

    const/4 v5, 0x0

    int-to-float v6, v11

    add-float/2addr v6, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JN:Landroid/graphics/Path;

    add-int/lit8 v2, v13, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v15

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JN:Landroid/graphics/Path;

    add-int/lit8 v2, v13, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v15

    int-to-float v3, v14

    int-to-float v4, v10

    sub-float/2addr v4, v15

    const/4 v5, 0x0

    int-to-float v6, v10

    sub-float/2addr v6, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 243
    :cond_2
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/settings/applications/LinearColorBar;->JG:I

    .line 244
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/settings/applications/LinearColorBar;->JH:I

    .line 247
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JN:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JN:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->JP:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->JM:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->JO:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 252
    :cond_4
    if-ge v12, v9, :cond_5

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_c

    sub-int v1, v13, v9

    add-int/2addr v1, v12

    :goto_2
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v13

    :goto_3
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->Jz:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->i(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 262
    sub-int v1, v9, v12

    sub-int/2addr v13, v1

    move v12, v9

    .line 266
    :cond_5
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/settings/applications/LinearColorBar;->JJ:I

    .line 267
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settings/applications/LinearColorBar;->JK:I

    .line 271
    if-ge v12, v8, :cond_11

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_e

    sub-int v1, v13, v8

    add-int/2addr v1, v12

    :goto_4
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v13

    :goto_5
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->JA:I

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->i(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 281
    sub-int v1, v8, v12

    sub-int v2, v13, v1

    move v1, v8

    .line 286
    :goto_6
    add-int v3, v1, v2

    .line 287
    if-ge v1, v3, :cond_7

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_6

    sub-int v5, v2, v3

    add-int/2addr v1, v5

    :cond_6
    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    :goto_7
    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->JB:I

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->i(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 298
    :cond_7
    return-void

    :cond_8
    move v1, v8

    .line 204
    goto/16 :goto_0

    .line 212
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_a

    sub-int v1, v13, v8

    .line 213
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_b

    sub-int v2, v13, v9

    :goto_9
    move v10, v2

    move v11, v1

    goto/16 :goto_1

    :cond_a
    move v1, v9

    .line 212
    goto :goto_8

    :cond_b
    move v2, v8

    .line 213
    goto :goto_9

    :cond_c
    move v1, v12

    .line 257
    goto/16 :goto_2

    :cond_d
    move v1, v9

    .line 258
    goto/16 :goto_3

    :cond_e
    move v1, v12

    .line 276
    goto/16 :goto_4

    :cond_f
    move v1, v8

    .line 277
    goto/16 :goto_5

    :cond_10
    move v1, v3

    .line 293
    goto :goto_7

    :cond_11
    move v1, v12

    move v2, v13

    goto :goto_6
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->kJ()V

    .line 140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JE:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 147
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 148
    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->JJ:I

    if-ge v0, v1, :cond_1

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->JL:I

    .line 155
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    goto :goto_0

    .line 150
    :cond_1
    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->JK:I

    if-ge v0, v1, :cond_2

    .line 151
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->JL:I

    goto :goto_1

    .line 153
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->JL:I

    goto :goto_1

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JE:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->JL:I

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->JE:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->JL:I

    invoke-interface {v0, v1}, Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;->aM(I)V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->JL:I

    .line 173
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method
