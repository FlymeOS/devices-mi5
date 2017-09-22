.class public Lorg/htmlparser/lexer/Page;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static btn:Lorg/htmlparser/a/a; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient btm:Ljava/net/URLConnection;

.field protected mBaseUrl:Ljava/lang/String;

.field protected mIndex:Lorg/htmlparser/lexer/PageIndex;

.field protected mSource:Lorg/htmlparser/lexer/Source;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lorg/htmlparser/a/a;

    invoke-direct {v0}, Lorg/htmlparser/a/a;-><init>()V

    .line 112
    sput-object v0, Lorg/htmlparser/lexer/Page;->btn:Lorg/htmlparser/a/a;

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    if-nez p2, :cond_1

    .line 177
    const-string p2, "ISO-8859-1"

    .line 178
    :cond_1
    new-instance v0, Lorg/htmlparser/lexer/StringSource;

    invoke-direct {v0, p1, p2}, Lorg/htmlparser/lexer/StringSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    .line 179
    new-instance v0, Lorg/htmlparser/lexer/PageIndex;

    invoke-direct {v0, p0}, Lorg/htmlparser/lexer/PageIndex;-><init>(Lorg/htmlparser/lexer/Page;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 180
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->btm:Ljava/net/URLConnection;

    .line 181
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mUrl:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mBaseUrl:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public static X(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 335
    :try_start_0
    const-string v0, "java.nio.charset.Charset"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 336
    const-string v1, "forName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 337
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 338
    const-string v2, "name"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 339
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 340
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 370
    :goto_0
    return-object p0

    .line 357
    :catch_0
    move-exception v0

    .line 363
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to determine cannonical charset name for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    const-string v2, " - using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object p0, p1

    goto :goto_0

    .line 352
    :catch_1
    move-exception v0

    goto :goto_0

    .line 347
    :catch_2
    move-exception v0

    goto :goto_0

    .line 342
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private b(Ljava/net/URLConnection;)Z
    .locals 3

    .prologue
    .line 630
    if-nez p1, :cond_0

    .line 631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_0
    const/4 v0, 0x1

    .line 633
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 636
    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 638
    :cond_1
    const/4 v0, 0x0

    .line 640
    :cond_2
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 440
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    .line 441
    if-eqz v0, :cond_2

    .line 443
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 444
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 447
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 449
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 452
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/htmlparser/lexer/Page;->a(Ljava/net/URLConnection;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :cond_0
    new-instance v3, Lorg/htmlparser/lexer/Cursor;

    invoke-direct {v3, p0, v1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 460
    :goto_0
    if-lt v1, v2, :cond_1

    .line 469
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Page;->setUrl(Ljava/lang/String;)V

    .line 477
    :goto_1
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 456
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/htmlparser/util/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    :cond_1
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C
    :try_end_1
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    :catch_1
    move-exception v0

    .line 467
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/htmlparser/util/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 473
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 475
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Page;->setUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->NG()Ljava/net/URLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 397
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->NA()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 398
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 400
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->NG()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Page;->setUrl(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->NH()Lorg/htmlparser/lexer/Source;

    move-result-object v0

    .line 402
    iput-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    .line 403
    iget-object v1, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 404
    iput-object v2, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 405
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 406
    iput-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    .line 407
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 418
    :goto_0
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 412
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p0, v2}, Lorg/htmlparser/lexer/Page;->setUrl(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 416
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Page;->setUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public NG()Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->btm:Ljava/net/URLConnection;

    return-object v0
.end method

.method public NH()Lorg/htmlparser/lexer/Source;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    return-object v0
.end method

.method public Q(II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1097
    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    sub-int v1, p2, p1

    invoke-virtual {v0, p1, v1}, Lorg/htmlparser/lexer/Source;->getString(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1110
    return-object v0

    .line 1099
    :catch_0
    move-exception v0

    .line 1101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t get the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1103
    sub-int v3, p2, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1104
    const-string v3, "characters at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1106
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1107
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Ljava/net/URLConnection;)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 542
    invoke-direct {p0, p1}, Lorg/htmlparser/lexer/Page;->b(Ljava/net/URLConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lorg/htmlparser/util/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL used is not valid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-direct {v0, v1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/Page;->btm:Ljava/net/URLConnection;

    .line 549
    :try_start_0
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->NG()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 562
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Page;->fi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_1

    .line 568
    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 570
    new-instance v0, Lorg/htmlparser/lexer/a;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    .line 571
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->NG()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 570
    invoke-direct {v0, v2}, Lorg/htmlparser/lexer/a;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 586
    :goto_0
    :try_start_2
    new-instance v2, Lorg/htmlparser/lexer/InputStreamSource;

    invoke-direct {v2, v0, v1}, Lorg/htmlparser/lexer/InputStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 609
    :goto_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/lexer/Page;->mUrl:Ljava/lang/String;

    .line 610
    new-instance v0, Lorg/htmlparser/lexer/PageIndex;

    invoke-direct {v0, p0}, Lorg/htmlparser/lexer/PageIndex;-><init>(Lorg/htmlparser/lexer/Page;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 611
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 553
    new-instance v1, Lorg/htmlparser/util/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    iget-object v3, p0, Lorg/htmlparser/lexer/Page;->btm:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 553
    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 556
    :catch_1
    move-exception v0

    .line 558
    new-instance v1, Lorg/htmlparser/util/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception connecting to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 559
    iget-object v3, p0, Lorg/htmlparser/lexer/Page;->btm:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 560
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 573
    :cond_1
    if-eqz v0, :cond_2

    .line 574
    :try_start_3
    const-string v2, "deflate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v3, v0, :cond_2

    .line 576
    new-instance v0, Lorg/htmlparser/lexer/a;

    new-instance v2, Ljava/util/zip/InflaterInputStream;

    .line 577
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->NG()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/util/zip/Inflater;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v2, v3, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 576
    invoke-direct {v0, v2}, Lorg/htmlparser/lexer/a;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 603
    :catch_2
    move-exception v0

    .line 605
    new-instance v1, Lorg/htmlparser/util/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception getting input stream from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    iget-object v3, p0, Lorg/htmlparser/lexer/Page;->btm:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 607
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 581
    :cond_2
    :try_start_4
    new-instance v0, Lorg/htmlparser/lexer/a;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->NG()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/htmlparser/lexer/a;-><init>(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 588
    :catch_3
    move-exception v1

    .line 599
    const-string v1, "ISO-8859-1"

    .line 600
    new-instance v2, Lorg/htmlparser/lexer/InputStreamSource;

    invoke-direct {v2, v0, v1}, Lorg/htmlparser/lexer/InputStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/URL;
    .locals 8

    .prologue
    const/16 v1, 0x3f

    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 945
    if-nez p3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v1, v0, :cond_3

    .line 947
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v7, v0, :cond_0

    .line 948
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 949
    :cond_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 953
    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 955
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 956
    if-nez v4, :cond_8

    move-object v4, v1

    move v1, v2

    .line 959
    :goto_1
    const-string v5, "/."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 976
    :cond_1
    :goto_2
    const-string v5, "/\\"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v7, v5, :cond_7

    .line 981
    if-eqz v1, :cond_2

    .line 982
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, v1

    .line 984
    :cond_2
    return-object v0

    .line 952
    :cond_3
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0

    .line 961
    :cond_4
    const-string v5, "/../"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 963
    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v1, v3

    .line 965
    goto :goto_1

    .line 966
    :cond_5
    const-string v5, "/./"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "/."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 968
    :cond_6
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v1, v3

    .line 969
    goto :goto_1

    .line 978
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v1, v3

    .line 979
    goto :goto_2

    :cond_8
    move-object v4, v1

    move v1, v2

    goto :goto_2
.end method

.method public b(Ljava/lang/StringBuffer;II)V
    .locals 5

    .prologue
    .line 1129
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->NA()I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->NA()I

    move-result v0

    if-ge v0, p3, :cond_1

    .line 1130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attempt to extract future characters from source"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Source;->NA()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1130
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1133
    :cond_1
    if-ge p3, p2, :cond_2

    .line 1139
    :goto_0
    sub-int v0, p2, p3

    .line 1142
    :try_start_0
    iget-object v1, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v1, p1, p3, v0}, Lorg/htmlparser/lexer/Source;->a(Ljava/lang/StringBuffer;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    return-void

    .line 1144
    :catch_0
    move-exception v0

    .line 1146
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t get the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1148
    sub-int v3, p2, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1149
    const-string v3, "characters at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1150
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1151
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1152
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1146
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v4, p3

    move p3, p2

    move p2, v4

    goto :goto_0
.end method

.method public c(Lorg/htmlparser/lexer/Cursor;)C
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/16 v1, 0xa

    .line 740
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v2

    .line 741
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->NA()I

    move-result v0

    .line 742
    if-ne v0, v2, :cond_3

    .line 745
    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 746
    if-ne v3, v0, :cond_2

    .line 747
    const v0, 0xffff

    .line 782
    :goto_0
    const/16 v2, 0xd

    if-ne v2, v0, :cond_0

    .line 787
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->NA()I

    move-result v0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 790
    :try_start_1
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->read()I

    move-result v0

    .line 791
    if-eq v3, v0, :cond_7

    .line 795
    int-to-char v0, v0

    if-ne v1, v0, :cond_5

    .line 796
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->advance()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move v0, v1

    .line 828
    :cond_0
    :goto_1
    if-ne v1, v0, :cond_1

    .line 830
    iget-object v1, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    invoke-virtual {v1, p1}, Lorg/htmlparser/lexer/PageIndex;->g(Lorg/htmlparser/lexer/Cursor;)I

    .line 832
    :cond_1
    return v0

    .line 750
    :cond_2
    int-to-char v0, v0

    .line 751
    :try_start_2
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->advance()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 754
    :catch_0
    move-exception v0

    .line 756
    new-instance v1, Lorg/htmlparser/util/ParserException;

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "problem reading a character at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 757
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 756
    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 760
    :cond_3
    if-le v0, v2, :cond_4

    .line 765
    :try_start_3
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v0, v2}, Lorg/htmlparser/lexer/Source;->fE(I)C
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    .line 773
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->advance()V

    goto :goto_0

    .line 767
    :catch_1
    move-exception v0

    .line 769
    new-instance v1, Lorg/htmlparser/util/ParserException;

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t read a character at position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 770
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 769
    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 777
    :cond_4
    new-instance v0, Lorg/htmlparser/util/ParserException;

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "attempt to read future characters from source "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Source;->NA()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 778
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-direct {v0, v1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_5
    :try_start_4
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->Nz()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v1

    .line 801
    goto :goto_1

    .line 802
    :catch_2
    move-exception v0

    .line 804
    :try_start_5
    new-instance v1, Lorg/htmlparser/util/ParserException;

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t unread a character at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 805
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 809
    :catch_3
    move-exception v0

    .line 811
    new-instance v1, Lorg/htmlparser/util/ParserException;

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "problem reading a character at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 812
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 811
    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 818
    :cond_6
    :try_start_6
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/htmlparser/lexer/Source;->fE(I)C

    move-result v0

    if-ne v1, v0, :cond_7

    .line 819
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->advance()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move v0, v1

    .line 820
    goto/16 :goto_1

    .line 821
    :catch_4
    move-exception v0

    .line 823
    new-instance v1, Lorg/htmlparser/util/ParserException;

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t read a character at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 824
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 823
    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->NH()Lorg/htmlparser/lexer/Source;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->NH()Lorg/htmlparser/lexer/Source;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->destroy()V

    .line 496
    :cond_0
    return-void
.end method

.method public d(Lorg/htmlparser/lexer/Cursor;)V
    .locals 4

    .prologue
    .line 851
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->Ny()V

    .line 852
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    .line 855
    :try_start_0
    iget-object v1, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/Source;->fE(I)C

    move-result v1

    .line 856
    const/16 v2, 0xa

    if-ne v2, v1, :cond_0

    if-eqz v0, :cond_0

    .line 858
    iget-object v1, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/Source;->fE(I)C

    move-result v0

    .line 859
    const/16 v1, 0xd

    if-ne v1, v0, :cond_0

    .line 860
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->Ny()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :cond_0
    return-void

    .line 863
    :catch_0
    move-exception v0

    .line 865
    new-instance v1, Lorg/htmlparser/util/ParserException;

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t read a character at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 866
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 865
    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e(Lorg/htmlparser/lexer/Cursor;)I
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/PageIndex;->e(Lorg/htmlparser/lexer/Cursor;)I

    move-result v0

    return v0
.end method

.method public f(Lorg/htmlparser/lexer/Cursor;)I
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/PageIndex;->f(Lorg/htmlparser/lexer/Cursor;)I

    move-result v0

    return v0
.end method

.method public fi(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 260
    const-string v0, "charset"

    .line 264
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    if-nez v0, :cond_3

    .line 265
    const-string v1, "ISO-8859-1"

    .line 270
    :goto_0
    if-eqz p1, :cond_4

    .line 272
    const-string v0, "charset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 274
    if-eq v0, v3, :cond_4

    .line 277
    const-string v2, "charset"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 280
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 281
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 282
    if-eq v2, v3, :cond_0

    .line 283
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_0
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_1

    .line 288
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 291
    :cond_1
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_2
    invoke-static {v0, v1}, Lorg/htmlparser/lexer/Page;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_1
    return-object v0

    .line 269
    :cond_3
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->getEncoding()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 508
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->close()V

    .line 509
    return-void
.end method

.method public fj(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lorg/htmlparser/lexer/Page;->mBaseUrl:Ljava/lang/String;

    .line 683
    return-void
.end method

.method public fk(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/lexer/Page;->i(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 704
    const-string v1, "text/html"

    .line 705
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->NG()Ljava/net/URLConnection;

    move-result-object v0

    .line 706
    if-eqz v0, :cond_0

    .line 710
    const-string v2, "Content-Type"

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_0

    .line 715
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 877
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->NH()Lorg/htmlparser/lexer/Source;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1014
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1015
    :cond_0
    const-string p1, ""

    .line 1035
    :cond_1
    :goto_0
    return-object p1

    .line 1019
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 1020
    if-nez v0, :cond_3

    .line 1021
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1022
    :cond_3
    if-eqz v0, :cond_1

    .line 1026
    invoke-virtual {p0, p1, v0, p2}, Lorg/htmlparser/lexer/Page;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 1030
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 905
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->NH()Lorg/htmlparser/lexer/Source;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/Source;->setEncoding(Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lorg/htmlparser/lexer/Page;->mUrl:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1273
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->NA()I

    move-result v0

    if-lez v0, :cond_1

    .line 1275
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x2b

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1276
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->NA()I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    .line 1277
    if-gez v0, :cond_0

    .line 1278
    const/4 v0, 0x0

    .line 1281
    :goto_0
    iget-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Source;->NA()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/htmlparser/lexer/Page;->b(Ljava/lang/StringBuffer;II)V

    .line 1282
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1287
    :goto_1
    return-object v0

    .line 1280
    :cond_0
    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1285
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
