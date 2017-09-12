.class final Lmiui/log/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiLogUtils"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createConfigFolder(Ljava/io/File;)V
    .locals 7
    .param p0, "configFolder"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v1, "absentFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    move-object v2, p0

    .line 43
    .local v2, "folder":Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 48
    .local v0, "absentFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 49
    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 50
    invoke-virtual {v0, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 51
    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_1

    .line 53
    .end local v0    # "absentFolder":Ljava/io/File;
    :cond_1
    return-void
.end method

.method static createLogSwitchesFileIfNotExisted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "logSwitchesFolder"    # Ljava/lang/String;
    .param p1, "logSwitchesFilePath"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .local v1, "configFolder":Ljava/io/File;
    const/4 v3, 0x0

    .line 18
    .local v3, "newCreated":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 19
    const/4 v3, 0x1

    .line 24
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 25
    invoke-static {v1}, Lmiui/log/Utils;->createConfigFolder(Ljava/io/File;)V

    .line 27
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 30
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 31
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 32
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 33
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/io/File;->setExecutable(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_2
    :goto_1
    return-void

    .line 20
    .end local v0    # "configFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 22
    const/4 v3, 0x1

    goto :goto_0

    .line 34
    .restart local v0    # "configFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 35
    .local v2, "ex":Ljava/io/IOException;
    const-string v4, "MiuiLogUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to create file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
