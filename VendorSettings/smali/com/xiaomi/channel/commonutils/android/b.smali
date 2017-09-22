.class public Lcom/xiaomi/channel/commonutils/android/b;
.super Ljava/lang/Object;
.source "MIUIUtils.java"


# static fields
.field private static aXr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/channel/commonutils/android/b;->aXr:I

    return-void
.end method

.method public static declared-synchronized Fg()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 34
    const-class v1, Lcom/xiaomi/channel/commonutils/android/b;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/b;->Fi()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized Fh()Z
    .locals 3

    .prologue
    .line 42
    const-class v1, Lcom/xiaomi/channel/commonutils/android/b;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/b;->Fi()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized Fi()I
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    const-class v4, Lcom/xiaomi/channel/commonutils/android/b;

    monitor-enter v4

    :try_start_0
    sget v1, Lcom/xiaomi/channel/commonutils/android/b;->aXr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 49
    :try_start_1
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 50
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v7, "build.prop"

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 53
    const-string v2, "ro.miui.ui.version.code"

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "ro.miui.ui.version.name"

    const/4 v6, 0x0

    .line 54
    invoke-virtual {v5, v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v0

    .line 55
    :goto_0
    if-eqz v2, :cond_3

    :goto_1
    sput v0, Lcom/xiaomi/channel/commonutils/android/b;->aXr:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 61
    :try_start_3
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/a/a;->closeQuietly(Ljava/io/InputStream;)V

    .line 63
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMIUI\'s value is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaomi/channel/commonutils/android/b;->aXr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->cM(Ljava/lang/String;)V

    .line 65
    :cond_1
    sget v0, Lcom/xiaomi/channel/commonutils/android/b;->aXr:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return v0

    :cond_2
    move v2, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 58
    :goto_3
    :try_start_4
    const-string v2, "get isMIUI failed"

    invoke-static {v2, v0}, Lcom/xiaomi/channel/commonutils/b/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/channel/commonutils/android/b;->aXr:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    :try_start_5
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/a/a;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 61
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_6
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/a/a;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 56
    :catch_1
    move-exception v0

    goto :goto_3
.end method
