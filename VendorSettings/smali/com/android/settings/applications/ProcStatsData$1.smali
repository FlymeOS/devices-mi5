.class final Lcom/android/vendorsettings/applications/ProcStatsData$1;
.super Ljava/lang/Object;
.source "ProcStatsData.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/applications/ProcStatsEntry;Lcom/android/vendorsettings/applications/ProcStatsEntry;)I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 403
    iget-wide v2, p1, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    iget-wide v4, p2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-wide v2, p1, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    iget-wide v4, p2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    move v0, v1

    .line 406
    goto :goto_0

    .line 407
    :cond_2
    iget-wide v2, p1, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Ly:J

    iget-wide v4, p2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Ly:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 409
    iget-wide v2, p1, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Ly:J

    iget-wide v4, p2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Ly:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    .line 410
    goto :goto_0

    .line 412
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 400
    check-cast p1, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    check-cast p2, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/applications/ProcStatsData$1;->a(Lcom/android/vendorsettings/applications/ProcStatsEntry;Lcom/android/vendorsettings/applications/ProcStatsEntry;)I

    move-result v0

    return v0
.end method
