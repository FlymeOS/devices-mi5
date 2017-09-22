.class public Lcom/android/vendorsettings/sound/x;
.super Ljava/lang/Object;
.source "FolderCache.java"


# instance fields
.field private aqI:Lcom/android/vendorsettings/sound/DataCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/vendorsettings/sound/DataCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/sound/DataCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/vendorsettings/sound/x;->aqI:Lcom/android/vendorsettings/sound/DataCache;

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/android/vendorsettings/sound/z;)Lcom/android/vendorsettings/sound/y;
    .locals 4

    .prologue
    .line 117
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/sound/x;->ur()Lcom/android/vendorsettings/sound/y;

    move-result-object v0

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/vendorsettings/sound/y;->name:Ljava/lang/String;

    .line 123
    iput-object p1, v0, Lcom/android/vendorsettings/sound/y;->path:Ljava/lang/String;

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/vendorsettings/sound/y;->aqv:J

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/vendorsettings/sound/y;->length:J

    goto :goto_0
.end method

.method protected a(Lcom/android/vendorsettings/sound/z;)Z
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 62
    if-eqz p1, :cond_8

    .line 63
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/android/vendorsettings/sound/z;->path:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 66
    if-nez v6, :cond_2

    move v0, v1

    .line 67
    :goto_0
    iget-wide v8, p1, Lcom/android/vendorsettings/sound/z;->aqv:J

    cmp-long v2, v8, v4

    if-nez v2, :cond_0

    iget v2, p1, Lcom/android/vendorsettings/sound/z;->aqJ:I

    if-eq v2, v0, :cond_3

    :cond_0
    move v1, v3

    .line 89
    :cond_1
    :goto_1
    return v1

    .line 66
    :cond_2
    array-length v0, v6

    goto :goto_0

    .line 69
    :cond_3
    if-eqz v6, :cond_8

    move v2, v1

    .line 70
    :goto_2
    array-length v0, v6

    if-ge v2, v0, :cond_1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/vendorsettings/sound/z;->path:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v6, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 77
    :cond_5
    iget-object v0, p1, Lcom/android/vendorsettings/sound/z;->aqK:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/y;

    .line 78
    if-nez v0, :cond_6

    move v1, v3

    .line 79
    goto :goto_1

    .line 81
    :cond_6
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    iget-wide v8, v0, Lcom/android/vendorsettings/sound/y;->aqv:J

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-nez v4, :cond_7

    iget-wide v8, v0, Lcom/android/vendorsettings/sound/y;->length:J

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v8, v4

    if-eqz v0, :cond_4

    :cond_7
    move v1, v3

    .line 83
    goto :goto_1

    :cond_8
    move v1, v3

    .line 89
    goto :goto_1
.end method

.method public bK(Ljava/lang/String;)Lcom/android/vendorsettings/sound/z;
    .locals 3

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/vendorsettings/sound/w;->bJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v0, p0, Lcom/android/vendorsettings/sound/x;->aqI:Lcom/android/vendorsettings/sound/DataCache;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/sound/DataCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/z;

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/sound/x;->a(Lcom/android/vendorsettings/sound/z;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/sound/x;->a(Lcom/android/vendorsettings/sound/z;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/sound/x;->bM(Ljava/lang/String;)Lcom/android/vendorsettings/sound/z;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    iget-object v2, p0, Lcom/android/vendorsettings/sound/x;->aqI:Lcom/android/vendorsettings/sound/DataCache;

    invoke-virtual {v2, v1, v0}, Lcom/android/vendorsettings/sound/DataCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    monitor-exit p0

    .line 52
    :cond_1
    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bL(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 56
    invoke-static {p1}, Lcom/android/vendorsettings/sound/w;->bJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/android/vendorsettings/sound/x;->aqI:Lcom/android/vendorsettings/sound/DataCache;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/sound/DataCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/z;

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/sound/x;->a(Lcom/android/vendorsettings/sound/z;)Z

    move-result v0

    return v0
.end method

.method protected bM(Ljava/lang/String;)Lcom/android/vendorsettings/sound/z;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 93
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/android/vendorsettings/sound/x;->uq()Lcom/android/vendorsettings/sound/z;

    move-result-object v2

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/vendorsettings/sound/z;->name:Ljava/lang/String;

    .line 98
    iput-object p1, v2, Lcom/android/vendorsettings/sound/z;->path:Ljava/lang/String;

    .line 99
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/vendorsettings/sound/z;->aqv:J

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 101
    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    iput v0, v2, Lcom/android/vendorsettings/sound/z;->aqJ:I

    .line 102
    new-instance v0, Ljava/util/HashMap;

    iget v4, v2, Lcom/android/vendorsettings/sound/z;->aqJ:I

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, v2, Lcom/android/vendorsettings/sound/z;->aqK:Ljava/util/Map;

    .line 103
    if-eqz v3, :cond_2

    .line 104
    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0, v2}, Lcom/android/vendorsettings/sound/x;->a(Ljava/lang/String;Lcom/android/vendorsettings/sound/z;)Lcom/android/vendorsettings/sound/y;

    move-result-object v4

    .line 107
    if-eqz v4, :cond_0

    .line 108
    iget-object v5, v2, Lcom/android/vendorsettings/sound/z;->aqK:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_1
    array-length v0, v3

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 113
    :cond_3
    return-object v0
.end method

.method protected uq()Lcom/android/vendorsettings/sound/z;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/android/vendorsettings/sound/z;

    invoke-direct {v0}, Lcom/android/vendorsettings/sound/z;-><init>()V

    return-object v0
.end method

.method protected ur()Lcom/android/vendorsettings/sound/y;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/android/vendorsettings/sound/y;

    invoke-direct {v0}, Lcom/android/vendorsettings/sound/y;-><init>()V

    return-object v0
.end method
