.class final Lcom/android/settings/applications/ProcessStatsDetail$2;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/ProcStatsEntry;Lcom/android/settings/applications/ProcStatsEntry;)I
    .locals 4

    .prologue
    .line 230
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->LB:D

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry;->LB:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    .line 232
    :cond_0
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->LB:D

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry;->LB:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 233
    const/4 v0, -0x1

    goto :goto_0

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 227
    check-cast p1, Lcom/android/settings/applications/ProcStatsEntry;

    check-cast p2, Lcom/android/settings/applications/ProcStatsEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail$2;->a(Lcom/android/settings/applications/ProcStatsEntry;Lcom/android/settings/applications/ProcStatsEntry;)I

    move-result v0

    return v0
.end method
