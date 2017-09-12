.class public Lmiui/securitycenter/net/MiuiNetworkSessionStats;
.super Ljava/lang/Object;
.source "MiuiNetworkSessionStats.java"


# instance fields
.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    .line 27
    return-void
.end method

.method private buildStatsMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v0, "statsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v1, "isBackground"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v1, "rxForegroundBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "txForegroundBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "rxBackgroundBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "txBackgroundBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "txBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "rxBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-object v0
.end method

.method private buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_0
.end method

.method private buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryStats(Landroid/net/NetworkStatsHistory;JJ)[J
    .locals 8
    .param p1, "networkHistory"    # Landroid/net/NetworkStatsHistory;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 117
    const/4 v1, 0x2

    new-array v7, v1, [J

    .line 118
    .local v7, "total":[J
    new-instance v6, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v6}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    .line 119
    .local v6, "statsEntry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz p1, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 120
    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 121
    .local v0, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 122
    const/4 v1, 0x0

    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    aput-wide v2, v7, v1

    .line 127
    :goto_0
    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 128
    const/4 v1, 0x1

    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    aput-wide v2, v7, v1

    .line 133
    .end local v0    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    :goto_1
    return-object v7

    .line 124
    .restart local v0    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v1

    goto :goto_0

    .line 130
    :cond_2
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v1

    goto :goto_1
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 6
    .param p1, "networkTemplate"    # Landroid/net/NetworkTemplate;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeSession()V
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v1}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 43
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public forceUpdate()V
    .locals 2

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMobileHistoryForUid(Ljava/lang/String;IJJ)[J
    .locals 11
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v9, v0, [J

    .line 76
    .local v9, "total":[J
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 77
    .local v1, "wifiTemplate":Landroid/net/NetworkTemplate;
    if-nez v1, :cond_0

    move-object v10, v9

    .line 87
    .end local v1    # "wifiTemplate":Landroid/net/NetworkTemplate;
    .end local v9    # "total":[J
    .local v10, "total":[J
    :goto_0
    return-object v10

    .line 81
    .end local v10    # "total":[J
    .restart local v1    # "wifiTemplate":Landroid/net/NetworkTemplate;
    .restart local v9    # "total":[J
    :cond_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .local v3, "networkHistory":Landroid/net/NetworkStatsHistory;
    move-object v2, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    .line 83
    invoke-direct/range {v2 .. v7}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryStats(Landroid/net/NetworkStatsHistory;JJ)[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .end local v1    # "wifiTemplate":Landroid/net/NetworkTemplate;
    .end local v3    # "networkHistory":Landroid/net/NetworkStatsHistory;
    :goto_1
    move-object v10, v9

    .line 87
    .end local v9    # "total":[J
    .restart local v10    # "total":[J
    goto :goto_0

    .line 84
    .end local v10    # "total":[J
    .restart local v9    # "total":[J
    :catch_0
    move-exception v8

    .line 85
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;
    .locals 32
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v14, Landroid/util/SparseArray;

    const/16 v2, 0xff

    invoke-direct {v14, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 139
    .local v14, "networkStatsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    new-instance v22, Landroid/net/NetworkStats$Entry;

    invoke-direct/range {v22 .. v22}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 140
    .local v22, "statsEntry":Landroid/net/NetworkStats$Entry;
    const/4 v13, 0x0

    .line 141
    .local v13, "networkStats":Landroid/net/NetworkStats;
    invoke-direct/range {p0 .. p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 143
    .local v3, "mobileTemplate":Landroid/net/NetworkTemplate;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    .line 144
    :cond_0
    const/4 v14, 0x0

    .line 192
    .end local v14    # "networkStatsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_1
    :goto_0
    return-object v14

    .line 146
    .restart local v14    # "networkStatsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    const/4 v8, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v8}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 151
    :goto_1
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/net/NetworkStats;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 152
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v9

    .line 148
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v10, 0x0

    .line 156
    .local v10, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v13}, Landroid/net/NetworkStats;->size()I

    move-result v15

    .line 157
    .local v15, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v15, :cond_1

    .line 158
    move-object/from16 v0, v22

    invoke-virtual {v13, v11, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v10

    .line 159
    if-nez v10, :cond_5

    .line 157
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 162
    :cond_5
    iget v0, v10, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v30, v0

    .line 163
    .local v30, "uid":I
    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    .line 164
    .local v23, "statsInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v23, :cond_6

    .line 165
    invoke-direct/range {p0 .. p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildStatsMap()Ljava/util/Map;

    move-result-object v23

    .line 166
    move/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    :cond_6
    iget v2, v10, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    const/4 v12, 0x1

    .line 170
    .local v12, "isBackground":Z
    :goto_4
    const-string v2, "isBackground"

    if-eqz v12, :cond_8

    const-wide/16 v4, 0x0

    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    if-eqz v12, :cond_9

    .line 172
    const-string v2, "txForegroundBytes"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v28, v4, v6

    .line 173
    .local v28, "txForegroundBytes":J
    const-string v2, "txForegroundBytes"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v2, "rxForegroundBytes"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long v20, v4, v6

    .line 176
    .local v20, "rxForegroundBytes":J
    const-string v2, "rxForegroundBytes"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v20    # "rxForegroundBytes":J
    .end local v28    # "txForegroundBytes":J
    :goto_6
    const-string v2, "txBytes"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v26, v4, v6

    .line 186
    .local v26, "txBytes":J
    const-string v2, "txBytes"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v2, "rxBytes"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long v18, v4, v6

    .line 189
    .local v18, "rxBytes":J
    const-string v2, "rxBytes"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 169
    .end local v12    # "isBackground":Z
    .end local v18    # "rxBytes":J
    .end local v26    # "txBytes":J
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 170
    .restart local v12    # "isBackground":Z
    :cond_8
    const-wide/16 v4, 0x1

    goto/16 :goto_5

    .line 178
    :cond_9
    const-string v2, "txBackgroundBytes"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v24, v4, v6

    .line 179
    .local v24, "txBackgroundBytes":J
    const-string v2, "txBackgroundBytes"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v2, "rxBackgroundBytes"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long v16, v4, v6

    .line 182
    .local v16, "rxBackgroundBytes":J
    const-string v2, "rxBackgroundBytes"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method public getNetworkMobileTotalBytes(Ljava/lang/String;JJ)J
    .locals 10
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 104
    const-wide/16 v8, 0x0

    .line 106
    .local v8, "total":J
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 107
    .local v1, "mobileTemplate":Landroid/net/NetworkTemplate;
    if-eqz v1, :cond_0

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 108
    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 113
    .end local v1    # "mobileTemplate":Landroid/net/NetworkTemplate;
    :cond_0
    :goto_0
    return-wide v8

    .line 110
    :catch_0
    move-exception v6

    .line 111
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNetworkWifiTotalBytes(JJ)J
    .locals 11
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 91
    const-wide/16 v8, 0x0

    .line 93
    .local v8, "total":J
    :try_start_0
    invoke-direct {p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 94
    .local v1, "wifiTemplate":Landroid/net/NetworkTemplate;
    if-eqz v1, :cond_0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 95
    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 100
    .end local v1    # "wifiTemplate":Landroid/net/NetworkTemplate;
    :cond_0
    :goto_0
    return-wide v8

    .line 97
    :catch_0
    move-exception v6

    .line 98
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getWifiHistoryForUid(IJJ)[J
    .locals 12
    .param p1, "uid"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v9, v0, [J

    .line 59
    .local v9, "total":[J
    :try_start_0
    invoke-direct {p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 60
    .local v1, "wifiTemplate":Landroid/net/NetworkTemplate;
    if-nez v1, :cond_0

    move-object v10, v9

    .line 70
    .end local v1    # "wifiTemplate":Landroid/net/NetworkTemplate;
    .end local v9    # "total":[J
    .local v10, "total":[J
    :goto_0
    return-object v10

    .line 64
    .end local v10    # "total":[J
    .restart local v1    # "wifiTemplate":Landroid/net/NetworkTemplate;
    .restart local v9    # "total":[J
    :cond_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .local v3, "networkHistory":Landroid/net/NetworkStatsHistory;
    move-object v2, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    .line 66
    invoke-direct/range {v2 .. v7}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryStats(Landroid/net/NetworkStatsHistory;JJ)[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .end local v1    # "wifiTemplate":Landroid/net/NetworkTemplate;
    .end local v3    # "networkHistory":Landroid/net/NetworkStatsHistory;
    :goto_1
    move-object v10, v9

    .line 70
    .end local v9    # "total":[J
    .restart local v10    # "total":[J
    goto :goto_0

    .line 67
    .end local v10    # "total":[J
    .restart local v9    # "total":[J
    :catch_0
    move-exception v8

    .line 68
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getWifiSummaryForAllUid(JJ)Landroid/util/SparseArray;
    .locals 31
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v14, Landroid/util/SparseArray;

    const/16 v2, 0xff

    invoke-direct {v14, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 198
    .local v14, "networkStatsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    new-instance v22, Landroid/net/NetworkStats$Entry;

    invoke-direct/range {v22 .. v22}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 199
    .local v22, "statsEntry":Landroid/net/NetworkStats$Entry;
    const/4 v13, 0x0

    .line 200
    .local v13, "networkStats":Landroid/net/NetworkStats;
    invoke-direct/range {p0 .. p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 202
    .local v3, "wifiTemplate":Landroid/net/NetworkTemplate;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    .line 203
    :cond_0
    const/4 v14, 0x0

    .line 252
    .end local v14    # "networkStatsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_1
    :goto_0
    return-object v14

    .line 205
    .restart local v14    # "networkStatsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    const/4 v8, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v8}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 210
    :goto_1
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/net/NetworkStats;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 211
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v9

    .line 207
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 214
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v10, 0x0

    .line 215
    .local v10, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v13}, Landroid/net/NetworkStats;->size()I

    move-result v15

    .line 216
    .local v15, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v15, :cond_1

    .line 217
    move-object/from16 v0, v22

    invoke-virtual {v13, v11, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v10

    .line 218
    if-nez v10, :cond_5

    .line 216
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 222
    :cond_5
    iget v0, v10, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v30, v0

    .line 223
    .local v30, "uid":I
    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    .line 224
    .local v23, "statsInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v23, :cond_6

    .line 225
    invoke-direct/range {p0 .. p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildStatsMap()Ljava/util/Map;

    move-result-object v23

    .line 226
    move/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    :cond_6
    iget v2, v10, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    const/4 v12, 0x1

    .line 230
    .local v12, "isBackground":Z
    :goto_4
    const-string v2, "isBackground"

    if-eqz v12, :cond_8

    const-wide/16 v4, 0x0

    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    if-eqz v12, :cond_9

    .line 232
    const-string v2, "txForegroundBytes"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v28, v4, v6

    .line 233
    .local v28, "txForegroundBytes":J
    const-string v2, "txForegroundBytes"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v2, "rxForegroundBytes"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long v20, v4, v6

    .line 236
    .local v20, "rxForegroundBytes":J
    const-string v2, "rxForegroundBytes"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v20    # "rxForegroundBytes":J
    .end local v28    # "txForegroundBytes":J
    :goto_6
    const-string v2, "txBytes"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v26, v4, v6

    .line 246
    .local v26, "txBytes":J
    const-string v2, "txBytes"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v2, "rxBytes"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long v18, v4, v6

    .line 249
    .local v18, "rxBytes":J
    const-string v2, "rxBytes"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 229
    .end local v12    # "isBackground":Z
    .end local v18    # "rxBytes":J
    .end local v26    # "txBytes":J
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 230
    .restart local v12    # "isBackground":Z
    :cond_8
    const-wide/16 v4, 0x1

    goto/16 :goto_5

    .line 238
    :cond_9
    const-string v2, "txBackgroundBytes"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v24, v4, v6

    .line 239
    .local v24, "txBackgroundBytes":J
    const-string v2, "txBackgroundBytes"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v2, "rxBackgroundBytes"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long v16, v4, v6

    .line 242
    .local v16, "rxBackgroundBytes":J
    const-string v2, "rxBackgroundBytes"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method public openSession()V
    .locals 2

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
