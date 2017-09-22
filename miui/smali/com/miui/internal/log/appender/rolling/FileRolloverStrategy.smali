.class public Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/log/appender/rolling/RolloverStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "FileRolloverStrategy"


# instance fields
.field private gy:I

.field private gz:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->gy:I

    .line 16
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->gz:J

    return-void
.end method


# virtual methods
.method public getMaxBackupIndex()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->gy:I

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->gz:J

    return-wide v0
.end method

.method public rollover(Lcom/miui/internal/log/appender/rolling/RollingFileManager;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->getLogSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->gz:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->getLogFile()Ljava/io/File;

    move-result-object v1

    .line 47
    const-string v0, "FileRolloverStrategy"

    const-string v2, "Start to rollover"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    iget v0, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->gy:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lez v0, :cond_2

    .line 50
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 49
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 56
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 58
    const-string v0, "FileRolloverStrategy"

    const-string v2, "Rollover done"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public setMaxBackupIndex(I)V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be less than 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput p1, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->gy:I

    .line 23
    return-void
.end method

.method public setMaxFileSize(I)V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size can\'t be less than 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->gz:J

    .line 34
    return-void
.end method
