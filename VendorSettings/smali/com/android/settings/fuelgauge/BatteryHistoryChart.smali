.class public Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# instance fields
.field JI:I

.field final acK:Landroid/graphics/Paint;

.field final acL:Landroid/graphics/Paint;

.field final acM:Landroid/graphics/Paint;

.field final acN:Landroid/graphics/Paint;

.field final acO:Landroid/graphics/Paint;

.field final acP:Landroid/graphics/Paint;

.field final acQ:Landroid/graphics/Paint;

.field final acR:Landroid/graphics/Paint;

.field final acS:Landroid/graphics/Paint;

.field final acT:Landroid/graphics/Paint;

.field final acU:Landroid/graphics/Paint;

.field final acV:Landroid/graphics/Paint;

.field final acW:Landroid/graphics/Paint;

.field final acX:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

.field final acY:Landroid/text/TextPaint;

.field final acZ:Landroid/text/TextPaint;

.field adA:Ljava/lang/String;

.field adB:Ljava/lang/String;

.field adC:Ljava/lang/String;

.field adD:Ljava/lang/String;

.field adE:Ljava/lang/String;

.field adF:Ljava/lang/String;

.field adG:I

.field adH:I

.field adI:I

.field adJ:I

.field adK:I

.field adL:I

.field adM:I

.field adN:I

.field adO:I

.field adP:I

.field adQ:I

.field adR:I

.field adS:I

.field adT:I

.field adU:Z

.field adV:I

.field adW:I

.field adX:I

.field adY:I

.field adZ:I

.field final ada:Landroid/graphics/Paint;

.field final adb:Landroid/graphics/Path;

.field final adc:Landroid/graphics/Path;

.field final add:Landroid/graphics/Path;

.field final ade:Landroid/graphics/Path;

.field final adf:Landroid/graphics/Path;

.field final adg:Landroid/graphics/Path;

.field final adh:Landroid/graphics/Path;

.field final adi:Landroid/graphics/Path;

.field final adj:Landroid/graphics/Path;

.field final adk:Landroid/graphics/Path;

.field final adl:Landroid/graphics/Path;

.field final adm:Landroid/graphics/Path;

.field final adn:Landroid/graphics/Path;

.field ado:Landroid/os/BatteryStats;

.field adp:Landroid/content/Intent;

.field adq:J

.field adr:I

.field ads:Ljava/lang/String;

.field adt:Ljava/lang/String;

.field adu:Ljava/lang/String;

.field adv:Ljava/lang/String;

.field adw:Ljava/lang/String;

.field adx:Ljava/lang/String;

.field ady:Ljava/lang/String;

.field adz:Ljava/lang/String;

.field final aeA:Ljava/util/ArrayList;

.field final aeB:Ljava/util/ArrayList;

.field aea:I

.field aeb:I

.field aec:I

.field aed:I

.field aee:I

.field aef:I

.field aeg:I

.field aeh:I

.field aei:I

.field aej:I

.field aek:I

.field ael:I

.field aem:J

.field aen:J

.field aeo:J

.field aep:J

.field aeq:J

.field aer:J

.field aes:Z

.field aet:I

.field aeu:I

.field aev:Z

.field aew:Z

.field aex:Z

.field aey:Z

.field aez:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field mCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .prologue
    .line 358
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acK:Landroid/graphics/Paint;

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acL:Landroid/graphics/Paint;

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acM:Landroid/graphics/Paint;

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acN:Landroid/graphics/Paint;

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acO:Landroid/graphics/Paint;

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acP:Landroid/graphics/Paint;

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acQ:Landroid/graphics/Paint;

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acR:Landroid/graphics/Paint;

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acS:Landroid/graphics/Paint;

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acT:Landroid/graphics/Paint;

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acU:Landroid/graphics/Paint;

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acV:Landroid/graphics/Paint;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acW:Landroid/graphics/Paint;

    .line 142
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acX:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    .line 143
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    .line 144
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ada:Landroid/graphics/Paint;

    .line 147
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adb:Landroid/graphics/Path;

    .line 148
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adc:Landroid/graphics/Path;

    .line 149
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->add:Landroid/graphics/Path;

    .line 150
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ade:Landroid/graphics/Path;

    .line 151
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adf:Landroid/graphics/Path;

    .line 152
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adg:Landroid/graphics/Path;

    .line 153
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adh:Landroid/graphics/Path;

    .line 154
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adi:Landroid/graphics/Path;

    .line 155
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adj:Landroid/graphics/Path;

    .line 156
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adk:Landroid/graphics/Path;

    .line 157
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adl:Landroid/graphics/Path;

    .line 158
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adm:Landroid/graphics/Path;

    .line 159
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adn:Landroid/graphics/Path;

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adV:I

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adW:I

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeA:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeB:Ljava/util/ArrayList;

    .line 362
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adI:I

    .line 364
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adJ:I

    .line 367
    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    .line 370
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acK:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acK:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acL:Landroid/graphics/Paint;

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acL:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acM:Landroid/graphics/Paint;

    const/16 v1, 0x80

    const/16 v2, 0x80

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acN:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    const/16 v2, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acN:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acO:Landroid/graphics/Paint;

    const v1, -0x312845

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acO:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acP:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 381
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acQ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acR:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acS:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acU:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acV:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acX:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    sget-object v1, Lcom/android/settings/iC;->Cc:[I

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 388
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ada:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ada:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acQ:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acR:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acT:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acS:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acU:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acV:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acP:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    sget-object v0, Lcom/android/settings/gt;->wr:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 402
    new-instance v6, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v6}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 403
    new-instance v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v7}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 404
    const/4 v0, 0x0

    invoke-virtual {v6, p1, v5, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 405
    const/16 v0, 0x9

    invoke-virtual {v7, p1, v5, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 407
    const/4 v4, 0x0

    .line 408
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 410
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    .line 411
    const/4 v0, 0x0

    move v12, v0

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v12

    :goto_0
    if-ge v4, v8, :cond_0

    .line 412
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 414
    packed-switch v9, :pswitch_data_0

    .line 411
    :goto_1
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 416
    :pswitch_1
    const/4 v3, 0x0

    invoke-virtual {v5, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_1

    .line 420
    :pswitch_2
    const/4 v2, 0x0

    invoke-virtual {v5, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    goto :goto_1

    .line 424
    :pswitch_3
    const/4 v1, 0x0

    invoke-virtual {v5, v9, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    goto :goto_1

    .line 428
    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    goto :goto_1

    .line 432
    :pswitch_5
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, v6, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeH:Landroid/content/res/ColorStateList;

    .line 433
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeH:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 437
    :pswitch_6
    iget v10, v6, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v6, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 438
    iget v10, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    goto :goto_1

    .line 442
    :pswitch_7
    iget v10, v6, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeI:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v6, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeI:I

    .line 443
    iget v10, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeI:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeI:I

    goto :goto_1

    .line 447
    :pswitch_8
    iget v10, v6, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeJ:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v6, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeJ:I

    .line 448
    iget v10, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeJ:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->aeJ:I

    goto :goto_1

    .line 452
    :pswitch_9
    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acK:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acQ:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acR:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acT:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acS:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 457
    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acU:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acV:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acP:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 463
    :pswitch_a
    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acO:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 467
    :pswitch_b
    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adG:I

    goto/16 :goto_1

    .line 472
    :cond_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 474
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    invoke-virtual {v6, p1, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->a(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 475
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    invoke-virtual {v7, p1, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->a(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 477
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acW:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 478
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acW:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 479
    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    div-int/lit8 v4, v4, 0x2

    .line 480
    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 481
    const/4 v4, 0x1

    .line 483
    :cond_1
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acW:Landroid/graphics/Paint;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 484
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acW:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 487
    if-eqz v3, :cond_2

    .line 488
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 489
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 491
    :cond_2
    return-void

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private bE()Z
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private qQ()Z
    .locals 3

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V
    .locals 4

    .prologue
    .line 656
    if-eqz p6, :cond_2

    .line 657
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 658
    if-eqz p15, :cond_0

    .line 659
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 661
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 663
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 664
    int-to-float v1, p4

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 665
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 668
    :cond_2
    if-eqz p8, :cond_3

    .line 669
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adg:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 671
    :cond_3
    if-eqz p9, :cond_4

    .line 672
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adh:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adZ:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 674
    :cond_4
    if-eqz p10, :cond_5

    .line 675
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adi:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aea:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 677
    :cond_5
    if-eqz p11, :cond_6

    .line 678
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adj:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeb:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 680
    :cond_6
    if-eqz p12, :cond_7

    .line 681
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adk:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aec:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 683
    :cond_7
    if-eqz p13, :cond_8

    .line 684
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adl:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aed:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 686
    :cond_8
    if-eqz p14, :cond_9

    .line 687
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adm:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aee:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 689
    :cond_9
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aex:Z

    if-eqz v1, :cond_a

    .line 690
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acX:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->cf(I)V

    .line 692
    :cond_a
    return-void
.end method

.method a(Landroid/graphics/Canvas;II)V
    .locals 18

    .prologue
    .line 1192
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->isLayoutRtl()Z

    move-result v14

    .line 1193
    if-eqz v14, :cond_1

    move/from16 v13, p2

    .line 1194
    :goto_0
    if-eqz v14, :cond_2

    const/4 v1, 0x0

    move v12, v1

    .line 1195
    :goto_1
    if-eqz v14, :cond_3

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object v11, v1

    .line 1196
    :goto_2
    if-eqz v14, :cond_4

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object v8, v1

    .line 1203
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adb:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acK:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adf:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adf:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acO:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1208
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    .line 1209
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aei:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adK:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    mul-int/lit8 v2, v2, 0x4

    add-int v15, v1, v2

    .line 1210
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aei:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    div-int/lit8 v2, v2, 0x2

    add-int v16, v1, v2

    .line 1211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1212
    const/4 v2, 0x0

    .line 1213
    const/4 v1, 0x0

    move v9, v1

    move v10, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_b

    .line 1214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeA:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1215
    if-nez v9, :cond_5

    .line 1216
    iget v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1217
    if-gez v1, :cond_23

    .line 1218
    const/4 v1, 0x0

    move v10, v1

    .line 1221
    :goto_5
    iget-object v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v2, v10

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1222
    iget v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v2, v1

    move/from16 v0, v16

    int-to-float v3, v0

    iget v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    add-int v1, v1, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1223
    iget v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int/2addr v10, v1

    move v2, v10

    .line 1213
    :goto_6
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v10, v2

    goto :goto_4

    .line 1193
    :cond_1
    const/4 v1, 0x0

    move v13, v1

    goto/16 :goto_0

    :cond_2
    move/from16 v12, p2

    .line 1194
    goto/16 :goto_1

    .line 1195
    :cond_3
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object v11, v1

    goto/16 :goto_2

    .line 1196
    :cond_4
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object v8, v1

    goto/16 :goto_3

    .line 1224
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v9, v1, :cond_8

    .line 1225
    iget v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v17, v1, v2

    .line 1226
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adK:I

    add-int/2addr v1, v10

    move/from16 v0, v17

    if-ge v0, v1, :cond_6

    move v2, v10

    .line 1227
    goto :goto_6

    .line 1229
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeA:Ljava/util/ArrayList;

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1230
    iget v1, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v1, p2, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adK:I

    sub-int/2addr v1, v2

    move/from16 v0, v17

    if-le v0, v1, :cond_7

    move v2, v10

    .line 1231
    goto :goto_6

    .line 1234
    :cond_7
    iget-object v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v17

    int-to-float v2, v0

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1235
    iget v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v2, v1

    move/from16 v0, v16

    int-to-float v3, v0

    iget v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    add-int v1, v1, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1236
    iget v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v10, v17, v1

    move v2, v10

    .line 1237
    goto :goto_6

    .line 1238
    :cond_8
    iget v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1239
    iget v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int/2addr v2, v1

    move/from16 v0, p2

    if-lt v2, v0, :cond_9

    .line 1240
    add-int/lit8 v1, p2, -0x1

    iget v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int/2addr v1, v2

    .line 1243
    :cond_9
    iget-object v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v1, v1

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1244
    iget v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v2, v1

    move/from16 v0, v16

    int-to-float v3, v0

    iget v1, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    add-int v1, v1, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v10

    goto/16 :goto_6

    .line 1247
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adu:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1248
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aei:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adK:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adu:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adQ:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1255
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adM:I

    neg-int v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adN:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adM:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    add-int v3, v1, v2

    .line 1256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    invoke-virtual {v1, v11}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adv:Ljava/lang/String;

    int-to-float v2, v13

    int-to-float v4, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1259
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adS:I

    div-int/lit8 v1, v1, 0x2

    .line 1260
    if-eqz v14, :cond_c

    neg-int v1, v1

    .line 1261
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adS:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adT:I

    sub-int/2addr v2, v4

    div-int/lit8 v4, v2, 0x2

    if-eqz v14, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adT:I

    :goto_7
    add-int/2addr v2, v4

    .line 1264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adw:Ljava/lang/String;

    sub-int v1, v2, v1

    int-to-float v1, v1

    int-to-float v2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    invoke-virtual {v1, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adx:Ljava/lang/String;

    int-to-float v2, v12

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adc:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adc:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acL:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1274
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->add:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->add:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acM:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1278
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ade:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ade:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acN:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1282
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aex:Z

    if-eqz v1, :cond_10

    .line 1284
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aef:I

    sub-int v1, p3, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acX:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->b(Landroid/graphics/Canvas;II)V

    .line 1287
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adh:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adh:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acQ:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1291
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adg:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adg:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acP:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1295
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aew:Z

    if-eqz v1, :cond_13

    .line 1296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adi:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adi:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acR:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1301
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aez:Z

    if-eqz v1, :cond_14

    .line 1302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adj:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adj:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acS:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1307
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aey:Z

    if-eqz v1, :cond_15

    .line 1308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adk:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adk:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acT:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1313
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aev:Z

    if-eqz v1, :cond_16

    .line 1314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adl:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adl:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acU:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1319
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adm:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adm:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acV:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1324
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adU:Z

    if-eqz v1, :cond_1d

    .line 1326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    invoke-virtual {v2, v11}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1328
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aex:Z

    if-eqz v2, :cond_18

    .line 1329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adF:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aef:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adL:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1332
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aew:Z

    if-eqz v2, :cond_19

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adA:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aea:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adL:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1336
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aez:Z

    if-eqz v2, :cond_1a

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adC:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeb:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adL:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1340
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aey:Z

    if-eqz v2, :cond_1b

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adB:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aec:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adL:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1344
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aev:Z

    if-eqz v2, :cond_1c

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adD:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aed:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adL:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1348
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adE:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aee:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adL:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ady:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adY:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adL:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adz:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adZ:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adL:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1357
    :cond_1d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    sub-int/2addr v1, v2

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    sub-int/2addr v1, v4

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aei:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1359
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adU:Z

    if-eqz v1, :cond_1f

    .line 1360
    const/4 v1, 0x0

    move v7, v1

    :goto_8
    const/16 v1, 0xa

    if-ge v7, v1, :cond_1f

    .line 1361
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aei:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v7

    div-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    .line 1362
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1360
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_8

    .line 1261
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adR:I

    goto/16 :goto_7

    .line 1368
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ads:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adO:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adP:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aei:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1372
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aei:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    move/from16 v0, p2

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aei:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 1376
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adK:I

    add-int v5, v1, v2

    .line 1377
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aei:I

    .line 1378
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    .line 1379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_9
    if-ltz v4, :cond_22

    .line 1381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeB:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;

    .line 1382
    iget v2, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    sub-int v3, v2, v3

    .line 1383
    iget v2, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v8

    .line 1384
    iget v8, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    add-int/2addr v8, v2

    if-lt v8, v7, :cond_21

    .line 1385
    iget v2, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    sub-int/2addr v2, v3

    .line 1386
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    sub-int v3, v2, v3

    .line 1387
    if-lt v3, v7, :cond_21

    .line 1380
    :cond_20
    :goto_a
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_9

    .line 1392
    :cond_21
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    if-lt v3, v8, :cond_20

    .line 1396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adn:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adn:Landroid/graphics/Path;

    iget v8, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v8, v8

    int-to-float v9, v5

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adn:Landroid/graphics/Path;

    iget v8, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v8, v8

    int-to-float v9, v6

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adn:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acW:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1400
    iget-object v1, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adK:I

    sub-int v3, v5, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 1403
    :cond_22
    return-void

    :cond_23
    move v10, v1

    goto/16 :goto_5
.end method

.method a(Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 22

    .prologue
    .line 494
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ado:Landroid/os/BatteryStats;

    .line 495
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adp:Landroid/content/Intent;

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 501
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ado:Landroid/os/BatteryStats;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v5, v7}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v6

    .line 503
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adq:J

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0714

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ady:Ljava/lang/String;

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0715

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adz:Ljava/lang/String;

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0716

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adA:Ljava/lang/String;

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0717

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adB:Ljava/lang/String;

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0718

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adC:Ljava/lang/String;

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0719

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adD:Ljava/lang/String;

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c071a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adE:Ljava/lang/String;

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c071b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adF:Ljava/lang/String;

    .line 513
    const/16 v6, 0x64

    invoke-static {v6}, Lcom/android/settings/iC;->ar(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ads:Ljava/lang/String;

    .line 514
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/iC;->ar(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adt:Ljava/lang/String;

    .line 516
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adp:Landroid/content/Intent;

    invoke-static {v6}, Lcom/android/settings/iC;->r(Landroid/content/Intent;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adr:I

    .line 517
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adr:I

    invoke-static {v6}, Lcom/android/settings/iC;->ar(I)Ljava/lang/String;

    move-result-object v10

    .line 518
    const-wide/16 v6, 0x0

    .line 519
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aes:Z

    .line 520
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adp:Landroid/content/Intent;

    const-string v9, "plugged"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_9

    .line 521
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ado:Landroid/os/BatteryStats;

    invoke-virtual {v8, v4, v5}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v4

    .line 522
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_8

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    invoke-static {v6, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0709

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adv:Ljava/lang/String;

    .line 560
    :goto_0
    const-string v6, ""

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adx:Ljava/lang/String;

    .line 561
    const-string v6, ""

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adw:Ljava/lang/String;

    .line 562
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adv:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 564
    const/4 v15, 0x0

    .line 565
    const/4 v14, 0x0

    .line 566
    const/4 v9, -0x1

    .line 567
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aet:I

    .line 568
    const/16 v6, 0x64

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeu:I

    .line 569
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    .line 570
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeq:J

    .line 571
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aer:J

    .line 572
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aem:J

    .line 573
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeo:J

    .line 574
    const-wide/16 v12, 0x0

    .line 575
    const-wide/16 v10, 0x0

    .line 576
    const/4 v8, 0x0

    .line 577
    const/4 v7, 0x0

    .line 578
    const/4 v6, 0x1

    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 580
    new-instance v16, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v16 .. v16}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 581
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 582
    add-int/lit8 v15, v15, 0x1

    .line 583
    if-eqz v6, :cond_1

    .line 584
    const/4 v6, 0x0

    .line 585
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aem:J

    .line 587
    :cond_1
    move-object/from16 v0, v16

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v16

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 597
    :cond_2
    move-object/from16 v0, v16

    iget-wide v10, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide v18, 0x39ef8b000L

    add-long v12, v12, v18

    cmp-long v10, v10, v12

    if-gtz v10, :cond_3

    move-object/from16 v0, v16

    iget-wide v10, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aem:J

    const-wide/32 v18, 0x493e0

    add-long v12, v12, v18

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    .line 599
    :cond_3
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    .line 601
    :cond_4
    move-object/from16 v0, v16

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 602
    move-object/from16 v0, v16

    iget-wide v10, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 603
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_5

    .line 604
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aem:J

    move-wide/from16 v18, v0

    sub-long v18, v10, v18

    sub-long v18, v12, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    .line 607
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 608
    move-object/from16 v0, v16

    iget-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v14, v9, :cond_6

    const/4 v14, 0x1

    if-ne v15, v14, :cond_7

    .line 609
    :cond_6
    move-object/from16 v0, v16

    iget-byte v9, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 612
    :cond_7
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aen:J

    .line 613
    move-object/from16 v0, v16

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v8, v14

    .line 614
    move-object/from16 v0, v16

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr v7, v14

    move v14, v15

    goto/16 :goto_1

    .line 529
    :cond_8
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adv:Ljava/lang/String;

    :goto_2
    move-wide v4, v6

    goto/16 :goto_0

    .line 532
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ado:Landroid/os/BatteryStats;

    invoke-virtual {v8, v4, v5}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v8

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adp:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/settings/iC;->a(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 535
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adp:Landroid/content/Intent;

    const-string v11, "status"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 537
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-lez v11, :cond_d

    const/4 v11, 0x5

    if-eq v5, v11, :cond_d

    .line 538
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aes:Z

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    div-long v6, v8, v6

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adp:Landroid/content/Intent;

    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 544
    const/4 v6, 0x1

    if-ne v4, v6, :cond_a

    .line 545
    const v4, 0x7f0c070c

    .line 553
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v10, v7, v11

    const/4 v10, 0x1

    aput-object v5, v7, v10

    invoke-virtual {v6, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adv:Ljava/lang/String;

    move-wide v4, v8

    .line 555
    goto/16 :goto_0

    .line 546
    :cond_a
    const/4 v6, 0x2

    if-ne v4, v6, :cond_b

    .line 547
    const v4, 0x7f0c070d

    goto :goto_3

    .line 548
    :cond_b
    const/4 v6, 0x4

    if-ne v4, v6, :cond_c

    .line 549
    const v4, 0x7f0c070e

    goto :goto_3

    .line 551
    :cond_c
    const v4, 0x7f0c070b

    goto :goto_3

    .line 556
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c070a

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-virtual {v5, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adv:Ljava/lang/String;

    goto/16 :goto_2

    .line 618
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aen:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    div-long v18, v4, v18

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeo:J

    .line 619
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aen:J

    move-wide/from16 v16, v0

    add-long v12, v12, v16

    sub-long v10, v12, v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeq:J

    .line 620
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeq:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aer:J

    .line 621
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ael:I

    .line 622
    const/high16 v4, 0x20000000

    and-int/2addr v4, v8

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aew:Z

    .line 623
    const/high16 v4, 0x8000000

    and-int/2addr v4, v7

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aez:Z

    .line 624
    const/high16 v4, 0x400000

    and-int/2addr v4, v7

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aey:Z

    .line 625
    const/high16 v4, 0x20000000

    and-int/2addr v4, v7

    if-nez v4, :cond_f

    const/high16 v4, 0x18010000

    and-int/2addr v4, v8

    if-eqz v4, :cond_15

    :cond_f
    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aev:Z

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/iC;->Z(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 630
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aex:Z

    .line 632
    :cond_10
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeo:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aem:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_11

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aem:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeo:J

    .line 633
    :cond_11
    return-void

    .line 622
    :cond_12
    const/4 v4, 0x0

    goto :goto_4

    .line 623
    :cond_13
    const/4 v4, 0x0

    goto :goto_5

    .line 624
    :cond_14
    const/4 v4, 0x0

    goto :goto_6

    .line 625
    :cond_15
    const/4 v4, 0x0

    goto :goto_7
.end method

.method a(Ljava/util/Calendar;IIZ)V
    .locals 10

    .prologue
    .line 1147
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    .line 1148
    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aer:J

    sub-long/2addr v2, v0

    .line 1149
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeA:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long v0, v8, v0

    sub-int v7, p3, p2

    int-to-long v8, v7

    mul-long/2addr v0, v8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p2

    invoke-direct {v5, v6, v0, p1, p4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    return-void
.end method

.method b(Ljava/util/Calendar;IIZ)V
    .locals 10

    .prologue
    .line 1156
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    .line 1157
    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aer:J

    sub-long/2addr v2, v0

    .line 1158
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeB:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long v0, v8, v0

    sub-int v7, p3, p2

    int-to-long v8, v7

    mul-long/2addr v0, v8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p2

    invoke-direct {v5, v6, v0, p1, p4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 1166
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1168
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v0

    .line 1169
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v1

    .line 1175
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->a(Landroid/graphics/Canvas;II)V

    .line 1176
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ads:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adO:I

    .line 638
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adP:I

    .line 639
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adT:I

    .line 640
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adR:I

    .line 641
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adS:I

    .line 642
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adK:I

    .line 643
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adL:I

    .line 644
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adM:I

    .line 645
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acZ:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adN:I

    .line 646
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adN:I

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adM:I

    sub-int/2addr v0, v1

    .line 647
    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adK:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adH:I

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adG:I

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adH:I

    add-int/2addr v1, v2

    invoke-static {v1, p2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setMeasuredDimension(II)V

    .line 650
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 44

    .prologue
    .line 706
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 710
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adV:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adW:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adV:I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adW:I

    if-eqz v4, :cond_0

    .line 720
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adV:I

    .line 721
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adW:I

    .line 722
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 723
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 725
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adL:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adK:I

    sub-int/2addr v4, v5

    .line 726
    mul-int/lit8 v5, v4, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adG:I

    add-int/2addr v5, v6

    move/from16 v0, p2

    if-le v0, v5, :cond_14

    .line 727
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adU:Z

    .line 728
    mul-int/lit8 v5, v4, 0xf

    move/from16 v0, p2

    if-le v0, v5, :cond_13

    .line 730
    div-int/lit8 v5, v4, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    .line 739
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    if-gtz v5, :cond_2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    .line 741
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adH:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    .line 742
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adO:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    .line 743
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    .line 744
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    sub-int v31, v5, v6

    .line 746
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 747
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acL:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 748
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acM:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 749
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acN:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 750
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acP:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 751
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acQ:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 752
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acR:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 753
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acT:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 754
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acS:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 755
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acU:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 756
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acV:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 757
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ada:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 759
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    add-int/2addr v5, v4

    .line 761
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adU:Z

    if-eqz v4, :cond_1a

    .line 762
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adY:I

    .line 763
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adY:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adZ:I

    .line 764
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adZ:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aee:I

    .line 765
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aee:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aed:I

    .line 766
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aed:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aev:Z

    if-eqz v4, :cond_15

    move v4, v5

    :goto_2
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aea:I

    .line 767
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aea:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aew:Z

    if-eqz v4, :cond_16

    move v4, v5

    :goto_3
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeb:I

    .line 768
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeb:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aez:Z

    if-eqz v4, :cond_17

    move v4, v5

    :goto_4
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aec:I

    .line 769
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aec:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aey:Z

    if-eqz v4, :cond_18

    move v4, v5

    :goto_5
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aef:I

    .line 770
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aef:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aex:Z

    if-eqz v6, :cond_19

    :goto_6
    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeg:I

    .line 772
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aex:Z

    if-eqz v4, :cond_3

    .line 773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acX:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 785
    :cond_3
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adb:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adc:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->add:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adf:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ade:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adh:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adi:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adj:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adk:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adl:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adm:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 796
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adg:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeA:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeB:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 801
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    move-wide/from16 v34, v0

    .line 802
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aer:J

    cmp-long v4, v4, v34

    if-lez v4, :cond_1b

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aer:J

    sub-long v4, v4, v34

    move-wide/from16 v20, v4

    .line 804
    :goto_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    move-wide/from16 v28, v0

    .line 805
    const-wide/16 v26, 0x0

    .line 807
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aet:I

    move/from16 v36, v0

    .line 808
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeu:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aet:I

    sub-int v37, v4, v5

    .line 810
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeg:I

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    sub-int v7, v4, v5

    .line 811
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aei:I

    .line 813
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    const/4 v11, -0x1

    const/4 v9, -0x1

    .line 814
    const/4 v4, 0x0

    .line 815
    const/4 v10, 0x0

    .line 816
    const/16 v19, 0x0

    .line 817
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 818
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 819
    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v18, 0x0

    .line 820
    const/16 v23, 0x0

    .line 821
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ael:I

    move/from16 v38, v0

    .line 822
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeq:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    move-wide/from16 v40, v0

    cmp-long v5, v32, v40

    if-lez v5, :cond_47

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ado:Landroid/os/BatteryStats;

    invoke-virtual {v5}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 823
    new-instance v39, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v39 .. v39}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move/from16 v30, v4

    move-wide/from16 v32, v28

    move-wide/from16 v4, v26

    .line 824
    :goto_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ado:Landroid/os/BatteryStats;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v6

    if-eqz v6, :cond_34

    move/from16 v0, v30

    move/from16 v1, v38

    if-ge v0, v1, :cond_34

    .line 825
    invoke-virtual/range {v39 .. v39}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 826
    move-object/from16 v0, v39

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v24, v0

    sub-long v4, v24, v4

    add-long v26, v32, v4

    .line 827
    move-object/from16 v0, v39

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v24, v0

    .line 828
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    sub-long v28, v26, v34

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    mul-long v28, v28, v32

    div-long v28, v28, v20

    move-wide/from16 v0, v28

    long-to-int v5, v0

    add-int/2addr v4, v5

    .line 829
    if-gez v4, :cond_4

    .line 830
    const/4 v4, 0x0

    .line 842
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    add-int/2addr v5, v7

    move-object/from16 v0, v39

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v6, v6, v36

    add-int/lit8 v28, v7, -0x1

    mul-int v6, v6, v28

    div-int v6, v6, v37

    sub-int/2addr v5, v6

    .line 844
    if-eq v11, v4, :cond_8

    .line 846
    if-eq v9, v5, :cond_8

    .line 849
    move-object/from16 v0, v39

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 850
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adJ:I

    if-gt v6, v9, :cond_1c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ade:Landroid/graphics/Path;

    .line 854
    :goto_a
    move-object/from16 v0, v19

    if-eq v6, v0, :cond_1e

    .line 855
    if-eqz v19, :cond_5

    .line 856
    int-to-float v9, v4

    int-to-float v11, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 858
    :cond_5
    if-eqz v6, :cond_6

    .line 859
    int-to-float v9, v4

    int-to-float v11, v5

    invoke-virtual {v6, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_6
    move-object/from16 v19, v6

    .line 866
    :cond_7
    :goto_b
    if-nez v10, :cond_1f

    .line 867
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adb:Landroid/graphics/Path;

    .line 868
    int-to-float v6, v4

    int-to-float v8, v5

    invoke-virtual {v10, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move v8, v4

    :goto_c
    move v9, v5

    move v11, v4

    .line 878
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adU:Z

    if-eqz v5, :cond_12

    .line 879
    move-object/from16 v0, v39

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    .line 881
    :goto_d
    if-eq v5, v12, :cond_9

    .line 882
    if-eqz v5, :cond_21

    .line 883
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adg:Landroid/graphics/Path;

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adY:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v6, v12, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_e
    move v12, v5

    .line 890
    :cond_9
    move-object/from16 v0, v39

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    and-int/2addr v5, v6

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    .line 892
    :goto_f
    if-eq v5, v13, :cond_a

    .line 893
    if-eqz v5, :cond_23

    .line 894
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adh:Landroid/graphics/Path;

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adZ:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v6, v13, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_10
    move v13, v5

    .line 901
    :cond_a
    move-object/from16 v0, v39

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    .line 903
    :goto_11
    if-eq v5, v14, :cond_b

    .line 904
    if-eqz v5, :cond_25

    .line 905
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adi:Landroid/graphics/Path;

    int-to-float v14, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aea:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v6, v14, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_12
    move v14, v5

    .line 912
    :cond_b
    move-object/from16 v0, v39

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x8000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_26

    const/4 v5, 0x1

    .line 914
    :goto_13
    if-eq v5, v15, :cond_c

    .line 915
    if-eqz v5, :cond_27

    .line 916
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adj:Landroid/graphics/Path;

    int-to-float v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeb:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v6, v15, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_14
    move v15, v5

    .line 923
    :cond_c
    move-object/from16 v0, v39

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x400000

    and-int/2addr v5, v6

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    .line 925
    :goto_15
    move/from16 v0, v16

    if-eq v5, v0, :cond_d

    .line 926
    if-eqz v5, :cond_29

    .line 927
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adk:Landroid/graphics/Path;

    int-to-float v0, v4

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aec:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_16
    move/from16 v16, v5

    .line 934
    :cond_d
    move-object/from16 v0, v39

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v5, v5, 0xf

    shr-int/lit8 v6, v5, 0x0

    .line 938
    move/from16 v0, v23

    if-eq v0, v6, :cond_2a

    .line 940
    packed-switch v6, :pswitch_data_0

    .line 950
    :pswitch_0
    const/4 v5, 0x1

    move/from16 v22, v5

    .line 956
    :goto_17
    move-object/from16 v0, v39

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v23, v0

    const/high16 v28, 0x18010000

    and-int v23, v23, v28

    if-eqz v23, :cond_e

    .line 959
    const/4 v5, 0x1

    .line 961
    :cond_e
    move/from16 v0, v17

    if-eq v5, v0, :cond_f

    .line 962
    if-eqz v5, :cond_2b

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adl:Landroid/graphics/Path;

    move-object/from16 v17, v0

    int-to-float v0, v4

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aed:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_18
    move/from16 v17, v5

    .line 970
    :cond_f
    move-object/from16 v0, v39

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v23, -0x80000000

    and-int v5, v5, v23

    if-eqz v5, :cond_2c

    const/4 v5, 0x1

    .line 972
    :goto_19
    move/from16 v0, v18

    if-eq v5, v0, :cond_10

    .line 973
    if-eqz v5, :cond_2d

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adm:Landroid/graphics/Path;

    move-object/from16 v18, v0

    int-to-float v0, v4

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aee:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_1a
    move/from16 v18, v5

    .line 981
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adU:Z

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aex:Z

    if-eqz v5, :cond_11

    .line 983
    move-object/from16 v0, v39

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v5, v5, 0x1c0

    shr-int/lit8 v5, v5, 0x6

    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v5, v0, :cond_2e

    .line 986
    const/4 v5, 0x0

    .line 994
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acX:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->l(II)V

    :cond_11
    move/from16 v23, v6

    .line 1026
    :cond_12
    :goto_1c
    add-int/lit8 v5, v30, 0x1

    move/from16 v30, v5

    move-wide/from16 v32, v26

    move-wide/from16 v42, v24

    move/from16 v24, v4

    move-wide/from16 v4, v42

    goto/16 :goto_9

    .line 733
    :cond_13
    div-int/lit8 v5, v4, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    goto/16 :goto_1

    .line 736
    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adU:Z

    .line 737
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->JI:I

    goto/16 :goto_1

    .line 766
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 767
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 768
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 769
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 770
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 776
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aef:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adY:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aee:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aed:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeb:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aec:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aea:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adZ:I

    .line 779
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adX:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeg:I

    .line 780
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aex:Z

    if-eqz v4, :cond_3

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acX:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_7

    .line 802
    :cond_1b
    const-wide/16 v4, 0x1

    move-wide/from16 v20, v4

    goto/16 :goto_8

    .line 851
    :cond_1c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adI:I

    if-gt v6, v9, :cond_1d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->add:Landroid/graphics/Path;

    goto/16 :goto_a

    .line 852
    :cond_1d
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 862
    :cond_1e
    if-eqz v6, :cond_7

    .line 863
    int-to-float v9, v4

    int-to-float v11, v5

    invoke-virtual {v6, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 871
    :cond_1f
    int-to-float v6, v4

    int-to-float v9, v5

    invoke-virtual {v10, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_c

    .line 879
    :cond_20
    const/4 v5, 0x0

    goto/16 :goto_d

    .line 885
    :cond_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adg:Landroid/graphics/Path;

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adY:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v6, v12, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_e

    .line 890
    :cond_22
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 896
    :cond_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adh:Landroid/graphics/Path;

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adZ:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v6, v13, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_10

    .line 901
    :cond_24
    const/4 v5, 0x0

    goto/16 :goto_11

    .line 907
    :cond_25
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adi:Landroid/graphics/Path;

    int-to-float v14, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aea:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v6, v14, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_12

    .line 912
    :cond_26
    const/4 v5, 0x0

    goto/16 :goto_13

    .line 918
    :cond_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adj:Landroid/graphics/Path;

    int-to-float v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeb:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v6, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_14

    .line 923
    :cond_28
    const/4 v5, 0x0

    goto/16 :goto_15

    .line 929
    :cond_29
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adk:Landroid/graphics/Path;

    int-to-float v0, v4

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aec:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_16

    .line 947
    :pswitch_1
    const/4 v5, 0x0

    move/from16 v22, v5

    .line 948
    goto/16 :goto_17

    :cond_2a
    move/from16 v5, v22

    move/from16 v6, v23

    .line 954
    goto/16 :goto_17

    .line 965
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adl:Landroid/graphics/Path;

    move-object/from16 v17, v0

    int-to-float v0, v4

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aed:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_18

    .line 970
    :cond_2c
    const/4 v5, 0x0

    goto/16 :goto_19

    .line 976
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adm:Landroid/graphics/Path;

    move-object/from16 v18, v0

    int-to-float v0, v4

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aee:I

    move/from16 v28, v0

    sub-int v28, p2, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1a

    .line 987
    :cond_2e
    move-object/from16 v0, v39

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v23, 0x200000

    and-int v5, v5, v23

    if-eqz v5, :cond_2f

    .line 988
    const/4 v5, 0x1

    goto/16 :goto_1b

    .line 990
    :cond_2f
    move-object/from16 v0, v39

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v5, v5, 0x38

    shr-int/lit8 v5, v5, 0x3

    .line 992
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_1b

    .line 1000
    :cond_30
    move-object/from16 v0, v39

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v25, 0x5

    move/from16 v0, v25

    if-eq v6, v0, :cond_31

    move-object/from16 v0, v39

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v25, 0x7

    move/from16 v0, v25

    if-ne v6, v0, :cond_46

    .line 1002
    :cond_31
    move-object/from16 v0, v39

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    move-wide/from16 v26, v0

    cmp-long v4, v4, v26

    if-ltz v4, :cond_33

    .line 1003
    move-object/from16 v0, v39

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1007
    :goto_1d
    move-object/from16 v0, v39

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v26, v0

    move-wide/from16 v28, v4

    .line 1010
    :goto_1e
    move-object/from16 v0, v39

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x6

    if-eq v4, v5, :cond_45

    move-object/from16 v0, v39

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x5

    if-ne v4, v5, :cond_32

    sub-long v4, v32, v28

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v32, 0x36ee80

    cmp-long v4, v4, v32

    if-lez v4, :cond_45

    .line 1013
    :cond_32
    if-eqz v10, :cond_45

    .line 1014
    add-int/lit8 v5, v24, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v19}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->a(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 1017
    const/4 v9, -0x1

    .line 1018
    const/4 v10, 0x0

    .line 1019
    const/16 v19, 0x0

    .line 1020
    const/16 v18, 0x0

    move/from16 v16, v18

    move/from16 v15, v18

    move/from16 v14, v18

    move/from16 v13, v18

    move/from16 v12, v18

    move v11, v9

    move/from16 v4, v24

    move-wide/from16 v24, v26

    move-wide/from16 v26, v28

    goto/16 :goto_1c

    .line 1005
    :cond_33
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    move-object/from16 v0, v39

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aem:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    add-long v4, v4, v26

    goto :goto_1d

    .line 1028
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ado:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    move-object/from16 v5, v19

    .line 1031
    :goto_1f
    if-ltz v9, :cond_35

    if-gez v11, :cond_40

    .line 1033
    :cond_35
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    .line 1034
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adr:I

    sub-int v6, v6, v36

    add-int/lit8 v9, v7, -0x1

    mul-int/2addr v6, v9

    div-int v6, v6, v37

    sub-int v9, v4, v6

    .line 1036
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adr:I

    int-to-byte v4, v4

    .line 1037
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adJ:I

    if-gt v4, v6, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ade:Landroid/graphics/Path;

    .line 1040
    :goto_20
    if-eqz v4, :cond_44

    .line 1041
    int-to-float v5, v11

    int-to-float v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1044
    :goto_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adb:Landroid/graphics/Path;

    int-to-float v6, v11

    int-to-float v10, v9

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adb:Landroid/graphics/Path;

    move-object/from16 v19, v4

    move/from16 v5, p1

    :goto_22
    move-object/from16 v4, p0

    move/from16 v6, p2

    .line 1055
    invoke-virtual/range {v4 .. v19}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->a(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 1059
    move/from16 v0, p1

    if-ge v5, v0, :cond_36

    .line 1062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adf:Landroid/graphics/Path;

    int-to-float v6, v5

    int-to-float v8, v9

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1063
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v36, 0x64

    add-int/lit8 v8, v7, -0x1

    mul-int/2addr v6, v8

    div-int v6, v6, v37

    sub-int/2addr v4, v6

    .line 1064
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeh:I

    add-int/2addr v6, v7

    rsub-int/lit8 v8, v36, 0x0

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v7, v8

    div-int v7, v7, v37

    sub-int/2addr v6, v7

    .line 1065
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aes:Z

    if-eqz v7, :cond_41

    .line 1066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adf:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    int-to-float v7, v7

    int-to-float v8, v6

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1071
    :goto_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adf:Landroid/graphics/Path;

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adf:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 1075
    :cond_36
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3d

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aer:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3d

    .line 1077
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->bE()Z

    move-result v6

    .line 1078
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1079
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1080
    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1081
    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1082
    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1083
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1084
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_37

    .line 1085
    const/16 v4, 0xb

    const/16 v5, 0xb

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1086
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1088
    :cond_37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 1089
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aer:J

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1090
    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1091
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1092
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1093
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 1094
    cmp-long v9, v4, v10

    if-gez v9, :cond_39

    .line 1095
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9, v12, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->a(Ljava/util/Calendar;IIZ)V

    .line 1096
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 1097
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aer:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    add-long/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1098
    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 1099
    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 1100
    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 1101
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 1102
    cmp-long v4, v12, v4

    if-lez v4, :cond_38

    cmp-long v4, v12, v10

    if-gez v4, :cond_38

    .line 1103
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4, v5, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->a(Ljava/util/Calendar;IIZ)V

    .line 1105
    :cond_38
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4, v5, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->a(Ljava/util/Calendar;IIZ)V

    .line 1109
    :cond_39
    const/4 v4, 0x6

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_3a

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_3d

    .line 1111
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->qQ()Z

    move-result v6

    .line 1112
    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1113
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1114
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    cmp-long v9, v4, v10

    if-gez v9, :cond_3b

    .line 1115
    const/4 v4, 0x6

    const/4 v5, 0x6

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1116
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1118
    :cond_3b
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1119
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 1120
    cmp-long v9, v4, v10

    if-gez v9, :cond_3c

    .line 1121
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9, v12, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->b(Ljava/util/Calendar;IIZ)V

    .line 1122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1123
    sub-long v12, v10, v4

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    add-long/2addr v12, v4

    invoke-virtual {v7, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1124
    const/16 v9, 0xb

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v12}, Ljava/util/Calendar;->set(II)V

    .line 1125
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 1126
    cmp-long v4, v12, v4

    if-lez v4, :cond_3c

    cmp-long v4, v12, v10

    if-gez v4, :cond_3c

    .line 1127
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v5, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->b(Ljava/util/Calendar;IIZ)V

    .line 1130
    :cond_3c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4, v5, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->b(Ljava/util/Calendar;IIZ)V

    .line 1134
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeA:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_42

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aer:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aep:J

    sub-long/2addr v6, v8

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adu:Ljava/lang/String;

    .line 1139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->acY:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adu:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adQ:I

    goto/16 :goto_0

    .line 1038
    :cond_3e
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adI:I

    if-gt v4, v6, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->add:Landroid/graphics/Path;

    goto/16 :goto_20

    .line 1039
    :cond_3f
    const/4 v4, 0x0

    goto/16 :goto_20

    .line 1049
    :cond_40
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aej:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aeq:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v34

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v20, v22, v20

    move-wide/from16 v0, v20

    long-to-int v6, v0

    add-int/2addr v4, v6

    .line 1050
    if-gez v4, :cond_43

    .line 1051
    const/4 v4, 0x0

    move-object/from16 v19, v5

    move v5, v4

    goto/16 :goto_22

    .line 1068
    :cond_41
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adf:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    int-to-float v8, v8

    int-to-float v4, v4

    invoke-virtual {v7, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adf:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->aek:I

    int-to-float v7, v7

    int-to-float v8, v6

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_23

    .line 1141
    :cond_42
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adu:Ljava/lang/String;

    .line 1142
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adQ:I

    goto/16 :goto_0

    :cond_43
    move-object/from16 v19, v5

    move v5, v4

    goto/16 :goto_22

    :cond_44
    move-object v4, v5

    goto/16 :goto_21

    :cond_45
    move/from16 v4, v24

    move-wide/from16 v24, v26

    move-wide/from16 v26, v28

    goto/16 :goto_1c

    :cond_46
    move-wide/from16 v26, v4

    move-wide/from16 v28, v32

    goto/16 :goto_1e

    :cond_47
    move-object/from16 v5, v19

    goto/16 :goto_1f

    .line 940
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
