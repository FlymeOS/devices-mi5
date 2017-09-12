.class public final Lmiui/log/LogSwitchesConfigParser;
.super Ljava/lang/Object;
.source "LogSwitchesConfigParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogSwitchesConfigParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseLogSwitchesConfig(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .param p0, "configFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "configFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    :cond_0
    :goto_0
    return-object v1

    .line 36
    :cond_1
    const/4 v8, 0x0

    .line 38
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v7, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v1, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "line":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 50
    .restart local v6    # "line":Ljava/lang/String;
    invoke-static {v6}, Lmiui/log/AppLogSwitches;->parseAppLogSwitches(Ljava/lang/String;)Lmiui/log/AppLogSwitches;

    move-result-object v0

    .line 51
    .local v0, "appConfig":Lmiui/log/AppLogSwitches;
    if-eqz v0, :cond_2

    .line 52
    iget-object v10, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/log/AppLogSwitches;

    .line 53
    .local v4, "existing":Lmiui/log/AppLogSwitches;
    if-eqz v4, :cond_4

    .line 54
    invoke-virtual {v4, v0}, Lmiui/log/AppLogSwitches;->merge(Lmiui/log/AppLogSwitches;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 61
    .end local v0    # "appConfig":Lmiui/log/AppLogSwitches;
    .end local v1    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .end local v4    # "existing":Lmiui/log/AppLogSwitches;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v8, v9

    .line 62
    .end local v7    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v3, "ex":Ljava/io/FileNotFoundException;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string v10, "LogSwitchesConfigParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    if-eqz v8, :cond_0

    .line 70
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 71
    :catch_1
    move-exception v10

    goto :goto_0

    .line 45
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    const-string v10, "\r"

    const-string v11, ""

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\n"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 64
    .end local v6    # "line":Ljava/lang/String;
    :catch_2
    move-exception v3

    move-object v8, v9

    .line 65
    .end local v7    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v3, "ex":Ljava/io/IOException;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_5
    const-string v10, "LogSwitchesConfigParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    if-eqz v8, :cond_0

    .line 70
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 71
    :catch_3
    move-exception v10

    goto/16 :goto_0

    .line 56
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "appConfig":Lmiui/log/AppLogSwitches;
    .restart local v1    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .restart local v4    # "existing":Lmiui/log/AppLogSwitches;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_7
    iget-object v10, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 68
    .end local v0    # "appConfig":Lmiui/log/AppLogSwitches;
    .end local v1    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .end local v4    # "existing":Lmiui/log/AppLogSwitches;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v10

    move-object v8, v9

    .end local v7    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :goto_5
    if-eqz v8, :cond_5

    .line 70
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 72
    :cond_5
    :goto_6
    throw v10

    .line 68
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_6
    if-eqz v9, :cond_0

    .line 70
    :try_start_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 71
    :catch_4
    move-exception v10

    goto/16 :goto_0

    .end local v1    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v11

    goto :goto_6

    .line 68
    :catchall_1
    move-exception v10

    goto :goto_5

    .line 64
    :catch_6
    move-exception v3

    goto :goto_4

    .line 61
    :catch_7
    move-exception v3

    goto/16 :goto_3
.end method
