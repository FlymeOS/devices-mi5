.class public final Lmiui/log/LogSwitchesConfigWriter;
.super Ljava/lang/Object;
.source "LogSwitchesConfigWriter.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "LogSwitchesConfigWriter"


# instance fields
.field private final logSwitchesFileName:Ljava/lang/String;

.field private final logSwitchesFilePath:Ljava/lang/String;

.field private final logSwitchesFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "logSwitchesFolder"    # Ljava/lang/String;
    .param p2, "logSwitchesFileName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFolder:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFileName:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized write(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "newLogSwitchesConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    monitor-enter p0

    const/4 v3, 0x0

    .line 33
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    iget-object v5, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFolder:Ljava/lang/String;

    iget-object v6, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    invoke-static {v5, v6}, Lmiui/log/Utils;->createLogSwitchesFileIfNotExisted(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .local v4, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    .line 36
    .local v0, "appLogSwitches":Lmiui/log/AppLogSwitches;
    invoke-virtual {v0}, Lmiui/log/AppLogSwitches;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 40
    .end local v0    # "appLogSwitches":Lmiui/log/AppLogSwitches;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 41
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .local v1, "ex":Ljava/io/IOException;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    :try_start_2
    const-string v5, "LogSwitchesConfigWriter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to write "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    if-eqz v3, :cond_0

    .line 45
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    .line 39
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 43
    if-eqz v4, :cond_3

    .line 45
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v3, v4

    .line 47
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 46
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v5

    move-object v3, v4

    .line 47
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 43
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_2

    .line 45
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 47
    :cond_2
    :goto_4
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 31
    :catchall_1
    move-exception v5

    :goto_5
    monitor-exit p0

    throw v5

    .line 46
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 43
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 40
    :catch_4
    move-exception v1

    goto :goto_1

    .line 31
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_5

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :cond_3
    move-object v3, v4

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2
.end method
