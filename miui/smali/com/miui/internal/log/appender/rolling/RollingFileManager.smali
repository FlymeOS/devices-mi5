.class public Lcom/miui/internal/log/appender/rolling/RollingFileManager;
.super Lcom/miui/internal/log/appender/FileManager;
.source "SourceFile"


# instance fields
.field private gA:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;

.field private gB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/log/appender/FileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private I()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->mLogFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->gA:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->gA:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;

    invoke-interface {v0, p0}, Lcom/miui/internal/log/appender/rolling/RolloverStrategy;->rollover(Lcom/miui/internal/log/appender/rolling/RollingFileManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->gB:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->gB:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->close()V

    goto :goto_0
.end method


# virtual methods
.method public getRolloverStrategy()Lcom/miui/internal/log/appender/rolling/RolloverStrategy;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->gA:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;

    return-object v0
.end method

.method protected onBuildLogPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->gB:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 29
    invoke-super {p0}, Lcom/miui/internal/log/appender/FileManager;->onBuildLogPath()Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->gB:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized setRolloverStrategy(Lcom/miui/internal/log/appender/rolling/RolloverStrategy;)V
    .locals 1

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->gA:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->I()V

    .line 38
    invoke-super {p0, p1}, Lcom/miui/internal/log/appender/FileManager;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
