.class Lcom/xiaomi/miui/pushads/sdk/b;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/h;)I
    .locals 6

    .prologue
    .line 44
    const/4 v1, -0x1

    .line 45
    const/4 v0, 0x0

    .line 47
    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/b;->cX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    const/4 v1, 0x0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 61
    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p3, v2}, Lcom/xiaomi/miui/pushads/sdk/h;->df(Ljava/lang/String;)V

    .line 71
    :cond_1
    return v0

    .line 54
    :cond_2
    :try_start_2
    const-string v3, "\u4ecesever \u4e0b\u8f7d\u6587\u4ef6 debug \u6a21\u5f0f"

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    .line 55
    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/b;->cW(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 56
    :try_start_3
    invoke-static {p0, v2, v0}, Lcom/xiaomi/miui/pushads/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 58
    :catch_1
    move-exception v3

    .line 61
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    move v0, v1

    .line 64
    goto :goto_1

    .line 62
    :catch_2
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 65
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 61
    :goto_2
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 64
    :cond_4
    :goto_3
    throw v0

    .line 62
    :catch_3
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 60
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 99
    if-nez p2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    :try_start_2
    sget v2, Lcom/xiaomi/miui/pushads/sdk/i;->DOWNLOAD_BUFFER:I

    new-array v5, v2, [B

    .line 113
    invoke-static {p0}, Lcom/xiaomi/miui/pushads/sdk/f;->dN(Landroid/content/Context;)Z

    move-result v2

    .line 114
    :goto_1
    invoke-virtual {p2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v0, :cond_2

    if-eqz v2, :cond_2

    .line 115
    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 116
    invoke-static {p0}, Lcom/xiaomi/miui/pushads/sdk/f;->dN(Landroid/content/Context;)Z

    move-result v2

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 121
    if-ne v6, v0, :cond_4

    .line 122
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v0, v4

    .line 134
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 135
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 125
    :cond_4
    if-nez v2, :cond_3

    goto :goto_2

    .line 129
    :catch_1
    move-exception v1

    move-object v1, v2

    .line 134
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 138
    :catch_2
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 134
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 135
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 136
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 140
    :cond_5
    :goto_5
    throw v0

    .line 138
    :catch_3
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 133
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 129
    :catch_4
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v2, v3

    goto :goto_3
.end method

.method private static cW(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 80
    .line 84
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 86
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cX(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 152
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
