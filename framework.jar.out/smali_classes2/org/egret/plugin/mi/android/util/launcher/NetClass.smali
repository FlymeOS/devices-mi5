.class public Lorg/egret/plugin/mi/android/util/launcher/NetClass;
.super Ljava/lang/Object;
.source "NetClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TIME_OUT:I = 0x7530


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "out"    # Ljava/io/OutputStream;
    .param p4, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 33
    :cond_0
    const-string v10, "NetTool"

    const-string v11, "url, out may be null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .local v9, "realUrl":Ljava/net/URL;
    const/4 v2, 0x0

    .line 48
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 49
    .local v6, "post":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 51
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 52
    if-nez v2, :cond_6

    .line 53
    if-eqz p4, :cond_3

    .line 54
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :cond_3
    if-eqz v2, :cond_4

    .line 102
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    :cond_4
    if-eqz v6, :cond_5

    .line 105
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 107
    :cond_5
    if-eqz v4, :cond_1

    .line 108
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    if-eqz p4, :cond_1

    .line 113
    const-string v10, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "post":Ljava/io/OutputStream;
    .end local v9    # "realUrl":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 40
    .local v3, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 41
    if-eqz p4, :cond_1

    .line 42
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "post":Ljava/io/OutputStream;
    .restart local v9    # "realUrl":Ljava/net/URL;
    :cond_6
    const/16 v10, 0x7530

    :try_start_3
    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 60
    if-eqz p2, :cond_b

    .line 61
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 62
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 63
    if-nez v6, :cond_a

    .line 64
    if-eqz p4, :cond_7

    .line 65
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to open post: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :cond_7
    if-eqz v2, :cond_8

    .line 102
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    :cond_8
    if-eqz v6, :cond_9

    .line 105
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 107
    :cond_9
    if-eqz v4, :cond_1

    .line 108
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 110
    :catch_2
    move-exception v3

    .line 111
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    if-eqz p4, :cond_1

    .line 113
    const-string v10, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    .end local v3    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write([B)V

    .line 70
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 72
    :cond_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_f

    .line 73
    if-eqz p4, :cond_c

    .line 74
    const-string v10, "response code is HTTP_OK"

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    :cond_c
    if-eqz v2, :cond_d

    .line 102
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    :cond_d
    if-eqz v6, :cond_e

    .line 105
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 107
    :cond_e
    if-eqz v4, :cond_1

    .line 108
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 110
    :catch_3
    move-exception v3

    .line 111
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    if-eqz p4, :cond_1

    .line 113
    const-string v10, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    .end local v3    # "e":Ljava/io/IOException;
    :cond_f
    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    .line 79
    .local v5, "length":I
    const/4 v7, 0x0

    .line 80
    .local v7, "progress":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 81
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 83
    .local v1, "buffer":[B
    :cond_10
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    if-lez v8, :cond_11

    .line 84
    if-eqz p4, :cond_14

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v10

    invoke-virtual {v10}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v10

    if-nez v10, :cond_14

    .line 101
    :cond_11
    if-eqz v2, :cond_12

    .line 102
    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    :cond_12
    if-eqz v6, :cond_13

    .line 105
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 107
    :cond_13
    if-eqz v4, :cond_1

    .line 108
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 110
    :catch_4
    move-exception v3

    .line 111
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    if-eqz p4, :cond_1

    .line 113
    const-string v10, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    .end local v3    # "e":Ljava/io/IOException;
    :cond_14
    const/4 v10, 0x0

    :try_start_9
    invoke-virtual {p3, v1, v10, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 89
    add-int/2addr v7, v8

    .line 90
    if-eqz p4, :cond_10

    .line 91
    move-object/from16 v0, p4

    invoke-interface {v0, v7, v5}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onProgress(II)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 94
    .end local v1    # "buffer":[B
    .end local v5    # "length":I
    .end local v7    # "progress":I
    .end local v8    # "read":I
    :catch_5
    move-exception v3

    .line 95
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    if-eqz p4, :cond_15

    .line 97
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 101
    :cond_15
    if-eqz v2, :cond_16

    .line 102
    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    :cond_16
    if-eqz v6, :cond_17

    .line 105
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 107
    :cond_17
    if-eqz v4, :cond_1

    .line 108
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    .line 110
    :catch_6
    move-exception v3

    .line 111
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    if-eqz p4, :cond_1

    .line 113
    const-string v10, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 101
    if-eqz v2, :cond_18

    .line 102
    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    :cond_18
    if-eqz v6, :cond_19

    .line 105
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 107
    :cond_19
    if-eqz v4, :cond_1a

    .line 108
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 115
    :cond_1a
    :goto_2
    throw v10

    .line 110
    :catch_7
    move-exception v3

    .line 111
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    if-eqz p4, :cond_1a

    .line 113
    const-string v11, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "dst"    # Ljava/io/File;
    .param p4, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    .line 122
    if-eqz p3, :cond_2

    .line 123
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 124
    .local v1, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p4}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    .line 125
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 126
    if-eqz p4, :cond_0

    .line 127
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    const-string v2, "net thread is cancelled"

    invoke-interface {p4, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    .line 151
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p4, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    if-eqz p4, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, p1, p2, v1, p4}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 137
    if-eqz p4, :cond_0

    .line 138
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    .line 139
    const-string v2, "net thread is cancelled"

    invoke-interface {p4, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p4, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public getRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->postRequest(Ljava/lang/String;Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    .line 170
    return-void
.end method

.method public postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 173
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-object v2

    .line 177
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v1, v3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    .line 179
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 180
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 181
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public postRequest(Ljava/lang/String;Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    goto :goto_0
.end method

.method public writeResponseToFile(Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    goto :goto_0
.end method
