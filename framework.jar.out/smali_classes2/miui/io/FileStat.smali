.class public Lmiui/io/FileStat;
.super Ljava/lang/Object;
.source "FileStat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCreatedTime(Ljava/lang/String;)J
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 20
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v2, v1, Landroid/system/StructStat;->st_ctime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 22
    :goto_0
    return-wide v2

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
