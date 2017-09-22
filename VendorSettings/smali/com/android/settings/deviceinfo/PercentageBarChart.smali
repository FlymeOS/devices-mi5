.class public Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;
.super Landroid/view/View;
.source "PercentageBarChart.java"


# instance fields
.field private final VL:Landroid/graphics/Paint;

.field private VM:Ljava/util/Collection;

.field private VN:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VL:Landroid/graphics/Paint;

    .line 45
    iput v1, p0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VN:I

    .line 67
    sget-object v0, Lcom/android/vendorsettings/gt;->wA:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VN:I

    .line 71
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VL:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VL:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    return-void
.end method

.method private a(IIIILandroid/graphics/drawable/NinePatchDrawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 164
    sub-int v0, p3, p1

    sub-int v1, p4, p2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    if-eqz p5, :cond_0

    .line 166
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 167
    sub-int v2, p3, p1

    sub-int v3, p4, p2

    invoke-virtual {p5, v4, v4, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 168
    invoke-virtual {p5, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 170
    :cond_0
    return-object v0
.end method

.method public static a(IFI)Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 214
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    new-instance v1, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;-><init>(IFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method private a(IIIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->a(IIIILandroid/graphics/drawable/NinePatchDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {p7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    move-object v0, p7

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 187
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 190
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 191
    invoke-virtual {v1, p1, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    invoke-virtual {v1, p2, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    invoke-virtual {p3, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 194
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VM:Ljava/util/Collection;

    .line 221
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    .prologue
    .line 80
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->getPaddingLeft()I

    move-result v5

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->getPaddingRight()I

    move-result v6

    sub-int v7, v4, v6

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->getPaddingTop()I

    move-result v6

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->getPaddingBottom()I

    move-result v8

    sub-int v8, v4, v8

    .line 87
    sub-int v10, v7, v5

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f020200

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v4, p0

    .line 90
    invoke-direct/range {v4 .. v9}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->a(IIIILandroid/graphics/drawable/NinePatchDrawable;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 91
    sub-int v4, v7, v5

    sub-int v9, v8, v6

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v9, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 92
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->isLayoutRtl()Z

    move-result v4

    .line 96
    if-eqz v4, :cond_3

    .line 97
    int-to-float v4, v7

    .line 99
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VM:Ljava/util/Collection;

    if-eqz v7, :cond_2

    .line 100
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VM:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move v7, v4

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;

    .line 102
    iget v9, v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->VO:F

    const/4 v12, 0x0

    cmpl-float v9, v9, v12

    if-nez v9, :cond_0

    .line 103
    const/4 v9, 0x0

    .line 108
    :goto_1
    sub-float v9, v7, v9

    .line 109
    int-to-float v12, v5

    cmpg-float v12, v9, v12

    if-gez v12, :cond_1

    .line 112
    float-to-int v7, v7

    iget-object v9, v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    iget-object v10, v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->a(IIIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 113
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 160
    :goto_2
    return-void

    .line 105
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VN:I

    int-to-float v9, v9

    int-to-float v12, v10

    iget v13, v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->VO:F

    mul-float/2addr v12, v13

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto :goto_1

    .line 120
    :cond_1
    float-to-int v13, v9

    float-to-int v15, v7

    iget-object v7, v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v17

    iget-object v0, v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v12, p0

    move v14, v6

    move/from16 v16, v8

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->a(IIIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    move v7, v9

    .line 122
    goto :goto_0

    .line 126
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 128
    :cond_3
    int-to-float v4, v5

    .line 130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VM:Ljava/util/Collection;

    if-eqz v5, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VM:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move v5, v4

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;

    .line 133
    iget v9, v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->VO:F

    const/4 v12, 0x0

    cmpl-float v9, v9, v12

    if-nez v9, :cond_4

    .line 134
    const/4 v9, 0x0

    .line 139
    :goto_4
    add-float/2addr v9, v5

    .line 140
    int-to-float v12, v7

    cmpl-float v12, v9, v12

    if-lez v12, :cond_5

    .line 143
    float-to-int v5, v5

    iget-object v9, v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    iget-object v10, v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->a(IIIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 136
    :cond_4
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VN:I

    int-to-float v9, v9

    int-to-float v12, v10

    iget v13, v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->VO:F

    mul-float/2addr v12, v13

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto :goto_4

    .line 151
    :cond_5
    float-to-int v13, v5

    float-to-int v15, v9

    iget-object v5, v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v17

    iget-object v0, v4, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v12, p0

    move v14, v6

    move/from16 v16, v8

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->a(IIIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    move v5, v9

    .line 153
    goto :goto_3

    .line 158
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->VL:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    return-void
.end method
