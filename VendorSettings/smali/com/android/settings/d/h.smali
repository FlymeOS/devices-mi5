.class public Lcom/android/settings/d/h;
.super Landroid/content/AsyncTaskLoader;
.source "SummaryForAllUidLoader.java"


# instance fields
.field private final ahR:Landroid/net/INetworkStatsSession;

.field private final mArgs:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/d/h;->ahR:Landroid/net/INetworkStatsSession;

    .line 46
    iput-object p3, p0, Lcom/android/settings/d/h;->mArgs:Landroid/os/Bundle;

    .line 47
    return-void
.end method

.method public static a(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    const-string v1, "start"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    const-string v1, "end"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/settings/d/h;->rS()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/d/h;->cancelLoad()Z

    .line 78
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/d/h;->forceLoad()V

    .line 53
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/d/h;->cancelLoad()Z

    .line 72
    return-void
.end method

.method public rS()Landroid/net/NetworkStats;
    .locals 7

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/d/h;->mArgs:Landroid/os/Bundle;

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 58
    iget-object v0, p0, Lcom/android/settings/d/h;->mArgs:Landroid/os/Bundle;

    const-string v2, "start"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 59
    iget-object v0, p0, Lcom/android/settings/d/h;->mArgs:Landroid/os/Bundle;

    const-string v4, "end"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/d/h;->ahR:Landroid/net/INetworkStatsSession;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method
