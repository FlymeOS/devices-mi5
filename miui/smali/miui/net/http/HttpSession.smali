.class public Lmiui/net/http/HttpSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/http/HttpSession$a;,
        Lmiui/net/http/HttpSession$ProgressListener;
    }
.end annotation


# static fields
.field private static final BL:I = 0x2710

.field private static final BP:I = 0x2000

.field private static final BQ:Ljava/lang/String; = "Accept-Encoding"

.field private static final BU:Ljava/lang/String; = "gzip"

.field private static final p:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lmiui/net/http/HttpSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BV:Lorg/apache/http/protocol/HttpContext;

.field private final BX:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final Ca:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Cb:Lmiui/net/http/Cache;

.field private Cc:Lmiui/net/http/RetryStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lmiui/net/http/HttpSession$1;

    invoke-direct {v0}, Lmiui/net/http/HttpSession$1;-><init>()V

    sput-object v0, Lmiui/net/http/HttpSession;->p:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v4, 0x2710

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 145
    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 146
    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 148
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 149
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 150
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 151
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 153
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 154
    const-string v1, "miui v5"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 156
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 157
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 158
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 160
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 162
    new-instance v1, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v1, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v1, p0, Lmiui/net/http/HttpSession;->BV:Lorg/apache/http/protocol/HttpContext;

    .line 163
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lmiui/net/http/HttpSession;->BX:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 165
    iget-object v0, p0, Lmiui/net/http/HttpSession;->BV:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-static {}, Lmiui/net/http/PersistentCookieStore;->getInstance()Lmiui/net/http/PersistentCookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lmiui/net/http/HttpSession;->BX:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lmiui/net/http/HttpSession$2;

    invoke-direct {v1, p0}, Lmiui/net/http/HttpSession$2;-><init>(Lmiui/net/http/HttpSession;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/net/http/HttpSession;->Ca:Ljava/util/Map;

    .line 182
    invoke-static {}, Lmiui/net/http/DiskBasedCache;->getDefault()Lmiui/net/http/DiskBasedCache;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/http/HttpSession;->Cb:Lmiui/net/http/Cache;

    .line 183
    new-instance v0, Lmiui/net/http/BaseRetryStrategy;

    invoke-direct {v0}, Lmiui/net/http/BaseRetryStrategy;-><init>()V

    iput-object v0, p0, Lmiui/net/http/HttpSession;->Cc:Lmiui/net/http/RetryStrategy;

    .line 184
    return-void
.end method

.method private static a(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 652
    if-eqz p1, :cond_0

    .line 653
    invoke-virtual {p1}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 655
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 662
    :cond_0
    :goto_0
    return-object p0

    .line 658
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic a(Lmiui/net/http/HttpSession;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Ca:Ljava/util/Map;

    return-object v0
.end method

.method private static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 636
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 637
    if-eqz p0, :cond_0

    .line 638
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 639
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    :cond_0
    return-object v1
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)Lmiui/net/http/Cache$Entry;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 588
    iget-object v1, p0, Lmiui/net/http/HttpSession;->Cb:Lmiui/net/http/Cache;

    .line 589
    if-nez v1, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-object v0

    .line 593
    :cond_1
    const-string v2, "GET"

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-interface {v1, v0}, Lmiui/net/http/Cache;->get(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/Cache$Entry;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    const/4 v10, 0x0

    .line 496
    :try_start_0
    iget-object v2, p0, Lmiui/net/http/HttpSession;->BX:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lmiui/net/http/HttpSession;->BV:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 498
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 500
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 501
    const/16 v4, 0x130

    if-ne v3, v4, :cond_0

    if-eqz p2, :cond_0

    .line 502
    new-instance v2, Lmiui/net/http/a;

    const/16 v3, 0xc8

    move-object/from16 v0, p2

    iget-object v4, v0, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    move-object/from16 v0, p2

    iget-object v5, v0, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    move-object/from16 v0, p2

    iget-wide v6, v0, Lmiui/net/http/Cache$Entry;->length:J

    move-object/from16 v0, p2

    iget-object v8, v0, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    invoke-direct/range {v2 .. v9}, Lmiui/net/http/a;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v10

    .line 551
    :goto_0
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v2

    .line 504
    :cond_0
    const/16 v4, 0xc8

    if-lt v3, v4, :cond_1

    const/16 v4, 0x12b

    if-le v3, v4, :cond_2

    .line 505
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    :catchall_0
    move-exception v2

    :goto_1
    invoke-static {v10}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2

    .line 507
    :cond_2
    const-wide/16 v6, -0x1

    .line 508
    const/4 v8, 0x0

    .line 509
    const/4 v9, 0x0

    .line 510
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v2}, Lmiui/net/http/HttpSession;->a([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v4

    .line 512
    if-eqz v11, :cond_9

    .line 513
    new-instance v5, Lmiui/net/http/HttpSession$a;

    const-string v2, "content-range"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v5, v11, v2, v0}, Lmiui/net/http/HttpSession$a;-><init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;Lmiui/net/http/HttpSession$ProgressListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 514
    :try_start_3
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    .line 515
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 516
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 518
    :cond_3
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 519
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 522
    :cond_4
    if-eqz v9, :cond_8

    .line 523
    const-string v2, "gzip"

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 524
    new-instance v10, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v10, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 525
    const-wide/16 v6, -0x1

    .line 526
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v9

    array-length v11, v9

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v11, :cond_7

    aget-object v12, v9, v2

    .line 528
    const-string v13, "gzip"

    invoke-interface {v12}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 527
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 531
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eqz v13, :cond_6

    .line 532
    const-string v13, ", "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_6
    invoke-interface {v12}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 536
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 537
    const-string v2, "content-encoding"

    invoke-interface {v4, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v10

    .line 542
    :cond_8
    :goto_4
    :try_start_5
    new-instance v2, Lmiui/net/http/a;

    invoke-direct/range {v2 .. v9}, Lmiui/net/http/a;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 546
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 551
    :catchall_1
    move-exception v2

    move-object v10, v5

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    move-object v10, v5

    goto/16 :goto_1

    :cond_9
    move-object v5, v10

    goto :goto_4
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 439
    invoke-direct {p0, p1}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lmiui/net/http/Cache$Entry;

    move-result-object v8

    .line 440
    if-eqz v8, :cond_1

    iget-wide v0, v8, Lmiui/net/http/Cache$Entry;->softTtl:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 441
    new-instance v0, Lmiui/net/http/a;

    const/16 v1, 0xc8

    iget-object v2, v8, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iget-object v3, v8, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v4, v8, Lmiui/net/http/Cache$Entry;->length:J

    iget-object v6, v8, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iget-object v7, v8, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lmiui/net/http/a;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    .line 443
    if-eqz p2, :cond_0

    .line 444
    iget-wide v2, v8, Lmiui/net/http/Cache$Entry;->length:J

    iget-wide v4, v8, Lmiui/net/http/Cache$Entry;->length:J

    invoke-interface {p2, v2, v3, v4, v5}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    .line 470
    :cond_0
    :goto_0
    return-object v0

    .line 448
    :cond_1
    if-eqz p2, :cond_2

    .line 449
    invoke-interface {p2, v4, v5, v4, v5}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    .line 453
    :cond_2
    if-eqz v8, :cond_3

    .line 454
    invoke-static {p1, v8}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/Cache$Entry;)V

    .line 457
    :cond_3
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Ca:Ljava/util/Map;

    invoke-static {p1, v0}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 459
    const-string v0, "Accept-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 460
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_4
    iget-object v1, p0, Lmiui/net/http/HttpSession;->Cc:Lmiui/net/http/RetryStrategy;

    .line 467
    :cond_5
    if-eqz v1, :cond_6

    .line 468
    :try_start_0
    invoke-interface {v1}, Lmiui/net/http/RetryStrategy;->getCurrentTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/net/http/HttpSession;->setTimeout(I)V

    .line 470
    :cond_6
    invoke-direct {p0, p1, v8, p2}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/Cache$Entry;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    if-eqz v1, :cond_7

    invoke-interface {v1, v0}, Lmiui/net/http/RetryStrategy;->retry(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 473
    :cond_7
    throw v0

    .line 475
    :catch_1
    move-exception v0

    .line 476
    if-eqz v1, :cond_8

    invoke-interface {v1, v0}, Lmiui/net/http/RetryStrategy;->retry(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 477
    :cond_8
    throw v0
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 609
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 610
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_0
    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/Cache$Entry;)V
    .locals 4

    .prologue
    .line 621
    iget-object v0, p1, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 622
    const-string v0, "If-None-Match"

    iget-object v1, p1, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_0
    iget-wide v0, p1, Lmiui/net/http/Cache$Entry;->serverDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 626
    const-string v0, "If-Modified-Since"

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lmiui/net/http/Cache$Entry;->serverDate:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_1
    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Cb:Lmiui/net/http/Cache;

    .line 563
    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    const-string v1, "GET"

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    const-string v1, "RANGE"

    invoke-interface {p1, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 575
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-static {p2}, Lmiui/net/http/b;->a(Lmiui/net/http/HttpResponse;)Lmiui/net/http/Cache$Entry;

    move-result-object v2

    .line 577
    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v2}, Lmiui/net/http/Cache;->put(Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, v2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v2, v2, Lmiui/net/http/Cache$Entry;->length:J

    invoke-virtual {p2, v0, v2, v3}, Lmiui/net/http/a;->a(Ljava/io/InputStream;J)V

    goto :goto_0
.end method

.method public static getDefault()Lmiui/net/http/HttpSession;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lmiui/net/http/HttpSession;->p:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/HttpSession;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Ca:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public clearCacheContent()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Cb:Lmiui/net/http/Cache;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Cb:Lmiui/net/http/Cache;

    invoke-interface {v0}, Lmiui/net/http/Cache;->clear()V

    .line 302
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-static {p1, p3}, Lmiui/net/http/HttpSession;->a(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-static {v0, p2}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 428
    invoke-direct {p0, v0, p4}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 320
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p2, p4}, Lmiui/net/http/HttpSession;->a(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-static {v5, p3}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 323
    const-wide/16 v0, 0x0

    .line 324
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    move-wide v2, v0

    .line 327
    :goto_0
    const-string v0, "RANGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, v5, p5}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;

    move-result-object v5

    .line 334
    :try_start_0
    invoke-interface {v5}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "content-range"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 337
    :try_start_1
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 339
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 341
    :goto_1
    invoke-interface {v5}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 342
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 351
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 352
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 353
    invoke-interface {v5}, Lmiui/net/http/HttpResponse;->release()V

    throw v0

    .line 344
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    .line 351
    :goto_3
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 352
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 353
    invoke-interface {v5}, Lmiui/net/http/HttpResponse;->release()V

    .line 355
    return-void

    .line 346
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 347
    :try_start_4
    invoke-interface {v5}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 348
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 351
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v4

    goto :goto_2

    :cond_2
    move-wide v2, v0

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p3}, Lmiui/net/http/HttpSession;->a(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-static {v0, p2}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 370
    invoke-direct {p0, v0, p4}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 385
    if-eqz p3, :cond_0

    .line 386
    invoke-virtual {p3}, Lmiui/net/http/HttpRequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 389
    :cond_0
    invoke-static {v0, p2}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 390
    invoke-direct {p0, v0, p4}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 406
    if-eqz p3, :cond_0

    .line 407
    invoke-virtual {p3}, Lmiui/net/http/HttpRequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 410
    :cond_0
    invoke-static {v0, p2}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 411
    invoke-direct {p0, v0, p4}, Lmiui/net/http/HttpSession;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;

    move-result-object v0

    return-object v0
.end method

.method public removeCacheContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Cb:Lmiui/net/http/Cache;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Cb:Lmiui/net/http/Cache;

    invoke-interface {v0, p1}, Lmiui/net/http/Cache;->remove(Ljava/lang/String;)V

    .line 293
    :cond_0
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    invoke-virtual {p0, p1, p2, v0}, Lmiui/net/http/HttpSession;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 249
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2

    .prologue
    .line 258
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lmiui/net/http/HttpSession;->BX:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 260
    return-void
.end method

.method public setCache(Lmiui/net/http/Cache;)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Cb:Lmiui/net/http/Cache;

    if-eq v0, p1, :cond_0

    .line 281
    iput-object p1, p0, Lmiui/net/http/HttpSession;->Cb:Lmiui/net/http/Cache;

    .line 283
    :cond_0
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lmiui/net/http/HttpSession;->BV:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public setRetryStrategy(Lmiui/net/http/RetryStrategy;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lmiui/net/http/HttpSession;->Cc:Lmiui/net/http/RetryStrategy;

    .line 270
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lmiui/net/http/HttpSession;->BX:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 231
    return-void
.end method

.method public setTimeout(I)V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lmiui/net/http/HttpSession;->BX:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 217
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 218
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 219
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 220
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lmiui/net/http/HttpSession;->BX:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 209
    return-void
.end method
