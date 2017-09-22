.class final Lcom/android/vendorsettings/applications/ProcessStatsDetail$3;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;)I
    .locals 4

    .prologue
    .line 303
    iget-wide v0, p1, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;->mDuration:J

    iget-wide v2, p2, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;->mDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 304
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    .line 305
    :cond_0
    iget-wide v0, p1, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;->mDuration:J

    iget-wide v2, p2, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 306
    const/4 v0, -0x1

    goto :goto_0

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 300
    check-cast p1, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;

    check-cast p2, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/applications/ProcessStatsDetail$3;->a(Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;)I

    move-result v0

    return v0
.end method
