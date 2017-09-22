.class public Lcom/android/settings/widget/ChartDataUsageView;
.super Lcom/android/settings/widget/i;
.source "ChartDataUsageView.java"


# instance fields
.field private awF:Lcom/android/settings/widget/ChartGridView;

.field private awG:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private awH:Landroid/net/NetworkStatsHistory;

.field private awI:Lcom/android/settings/widget/ChartSweepView;

.field private awJ:Lcom/android/settings/widget/ChartSweepView;

.field private awK:J

.field private awL:J

.field private awM:J

.field private awN:Lcom/android/settings/widget/e;

.field private awO:Lcom/android/settings/widget/h;

.field private gU:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 293
    new-instance v0, Lcom/android/settings/widget/c;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/c;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awO:Lcom/android/settings/widget/h;

    .line 91
    new-instance v0, Lcom/android/settings/widget/f;

    invoke-direct {v0}, Lcom/android/settings/widget/f;-><init>()V

    new-instance v1, Lcom/android/settings/widget/k;

    new-instance v2, Lcom/android/settings/widget/d;

    invoke-direct {v2}, Lcom/android/settings/widget/d;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/settings/widget/k;-><init>(Lcom/android/settings/widget/a;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/a;Lcom/android/settings/widget/a;)V

    .line 93
    new-instance v0, Lcom/android/settings/widget/b;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/b;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 578
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 579
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 580
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 581
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 582
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 584
    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 585
    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->wb()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartSweepView;Z)V

    return-void
.end method

.method private a(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0xa

    const-wide/16 v2, 0x0

    .line 204
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awM:J

    .line 207
    if-eqz p1, :cond_6

    .line 208
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->wv()I

    move-result v4

    .line 209
    if-lez v4, :cond_5

    .line 211
    const-wide/16 v4, 0xb

    mul-long/2addr v0, v4

    div-long/2addr v0, v10

    .line 221
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v6}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 222
    iget-object v6, p0, Lcom/android/settings/widget/ChartDataUsageView;->gU:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v6}, Lcom/android/settings/widget/ChartNetworkSeriesView;->wk()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/settings/widget/ChartDataUsageView;->awG:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v8}, Lcom/android/settings/widget/ChartNetworkSeriesView;->wk()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 223
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0xc

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    .line 224
    const-wide/32 v6, 0x3200000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 225
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 228
    iget-wide v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->awM:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_4

    .line 229
    iput-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awM:J

    .line 231
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->awX:Lcom/android/settings/widget/a;

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/android/settings/widget/a;->c(JJ)Z

    move-result v4

    .line 232
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->f(JJ)V

    .line 233
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->f(JJ)V

    .line 235
    if-eqz v4, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->gU:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->wh()V

    .line 237
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awG:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->wh()V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awF:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    .line 243
    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->wu()V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    if-eq v0, p1, :cond_3

    .line 251
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->h(Lcom/android/settings/widget/ChartSweepView;)V

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    if-eq v0, p1, :cond_4

    .line 254
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->h(Lcom/android/settings/widget/ChartSweepView;)V

    .line 257
    :cond_4
    return-void

    .line 212
    :cond_5
    if-gez v4, :cond_0

    .line 214
    const-wide/16 v4, 0x9

    mul-long/2addr v0, v4

    div-long/2addr v0, v10

    goto :goto_0

    :cond_6
    move-wide v0, v2

    goto :goto_0
.end method

.method private a(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 4

    .prologue
    const/16 v2, 0x64

    .line 283
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 287
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic b(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/widget/ChartDataUsageView;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->b(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method private b(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method static synthetic c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/e;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awN:Lcom/android/settings/widget/e;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    return-object v0
.end method

.method private static u(J)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 590
    sub-long v0, p0, v4

    .line 593
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 594
    const/4 v2, 0x2

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 595
    const/4 v2, 0x4

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 596
    const/16 v2, 0x8

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 597
    const/16 v2, 0x10

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 598
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 600
    add-long/2addr v0, v4

    .line 602
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method static synthetic v(J)J
    .locals 2

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->u(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private wb()V
    .locals 8

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 264
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->gU:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->wj()J

    move-result-wide v4

    .line 268
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 274
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 278
    :goto_1
    const-wide/16 v2, 0x7

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 279
    :goto_2
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->gU:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->bs(Z)V

    .line 280
    return-void

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 271
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    goto :goto_0

    .line 278
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    move-wide v2, v0

    goto :goto_0
.end method

.method private wg()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awG:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->gU:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->br(Z)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->gU:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->br(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/NetworkStatsHistory;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->gU:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 148
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awH:Landroid/net/NetworkStatsHistory;

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartSweepView;)V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->wb()V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->wg()V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 153
    return-void
.end method

.method public a(Lcom/android/settings/widget/e;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awN:Lcom/android/settings/widget/e;

    .line 144
    return-void
.end method

.method public b(Landroid/net/NetworkStatsHistory;)V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awG:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awG:Lcom/android/settings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awH:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awG:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awH:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->w(J)V

    .line 161
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartSweepView;)V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->wb()V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->wg()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 165
    return-void

    .line 157
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c(Landroid/net/NetworkPolicy;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const-wide/16 v4, -0x1

    .line 168
    if-nez p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 197
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 186
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 194
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartSweepView;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_2
.end method

.method public d(JJ)V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awW:Lcom/android/settings/widget/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/a;->c(JJ)Z

    move-result v0

    .line 361
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awF:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartGridView;->e(JJ)V

    .line 362
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->gU:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->e(JJ)V

    .line 363
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awG:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->e(JJ)V

    .line 365
    iput-wide p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awK:J

    .line 366
    iput-wide p3, p0, Lcom/android/settings/widget/ChartDataUsageView;->awL:J

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 369
    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->gU:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->wh()V

    .line 371
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awG:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->wh()V

    .line 374
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartSweepView;)V

    .line 375
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->wb()V

    .line 376
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->wg()V

    .line 377
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x500000

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-super {p0}, Lcom/android/settings/widget/i;->onFinishInflate()V

    .line 110
    const v0, 0x7f1300a1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awF:Lcom/android/settings/widget/ChartGridView;

    .line 111
    const v0, 0x7f1300a2

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->gU:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 112
    const v0, 0x7f1300a3

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awG:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 113
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awG:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 115
    const v0, 0x7f1300a5

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    .line 116
    const v0, 0x7f1300a4

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    .line 119
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a([Lcom/android/settings/widget/ChartSweepView;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a([Lcom/android/settings/widget/ChartSweepView;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awO:Lcom/android/settings/widget/h;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/h;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awO:Lcom/android/settings/widget/h;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/h;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/android/settings/widget/ChartSweepView;->x(J)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/android/settings/widget/ChartSweepView;->x(J)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awF:Lcom/android/settings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awW:Lcom/android/settings/widget/a;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->awX:Lcom/android/settings/widget/a;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartGridView;->a(Lcom/android/settings/widget/a;Lcom/android/settings/widget/a;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->gU:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awW:Lcom/android/settings/widget/a;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->awX:Lcom/android/settings/widget/a;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Lcom/android/settings/widget/a;Lcom/android/settings/widget/a;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awG:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awW:Lcom/android/settings/widget/a;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->awX:Lcom/android/settings/widget/a;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Lcom/android/settings/widget/a;Lcom/android/settings/widget/a;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awX:Lcom/android/settings/widget/a;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/a;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->awX:Lcom/android/settings/widget/a;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/a;)V

    .line 139
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    :goto_0
    return v0

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 326
    goto :goto_0

    .line 329
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 330
    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public wc()J
    .locals 2

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awK:J

    return-wide v0
.end method

.method public wd()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awL:J

    return-wide v0
.end method

.method public we()J
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awI:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->ws()J

    move-result-wide v0

    return-wide v0
.end method

.method public wf()J
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->awJ:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->ws()J

    move-result-wide v0

    return-wide v0
.end method
