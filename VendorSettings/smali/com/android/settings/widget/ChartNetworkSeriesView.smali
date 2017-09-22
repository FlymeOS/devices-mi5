.class public Lcom/android/settings/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# instance fields
.field private awR:J

.field private awW:Lcom/android/settings/widget/a;

.field private awX:Lcom/android/settings/widget/a;

.field private axg:Landroid/graphics/Paint;

.field private axh:Landroid/graphics/Paint;

.field private axi:Landroid/graphics/Paint;

.field private axj:Landroid/graphics/Paint;

.field private axk:Landroid/net/NetworkStatsHistory;

.field private axl:Landroid/graphics/Path;

.field private axm:Landroid/graphics/Path;

.field private axn:Landroid/graphics/Path;

.field private axo:I

.field private axp:J

.field private axq:J

.field private axr:Z

.field private axs:Z

.field private axt:Z

.field private axu:J

.field private mEndTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/high16 v4, -0x10000

    const/4 v5, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 71
    iput-boolean v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axr:Z

    .line 72
    iput-boolean v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axs:Z

    .line 73
    iput-boolean v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axt:Z

    .line 89
    sget-object v0, Lcom/android/settings/gt;->wt:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 93
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 94
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 96
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 99
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->c(III)V

    .line 100
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->dl(I)V

    .line 101
    invoke-virtual {p0, v5}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setWillNotDraw(Z)V

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axl:Landroid/graphics/Path;

    .line 106
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axm:Landroid/graphics/Path;

    .line 107
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axn:Landroid/graphics/Path;

    .line 108
    return-void
.end method

.method private wi()V
    .locals 23

    .prologue
    .line 172
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->awR:J

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axl:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axm:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axn:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 176
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axr:Z

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axk:Landroid/net/NetworkStatsHistory;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axk:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v13

    .line 187
    const/4 v9, 0x0

    .line 188
    int-to-float v8, v13

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->awW:Lcom/android/settings/widget/a;

    invoke-interface {v2, v9}, Lcom/android/settings/widget/a;->e(F)J

    move-result-wide v6

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axl:Landroid/graphics/Path;

    invoke-virtual {v2, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axm:Landroid/graphics/Path;

    invoke-virtual {v2, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 198
    const-wide/16 v4, 0x0

    .line 200
    const/4 v3, 0x0

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axk:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axp:J

    invoke-virtual {v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v2

    .line 203
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axk:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axq:J

    invoke-virtual {v10, v14, v15}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v14

    move v11, v2

    move-object/from16 v22, v3

    move-wide v2, v4

    move-wide v4, v6

    move-object/from16 v6, v22

    .line 204
    :goto_1
    if-gt v11, v14, :cond_4

    .line 205
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axk:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v7, v11, v6}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 207
    iget-wide v0, v12, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v16, v0

    .line 208
    iget-wide v6, v12, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long v6, v6, v16

    .line 210
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->awW:Lcom/android/settings/widget/a;

    move-wide/from16 v0, v16

    invoke-interface {v10, v0, v1}, Lcom/android/settings/widget/a;->s(J)F

    move-result v15

    .line 211
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->awW:Lcom/android/settings/widget/a;

    invoke-interface {v10, v6, v7}, Lcom/android/settings/widget/a;->s(J)F

    move-result v10

    .line 214
    const/16 v18, 0x0

    cmpg-float v18, v10, v18

    if-gez v18, :cond_2

    move v6, v8

    move v7, v9

    .line 204
    :goto_2
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    move v9, v7

    move v8, v6

    move-object v6, v12

    goto :goto_1

    .line 217
    :cond_2
    iget-wide v0, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    iget-wide v0, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 220
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->awX:Lcom/android/settings/widget/a;

    invoke-interface {v9, v2, v3}, Lcom/android/settings/widget/a;->s(J)F

    move-result v9

    .line 222
    cmp-long v4, v4, v16

    if-eqz v4, :cond_3

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axl:Landroid/graphics/Path;

    invoke-virtual {v4, v15, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axm:Landroid/graphics/Path;

    invoke-virtual {v4, v15, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axl:Landroid/graphics/Path;

    invoke-virtual {v4, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axm:Landroid/graphics/Path;

    invoke-virtual {v4, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-wide v4, v6

    move v6, v9

    move v7, v10

    .line 234
    goto :goto_2

    .line 238
    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->awW:Lcom/android/settings/widget/a;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    invoke-interface {v4, v6, v7}, Lcom/android/settings/widget/a;->s(J)F

    move-result v9

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axl:Landroid/graphics/Path;

    invoke-virtual {v4, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axm:Landroid/graphics/Path;

    invoke-virtual {v4, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axm:Landroid/graphics/Path;

    int-to-float v5, v13

    invoke-virtual {v4, v9, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axm:Landroid/graphics/Path;

    const/4 v5, 0x0

    int-to-float v6, v13

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->awR:J

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/net/NetworkStatsHistory;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axk:Landroid/net/NetworkStatsHistory;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->wh()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 148
    return-void
.end method

.method a(Lcom/android/settings/widget/a;Lcom/android/settings/widget/a;)V
    .locals 1

    .prologue
    .line 111
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/a;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->awW:Lcom/android/settings/widget/a;

    .line 112
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/a;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->awX:Lcom/android/settings/widget/a;

    .line 113
    return-void
.end method

.method public br(Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axt:Z

    .line 157
    return-void
.end method

.method public bs(Z)V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axs:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 301
    return-void
.end method

.method public c(III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axg:Landroid/graphics/Paint;

    .line 117
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axg:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axg:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axg:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axh:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axh:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axh:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axh:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axi:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axi:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axi:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axi:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axj:Landroid/graphics/Paint;

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axj:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axj:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axj:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axj:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axj:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 138
    return-void

    .line 137
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public dl(I)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axo:I

    .line 142
    return-void
.end method

.method public e(JJ)V
    .locals 1

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axp:J

    .line 152
    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axq:J

    .line 153
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 322
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axr:Z

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->wi()V

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axs:Z

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v2

    invoke-virtual {p1, v6, v6, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 329
    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axn:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axj:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 330
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 333
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axt:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axi:Landroid/graphics/Paint;

    .line 335
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 336
    iget v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axo:I

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axo:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v2, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 337
    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axm:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 338
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 339
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axh:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public w(J)V
    .locals 1

    .prologue
    .line 295
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 296
    return-void
.end method

.method public wh()V
    .locals 2

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axr:Z

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->awR:J

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 163
    return-void
.end method

.method public wj()J
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axu:J

    return-wide v0
.end method

.method public wk()J
    .locals 7

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axs:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axu:J

    .line 309
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axk:Landroid/net/NetworkStatsHistory;

    if-eqz v2, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axk:Landroid/net/NetworkStatsHistory;

    iget-wide v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axp:J

    iget-wide v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->axq:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 312
    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v0, v2

    .line 314
    :cond_0
    return-wide v0

    .line 308
    :cond_1
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->awR:J

    goto :goto_0
.end method
