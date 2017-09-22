.class public Lcom/android/settings/widget/d;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/a;


# static fields
.field private static final awT:Ljava/lang/Object;

.field private static final awU:Ljava/lang/Object;


# instance fields
.field private awQ:J

.field private awR:J

.field private awS:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 533
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/d;->awT:Ljava/lang/Object;

    .line 534
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/d;->awU:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 5

    .prologue
    .line 538
    const/4 v0, 0x3

    invoke-static {p1, p3, p4, v0}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 540
    sget-object v1, Lcom/android/settings/widget/d;->awT:Ljava/lang/Object;

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const-string v3, "^1"

    invoke-static {p2, v1, v2, v3}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 541
    sget-object v1, Lcom/android/settings/widget/d;->awU:Ljava/lang/Object;

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const-string v3, "^2"

    invoke-static {p2, v1, v2, v3}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 542
    iget-wide v0, v0, Landroid/text/format/Formatter$BytesResult;->roundedBytes:J

    return-wide v0
.end method

.method public c(JJ)Z
    .locals 3

    .prologue
    .line 489
    iget-wide v0, p0, Lcom/android/settings/widget/d;->awQ:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/d;->awR:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/widget/d;->awQ:J

    .line 491
    iput-wide p3, p0, Lcom/android/settings/widget/d;->awR:J

    .line 492
    const/4 v0, 0x1

    .line 494
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(F)Z
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/android/settings/widget/d;->awS:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 501
    iput p1, p0, Lcom/android/settings/widget/d;->awS:F

    .line 502
    const/4 v0, 0x1

    .line 504
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(F)J
    .locals 6

    .prologue
    .line 529
    iget-wide v0, p0, Lcom/android/settings/widget/d;->awQ:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/android/settings/widget/d;->awR:J

    iget-wide v4, p0, Lcom/android/settings/widget/d;->awQ:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/widget/d;->awS:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 484
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/settings/widget/d;->awQ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/settings/widget/d;->awR:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings/widget/d;->awS:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public s(J)F
    .locals 7

    .prologue
    .line 517
    iget v0, p0, Lcom/android/settings/widget/d;->awS:F

    iget-wide v2, p0, Lcom/android/settings/widget/d;->awQ:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/android/settings/widget/d;->awR:J

    iget-wide v4, p0, Lcom/android/settings/widget/d;->awQ:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public t(J)I
    .locals 9

    .prologue
    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/d;->s(J)F

    move-result v0

    .line 565
    float-to-double v2, v0

    iget v1, p0, Lcom/android/settings/widget/d;->awS:F

    float-to-double v4, v1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 566
    const/4 v0, -0x1

    .line 570
    :goto_0
    return v0

    .line 567
    :cond_0
    float-to-double v0, v0

    iget v2, p0, Lcom/android/settings/widget/d;->awS:F

    float-to-double v2, v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 568
    const/4 v0, 0x1

    goto :goto_0

    .line 570
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wa()[F
    .locals 7

    .prologue
    .line 547
    iget-wide v0, p0, Lcom/android/settings/widget/d;->awR:J

    iget-wide v2, p0, Lcom/android/settings/widget/d;->awQ:J

    sub-long/2addr v0, v2

    .line 550
    const-wide/16 v2, 0x10

    div-long v2, v0, v2

    invoke-static {v2, v3}, Lcom/android/settings/widget/ChartDataUsageView;->v(J)J

    move-result-wide v4

    .line 551
    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 552
    new-array v1, v0, [F

    .line 553
    iget-wide v2, p0, Lcom/android/settings/widget/d;->awQ:J

    .line 554
    const/4 v0, 0x0

    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 555
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/widget/d;->s(J)F

    move-result v6

    aput v6, v1, v0

    .line 556
    add-long/2addr v2, v4

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :cond_0
    return-object v1
.end method
