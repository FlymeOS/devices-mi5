.class public Lcom/android/vendorsettings/d/b;
.super Landroid/content/AsyncTaskLoader;
.source "ChartDataLoader.java"


# instance fields
.field private final ahR:Landroid/net/INetworkStatsSession;

.field private final mArgs:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p2, p0, Lcom/android/vendorsettings/d/b;->ahR:Landroid/net/INetworkStatsSession;

    .line 62
    iput-object p3, p0, Lcom/android/vendorsettings/d/b;->mArgs:Landroid/os/Bundle;

    .line 63
    return-void
.end method

.method private a(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    .locals 6

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/vendorsettings/d/b;->ahR:Landroid/net/INetworkStatsSession;

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 138
    if-eqz p4, :cond_0

    .line 139
    invoke-virtual {p4, v0}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 142
    :goto_0
    return-object p4

    :cond_0
    move-object p4, v0

    goto :goto_0
.end method

.method public static a(Landroid/net/NetworkTemplate;Lcom/android/vendorsettings/DataUsageSummary$AppItem;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/android/vendorsettings/d/b;->a(Landroid/net/NetworkTemplate;Lcom/android/vendorsettings/DataUsageSummary$AppItem;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/NetworkTemplate;Lcom/android/vendorsettings/DataUsageSummary$AppItem;I)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    const-string v1, "fields"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    return-object v0
.end method

.method private b(Landroid/net/NetworkTemplate;Lcom/android/vendorsettings/DataUsageSummary$AppItem;I)Lcom/android/vendorsettings/d/a;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const-wide/32 v8, 0x36ee80

    .line 88
    new-instance v2, Lcom/android/vendorsettings/d/a;

    invoke-direct {v2}, Lcom/android/vendorsettings/d/a;-><init>()V

    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/d/b;->ahR:Landroid/net/INetworkStatsSession;

    invoke-interface {v0, p1, p3}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, v2, Lcom/android/vendorsettings/d/a;->ahN:Landroid/net/NetworkStatsHistory;

    .line 91
    if-eqz p2, :cond_1

    .line 93
    iget-object v0, p2, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->ik:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v0, v1

    .line 94
    :goto_0
    if-ge v0, v3, :cond_0

    .line 95
    iget-object v4, p2, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->ik:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 96
    iget-object v5, v2, Lcom/android/vendorsettings/d/a;->ahP:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v4, v1, v5}, Lcom/android/vendorsettings/d/b;->a(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v2, Lcom/android/vendorsettings/d/a;->ahP:Landroid/net/NetworkStatsHistory;

    .line 98
    const/4 v5, 0x1

    iget-object v6, v2, Lcom/android/vendorsettings/d/a;->ahQ:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/android/vendorsettings/d/b;->a(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    iput-object v4, v2, Lcom/android/vendorsettings/d/a;->ahQ:Landroid/net/NetworkStatsHistory;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    if-lez v3, :cond_2

    .line 103
    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-object v1, v2, Lcom/android/vendorsettings/d/a;->ahQ:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v0, v2, Lcom/android/vendorsettings/d/a;->ahO:Landroid/net/NetworkStatsHistory;

    .line 104
    iget-object v0, v2, Lcom/android/vendorsettings/d/a;->ahO:Landroid/net/NetworkStatsHistory;

    iget-object v1, v2, Lcom/android/vendorsettings/d/a;->ahP:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 105
    iget-object v0, v2, Lcom/android/vendorsettings/d/a;->ahO:Landroid/net/NetworkStatsHistory;

    iget-object v1, v2, Lcom/android/vendorsettings/d/a;->ahQ:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 113
    :cond_1
    :goto_1
    return-object v2

    .line 107
    :cond_2
    new-instance v0, Landroid/net/NetworkStatsHistory;

    invoke-direct {v0, v8, v9}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v0, v2, Lcom/android/vendorsettings/d/a;->ahP:Landroid/net/NetworkStatsHistory;

    .line 108
    new-instance v0, Landroid/net/NetworkStatsHistory;

    invoke-direct {v0, v8, v9}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v0, v2, Lcom/android/vendorsettings/d/a;->ahQ:Landroid/net/NetworkStatsHistory;

    .line 109
    new-instance v0, Landroid/net/NetworkStatsHistory;

    invoke-direct {v0, v8, v9}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v0, v2, Lcom/android/vendorsettings/d/a;->ahO:Landroid/net/NetworkStatsHistory;

    goto :goto_1
.end method


# virtual methods
.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/vendorsettings/d/b;->rQ()Lcom/android/vendorsettings/d/a;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 125
    invoke-virtual {p0}, Lcom/android/vendorsettings/d/b;->cancelLoad()Z

    .line 126
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 68
    invoke-virtual {p0}, Lcom/android/vendorsettings/d/b;->forceLoad()V

    .line 69
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 119
    invoke-virtual {p0}, Lcom/android/vendorsettings/d/b;->cancelLoad()Z

    .line 120
    return-void
.end method

.method public rQ()Lcom/android/vendorsettings/d/a;
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/d/b;->mArgs:Landroid/os/Bundle;

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 74
    iget-object v1, p0, Lcom/android/vendorsettings/d/b;->mArgs:Landroid/os/Bundle;

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    .line 75
    iget-object v2, p0, Lcom/android/vendorsettings/d/b;->mArgs:Landroid/os/Bundle;

    const-string v3, "fields"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 78
    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/d/b;->b(Landroid/net/NetworkTemplate;Lcom/android/vendorsettings/DataUsageSummary$AppItem;I)Lcom/android/vendorsettings/d/a;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "problem reading network stats"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
