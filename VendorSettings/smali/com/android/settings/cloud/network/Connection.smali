.class public Lcom/android/settings/cloud/network/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field protected TN:Lorg/json/JSONObject;

.field protected TO:Ljava/net/URL;

.field protected TP:Lcom/android/settings/cloud/network/b;

.field protected TQ:Z

.field protected TR:Z

.field protected TS:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "CloudSettingsConnection"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v1, 0x0

    .line 60
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/cloud/network/Connection;->a(Ljava/net/URL;)V

    .line 65
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v2, "CloudSettingsConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZZLjava/io/OutputStream;)Lcom/android/settings/cloud/network/Connection$NetworkError;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 243
    .line 247
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    const/16 v1, 0x2710

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 256
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 257
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 259
    if-eqz p3, :cond_4

    .line 260
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 266
    :goto_0
    if-eqz p4, :cond_0

    .line 267
    const-string v1, "Content-Type"

    const-string v3, "application/gzip"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "Content-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 271
    :cond_0
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/network/Connection;->a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Lcom/android/settings/cloud/network/Connection$ConnectionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    .line 275
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 278
    if-nez p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 280
    if-eqz p4, :cond_b

    .line 281
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 283
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 284
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 285
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 288
    :cond_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/cloud/network/Connection;->bn(I)Lcom/android/settings/cloud/network/Connection$NetworkError;

    move-result-object v0

    .line 289
    sget-object v1, Lcom/android/settings/cloud/network/Connection$NetworkError;->TT:Lcom/android/settings/cloud/network/Connection$NetworkError;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v0, v1, :cond_8

    .line 290
    if-eqz p5, :cond_8

    .line 293
    :try_start_5
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 294
    const/16 v2, 0x400

    :try_start_6
    new-array v2, v2, [B

    .line 296
    :goto_2
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v1, v2, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_7

    .line 297
    const/4 v6, 0x0

    invoke-virtual {p5, v2, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_2

    .line 300
    :catch_0
    move-exception v0

    .line 302
    :goto_3
    :try_start_7
    const-string v2, "CloudSettingsConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection Exception for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : read file stream error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TV:Lcom/android/settings/cloud/network/Connection$NetworkError;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 306
    if-eqz v1, :cond_2

    .line 307
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 320
    :cond_2
    if-eqz v3, :cond_3

    .line 321
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 326
    :cond_3
    :goto_4
    return-object v0

    .line 248
    :catch_1
    move-exception v0

    .line 249
    const-string v1, "CloudSettingsConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " URL error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TU:Lcom/android/settings/cloud/network/Connection$NetworkError;

    goto :goto_4

    .line 263
    :cond_4
    :try_start_9
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 264
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_0

    .line 315
    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 316
    :goto_5
    :try_start_a
    const-string v1, "CloudSettingsConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection I/O Exception for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 320
    if-eqz v2, :cond_5

    .line 321
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 326
    :cond_5
    :goto_6
    sget-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TV:Lcom/android/settings/cloud/network/Connection$NetworkError;

    goto :goto_4

    .line 272
    :catch_3
    move-exception v1

    .line 273
    :try_start_b
    iget-object v1, v1, Lcom/android/settings/cloud/network/Connection$ConnectionException;->mError:Lcom/android/settings/cloud/network/Connection$NetworkError;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 320
    if-eqz v0, :cond_6

    .line 321
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    move-object v0, v1

    goto :goto_4

    .line 299
    :cond_7
    :try_start_c
    invoke-virtual {p5}, Ljava/io/OutputStream;->flush()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 306
    if-eqz v1, :cond_8

    .line 307
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 320
    :cond_8
    if-eqz v3, :cond_3

    .line 321
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 306
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_9

    .line 307
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_9
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 315
    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_5

    .line 317
    :catch_5
    move-exception v0

    move-object v3, v2

    .line 318
    :goto_8
    :try_start_f
    const-string v1, "CloudSettingsConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection Exception for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 320
    if-eqz v3, :cond_5

    .line 321
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    .line 320
    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_9
    if-eqz v3, :cond_a

    .line 321
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v0

    .line 320
    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_9

    .line 317
    :catch_6
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_8

    .line 315
    :catch_8
    move-exception v0

    goto/16 :goto_5

    .line 306
    :catchall_5
    move-exception v0

    goto :goto_7

    .line 300
    :catch_9
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :cond_b
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private a(Ljava/net/URL;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/cloud/network/Connection;->TQ:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/settings/cloud/network/Connection;->TR:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/settings/cloud/network/Connection;->TS:Z

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings/cloud/network/Connection;->b(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/android/settings/cloud/network/Connection;->TO:Ljava/net/URL;

    .line 95
    :cond_0
    return-void
.end method

.method private bn(I)Lcom/android/settings/cloud/network/Connection$NetworkError;
    .locals 3

    .prologue
    .line 360
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 361
    sget-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TT:Lcom/android/settings/cloud/network/Connection$NetworkError;

    .line 364
    :goto_0
    return-object v0

    .line 363
    :cond_0
    const-string v0, "CloudSettingsConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TZ:Lcom/android/settings/cloud/network/Connection$NetworkError;

    goto :goto_0
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2f

    const/4 v1, 0x0

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-object p1

    .line 75
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 76
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_2

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 82
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/io/OutputStream;)Lcom/android/settings/cloud/network/Connection$NetworkError;
    .locals 6

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/cloud/network/Connection;->TO:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TU:Lcom/android/settings/cloud/network/Connection$NetworkError;

    .line 237
    :goto_0
    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/network/Connection;->TP:Lcom/android/settings/cloud/network/b;

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Lcom/android/settings/cloud/network/b;

    invoke-direct {v0, p0}, Lcom/android/settings/cloud/network/b;-><init>(Lcom/android/settings/cloud/network/Connection;)V

    iput-object v0, p0, Lcom/android/settings/cloud/network/Connection;->TP:Lcom/android/settings/cloud/network/b;

    .line 196
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/cloud/network/Connection;->TR:Z

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/settings/cloud/network/Connection;->TP:Lcom/android/settings/cloud/network/b;

    invoke-virtual {v0}, Lcom/android/settings/cloud/network/b;->oF()V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/settings/cloud/network/Connection;->TP:Lcom/android/settings/cloud/network/b;

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/cloud/network/Connection;->TP:Lcom/android/settings/cloud/network/b;

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/network/Connection;->a(Lcom/android/settings/cloud/network/b;)Lcom/android/settings/cloud/network/b;
    :try_end_0
    .catch Lcom/android/settings/cloud/network/Connection$ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 209
    iget-object v0, p0, Lcom/android/settings/cloud/network/Connection;->TO:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-boolean v1, p0, Lcom/android/settings/cloud/network/Connection;->TQ:Z

    if-eqz v1, :cond_3

    .line 212
    invoke-virtual {v3}, Lcom/android/settings/cloud/network/b;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/settings/cloud/network/Connection;->TO:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/android/settings/cloud/network/Connection;->TO:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/settings/cloud/network/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/cloud/network/Connection;->a(Ljava/lang/String;Lcom/android/settings/cloud/network/b;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/settings/cloud/network/Connection$ConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 232
    const-string v2, ""

    .line 233
    iget-boolean v0, p0, Lcom/android/settings/cloud/network/Connection;->TQ:Z

    if-nez v0, :cond_4

    .line 234
    invoke-virtual {v3}, Lcom/android/settings/cloud/network/b;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/cloud/network/Connection;->TQ:Z

    iget-boolean v4, p0, Lcom/android/settings/cloud/network/Connection;->TS:Z

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cloud/network/Connection;->a(Ljava/lang/String;Ljava/lang/String;ZZLjava/io/OutputStream;)Lcom/android/settings/cloud/network/Connection$NetworkError;

    move-result-object v0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    iget-object v0, v0, Lcom/android/settings/cloud/network/Connection$ConnectionException;->mError:Lcom/android/settings/cloud/network/Connection$NetworkError;

    goto :goto_0

    .line 218
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/settings/cloud/network/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 227
    :catch_1
    move-exception v0

    .line 228
    iget-object v0, v0, Lcom/android/settings/cloud/network/Connection$ConnectionException;->mError:Lcom/android/settings/cloud/network/Connection$NetworkError;

    goto/16 :goto_0
.end method

.method protected a(Lcom/android/settings/cloud/network/b;)Lcom/android/settings/cloud/network/b;
    .locals 0

    .prologue
    .line 334
    return-object p1
.end method

.method protected a(Ljava/lang/String;Lcom/android/settings/cloud/network/b;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 342
    return-object p1
.end method

.method protected a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    .prologue
    .line 349
    return-object p1
.end method

.method public aE(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/settings/cloud/network/Connection;->TQ:Z

    .line 111
    return-void
.end method

.method protected b(Ljava/net/URL;)Z
    .locals 1

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f(Ljava/io/File;)Lcom/android/settings/cloud/network/Connection$NetworkError;
    .locals 4

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 169
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/network/Connection;->a(Ljava/io/OutputStream;)Lcom/android/settings/cloud/network/Connection$NetworkError;

    move-result-object v1

    .line 176
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 177
    sget-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TT:Lcom/android/settings/cloud/network/Connection$NetworkError;

    if-eq v1, v0, :cond_1

    .line 178
    const-string v0, "CloudSettingsConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    :cond_1
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string v1, "CloudSettingsConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    throw v0

    .line 181
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public oC()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/cloud/network/Connection;->TN:Lorg/json/JSONObject;

    return-object v0
.end method

.method public oD()Lcom/android/settings/cloud/network/b;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/cloud/network/Connection;->TP:Lcom/android/settings/cloud/network/b;

    return-object v0
.end method

.method public oE()Lcom/android/settings/cloud/network/Connection$NetworkError;
    .locals 5

    .prologue
    .line 125
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/network/Connection;->a(Ljava/io/OutputStream;)Lcom/android/settings/cloud/network/Connection$NetworkError;

    move-result-object v0

    .line 128
    :try_start_0
    sget-object v2, Lcom/android/settings/cloud/network/Connection$NetworkError;->TT:Lcom/android/settings/cloud/network/Connection$NetworkError;

    if-ne v0, v2, :cond_0

    .line 129
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/cloud/network/Connection;->TN:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 142
    :goto_1
    return-object v0

    .line 131
    :cond_0
    :try_start_2
    const-string v2, "CloudSettingsConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    :try_start_3
    const-string v2, "CloudSettingsConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->Ua:Lcom/android/settings/cloud/network/Connection$NetworkError;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 139
    :catch_1
    move-exception v1

    goto :goto_1

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 140
    :goto_2
    throw v0

    .line 139
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method
