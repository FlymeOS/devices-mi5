.class Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# instance fields
.field aeC:[I

.field aeD:[Landroid/graphics/Paint;

.field aeE:I

.field aeF:[I

.field aeG:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method b(Landroid/graphics/Canvas;II)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 102
    .line 103
    add-int v9, p2, p3

    move v6, v0

    move v5, v0

    .line 104
    :goto_0
    iget v1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeE:I

    if-ge v6, v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeF:[I

    aget v1, v1, v6

    .line 106
    const v2, 0xffff

    and-int v7, v1, v2

    .line 107
    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    shr-int/lit8 v8, v1, 0x10

    .line 110
    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeD:[Landroid/graphics/Paint;

    array-length v1, v1

    if-ge v5, v1, :cond_0

    .line 112
    int-to-float v1, v0

    int-to-float v2, p2

    int-to-float v3, v7

    int-to-float v4, v9

    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeD:[Landroid/graphics/Paint;

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v8

    move v0, v7

    goto :goto_0

    .line 118
    :cond_1
    return-void
.end method

.method cf(I)V
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeG:I

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->l(II)V

    .line 99
    :cond_0
    return-void
.end method

.method init(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    if-lez p1, :cond_0

    .line 79
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeF:[I

    .line 83
    :goto_0
    iput v1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeE:I

    .line 84
    iput v1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeG:I

    .line 85
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeF:[I

    goto :goto_0
.end method

.method l(II)V
    .locals 4

    .prologue
    .line 88
    iget v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeG:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeE:I

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeF:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeF:[I

    iget v1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeE:I

    const v2, 0xffff

    and-int/2addr v2, p1

    shl-int/lit8 v3, p2, 0x10

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 90
    iget v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeE:I

    .line 91
    iput p2, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeG:I

    .line 93
    :cond_0
    return-void
.end method

.method setColors([I)V
    .locals 3

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeC:[I

    .line 69
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeD:[Landroid/graphics/Paint;

    .line 70
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeD:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 72
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeD:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart$ChartData;->aeD:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method
