.class public Lcom/android/vendorsettings/widget/f;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/vendorsettings/widget/a;


# static fields
.field private static final awV:I


# instance fields
.field private awQ:J

.field private awR:J

.field private awS:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 389
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/vendorsettings/widget/f;->awV:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 397
    const-wide v2, 0x9a7ec800L

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/vendorsettings/widget/f;->c(JJ)Z

    .line 398
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 3

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 440
    return-wide p3
.end method

.method public c(JJ)Z
    .locals 3

    .prologue
    .line 407
    iget-wide v0, p0, Lcom/android/vendorsettings/widget/f;->awQ:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/vendorsettings/widget/f;->awR:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    iput-wide p1, p0, Lcom/android/vendorsettings/widget/f;->awQ:J

    .line 409
    iput-wide p3, p0, Lcom/android/vendorsettings/widget/f;->awR:J

    .line 410
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(F)Z
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/android/vendorsettings/widget/f;->awS:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 419
    iput p1, p0, Lcom/android/vendorsettings/widget/f;->awS:F

    .line 420
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(F)J
    .locals 6

    .prologue
    .line 433
    iget-wide v0, p0, Lcom/android/vendorsettings/widget/f;->awQ:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/android/vendorsettings/widget/f;->awR:J

    iget-wide v4, p0, Lcom/android/vendorsettings/widget/f;->awQ:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/vendorsettings/widget/f;->awS:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 402
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/vendorsettings/widget/f;->awQ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/vendorsettings/widget/f;->awR:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/vendorsettings/widget/f;->awS:F

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
    .line 428
    iget v0, p0, Lcom/android/vendorsettings/widget/f;->awS:F

    iget-wide v2, p0, Lcom/android/vendorsettings/widget/f;->awQ:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/android/vendorsettings/widget/f;->awR:J

    iget-wide v4, p0, Lcom/android/vendorsettings/widget/f;->awQ:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public t(J)I
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public wa()[F
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 445
    const/16 v0, 0x20

    new-array v4, v0, [F

    .line 449
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 450
    iget-wide v0, p0, Lcom/android/vendorsettings/widget/f;->awR:J

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 451
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    iget v1, v5, Landroid/text/format/Time;->weekDay:I

    sget v3, Lcom/android/vendorsettings/widget/f;->awV:I

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 452
    iput v2, v5, Landroid/text/format/Time;->second:I

    iput v2, v5, Landroid/text/format/Time;->minute:I

    iput v2, v5, Landroid/text/format/Time;->hour:I

    .line 454
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 455
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 456
    :goto_0
    iget-wide v6, p0, Lcom/android/vendorsettings/widget/f;->awQ:J

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    .line 457
    iget-wide v6, p0, Lcom/android/vendorsettings/widget/f;->awR:J

    cmp-long v3, v0, v6

    if-gtz v3, :cond_0

    .line 458
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/widget/f;->s(J)F

    move-result v0

    aput v0, v4, v2

    move v2, v3

    .line 460
    :cond_0
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, -0x7

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 461
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 462
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    goto :goto_0

    .line 465
    :cond_1
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method
