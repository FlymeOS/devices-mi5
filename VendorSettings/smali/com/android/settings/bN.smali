.class public Lcom/android/vendorsettings/bN;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public end:J

.field public label:Ljava/lang/CharSequence;

.field public start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 2

    .prologue
    .line 1572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1573
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bN;->label:Ljava/lang/CharSequence;

    .line 1574
    iput-wide p2, p0, Lcom/android/vendorsettings/bN;->start:J

    .line 1575
    iput-wide p4, p0, Lcom/android/vendorsettings/bN;->end:J

    .line 1576
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1569
    iput-object p1, p0, Lcom/android/vendorsettings/bN;->label:Ljava/lang/CharSequence;

    .line 1570
    return-void
.end method


# virtual methods
.method public b(Lcom/android/vendorsettings/bN;)I
    .locals 4

    .prologue
    .line 1594
    iget-wide v0, p0, Lcom/android/vendorsettings/bN;->start:J

    iget-wide v2, p1, Lcom/android/vendorsettings/bN;->start:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1563
    check-cast p1, Lcom/android/vendorsettings/bN;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/bN;->b(Lcom/android/vendorsettings/bN;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1585
    instance-of v1, p1, Lcom/android/vendorsettings/bN;

    if-eqz v1, :cond_0

    .line 1586
    check-cast p1, Lcom/android/vendorsettings/bN;

    .line 1587
    iget-wide v2, p0, Lcom/android/vendorsettings/bN;->start:J

    iget-wide v4, p1, Lcom/android/vendorsettings/bN;->start:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/vendorsettings/bN;->end:J

    iget-wide v4, p1, Lcom/android/vendorsettings/bN;->end:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1589
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/vendorsettings/bN;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
