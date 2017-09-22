.class Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# instance fields
.field aeH:Landroid/content/res/ColorStateList;

.field aeI:I

.field aeJ:I

.field textSize:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeH:Landroid/content/res/ColorStateList;

    .line 242
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 243
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeI:I

    .line 244
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeJ:I

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/content/res/TypedArray;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 247
    const/4 v0, 0x0

    .line 248
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 249
    if-eq v1, v5, :cond_2

    .line 250
    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v1, v0

    .line 253
    :goto_0
    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 255
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 256
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 258
    packed-switch v3, :pswitch_data_0

    .line 255
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeH:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 264
    :pswitch_1
    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    goto :goto_2

    .line 268
    :pswitch_2
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeI:I

    goto :goto_2

    .line 272
    :pswitch_3
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeJ:I

    goto :goto_2

    .line 277
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method a(Landroid/content/Context;Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p2, Landroid/text/TextPaint;->density:F

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeH:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 287
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 289
    const/4 v0, 0x0

    .line 290
    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeI:I

    packed-switch v1, :pswitch_data_0

    .line 304
    :goto_0
    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeJ:I

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;I)V

    .line 305
    return-void

    .line 292
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 296
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 300
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/text/TextPaint;Landroid/graphics/Typeface;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 308
    if-lez p3, :cond_4

    .line 309
    if-nez p2, :cond_0

    .line 310
    invoke-static {p3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 315
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 317
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 318
    :goto_1
    xor-int/lit8 v0, v0, -0x1

    and-int v3, p3, v0

    .line 319
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 320
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :goto_3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 326
    :goto_4
    return-void

    .line 312
    :cond_0
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 317
    goto :goto_1

    :cond_2
    move v0, v1

    .line 319
    goto :goto_2

    :cond_3
    move v0, v2

    .line 320
    goto :goto_3

    .line 322
    :cond_4
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 323
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 324
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_4
.end method
