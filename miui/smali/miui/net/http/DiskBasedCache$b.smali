.class Lmiui/net/http/DiskBasedCache$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public Br:J

.field public Bs:J

.field private volatile Bt:Z

.field private volatile Bu:I

.field public Bv:Ljava/lang/String;

.field public contentEncoding:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public etag:Ljava/lang/String;

.field public file:Ljava/io/File;

.field public responseHeaders:Ljava/util/Map;
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

.field public serverDate:J

.field public softTtl:J

.field public ttl:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    return-void
.end method

.method public static a(Ljava/io/File;)Lmiui/net/http/DiskBasedCache$b;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 393
    .line 396
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :try_start_1
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$b;->b(Ljava/io/InputStream;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    const v3, 0x20140228

    if-eq v1, v3, :cond_0

    .line 426
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    .line 401
    :cond_0
    :try_start_2
    new-instance v1, Lmiui/net/http/DiskBasedCache$b;

    invoke-direct {v1}, Lmiui/net/http/DiskBasedCache$b;-><init>()V

    .line 402
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$b;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmiui/net/http/DiskBasedCache$b;->Bv:Ljava/lang/String;

    .line 403
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$b;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmiui/net/http/DiskBasedCache$b;->etag:Ljava/lang/String;

    .line 404
    const-string v3, ""

    iget-object v4, v1, Lmiui/net/http/DiskBasedCache$b;->etag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    const/4 v3, 0x0

    iput-object v3, v1, Lmiui/net/http/DiskBasedCache$b;->etag:Ljava/lang/String;

    .line 407
    :cond_1
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$b;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmiui/net/http/DiskBasedCache$b;->contentType:Ljava/lang/String;

    .line 408
    const-string v3, ""

    iget-object v4, v1, Lmiui/net/http/DiskBasedCache$b;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    const/4 v3, 0x0

    iput-object v3, v1, Lmiui/net/http/DiskBasedCache$b;->contentType:Ljava/lang/String;

    .line 411
    :cond_2
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$b;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmiui/net/http/DiskBasedCache$b;->contentEncoding:Ljava/lang/String;

    .line 412
    const-string v3, ""

    iget-object v4, v1, Lmiui/net/http/DiskBasedCache$b;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 413
    const/4 v3, 0x0

    iput-object v3, v1, Lmiui/net/http/DiskBasedCache$b;->contentEncoding:Ljava/lang/String;

    .line 415
    :cond_3
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$b;->c(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v1, Lmiui/net/http/DiskBasedCache$b;->serverDate:J

    .line 416
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$b;->c(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v1, Lmiui/net/http/DiskBasedCache$b;->ttl:J

    .line 417
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$b;->c(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v1, Lmiui/net/http/DiskBasedCache$b;->softTtl:J

    .line 418
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$b;->e(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v1, Lmiui/net/http/DiskBasedCache$b;->responseHeaders:Ljava/util/Map;

    .line 419
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    iput-wide v4, v1, Lmiui/net/http/DiskBasedCache$b;->Bs:J

    .line 420
    iput-object p0, v1, Lmiui/net/http/DiskBasedCache$b;->file:Ljava/io/File;

    .line 421
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v1, Lmiui/net/http/DiskBasedCache$b;->Br:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 426
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0

    .line 423
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 426
    :goto_1
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 423
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Lmiui/net/http/DiskBasedCache$b;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 439
    .line 440
    iget-object v3, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    .line 443
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    .line 445
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    const v0, 0x20140228

    :try_start_1
    invoke-static {v2, v0}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;I)V

    .line 447
    invoke-static {v2, p1}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 448
    iget-object v0, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_0
    invoke-static {v2, v0}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 449
    iget-object v0, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-static {v2, v0}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 450
    iget-object v0, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_2
    invoke-static {v2, v0}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 451
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->serverDate:J

    invoke-static {v2, v4, v5}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;J)V

    .line 452
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->ttl:J

    invoke-static {v2, v4, v5}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;J)V

    .line 453
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->softTtl:J

    invoke-static {v2, v4, v5}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;J)V

    .line 454
    iget-object v0, p2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-static {v0, v2}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 455
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 457
    new-instance v0, Lmiui/net/http/DiskBasedCache$b;

    invoke-direct {v0}, Lmiui/net/http/DiskBasedCache$b;-><init>()V

    .line 458
    iput-object p1, v0, Lmiui/net/http/DiskBasedCache$b;->Bv:Ljava/lang/String;

    .line 459
    iget-object v4, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    iput-object v4, v0, Lmiui/net/http/DiskBasedCache$b;->etag:Ljava/lang/String;

    .line 460
    iget-object v4, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iput-object v4, v0, Lmiui/net/http/DiskBasedCache$b;->contentType:Ljava/lang/String;

    .line 461
    iget-object v4, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    iput-object v4, v0, Lmiui/net/http/DiskBasedCache$b;->contentEncoding:Ljava/lang/String;

    .line 462
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->serverDate:J

    iput-wide v4, v0, Lmiui/net/http/DiskBasedCache$b;->serverDate:J

    .line 463
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->ttl:J

    iput-wide v4, v0, Lmiui/net/http/DiskBasedCache$b;->ttl:J

    .line 464
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->softTtl:J

    iput-wide v4, v0, Lmiui/net/http/DiskBasedCache$b;->softTtl:J

    .line 465
    iget-object v4, p2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iput-object v4, v0, Lmiui/net/http/DiskBasedCache$b;->responseHeaders:Ljava/util/Map;

    .line 466
    iput-object p0, v0, Lmiui/net/http/DiskBasedCache$b;->file:Ljava/io/File;

    .line 467
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    iput-wide v4, v0, Lmiui/net/http/DiskBasedCache$b;->Bs:J

    .line 469
    invoke-static {v3, v2}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 470
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 472
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    iput-wide v4, v0, Lmiui/net/http/DiskBasedCache$b;->Br:J

    .line 473
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->length:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 474
    iget-wide v4, v0, Lmiui/net/http/DiskBasedCache$b;->Br:J

    iget-wide v6, v0, Lmiui/net/http/DiskBasedCache$b;->Bs:J

    sub-long/2addr v4, v6

    iput-wide v4, p2, Lmiui/net/http/Cache$Entry;->length:J

    .line 478
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 481
    :try_start_2
    new-instance v2, Lmiui/net/http/DiskBasedCache$a;

    invoke-direct {v2, v0}, Lmiui/net/http/DiskBasedCache$a;-><init>(Lmiui/net/http/DiskBasedCache$b;)V

    iput-object v2, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 487
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 489
    if-nez v0, :cond_1

    .line 490
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 491
    const-string v1, "DisBasedCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_1
    :goto_3
    return-object v0

    .line 448
    :cond_2
    :try_start_3
    iget-object v0, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    goto/16 :goto_0

    .line 449
    :cond_3
    iget-object v0, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    goto/16 :goto_1

    .line 450
    :cond_4
    iget-object v0, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    goto/16 :goto_2

    .line 475
    :cond_5
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->length:J

    iget-wide v6, v0, Lmiui/net/http/DiskBasedCache$b;->Br:J

    iget-wide v8, v0, Lmiui/net/http/DiskBasedCache$b;->Bs:J

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 476
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length not match "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->length:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lmiui/net/http/DiskBasedCache$b;->Br:J

    iget-wide v8, v0, Lmiui/net/http/DiskBasedCache$b;->Bs:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 483
    :catch_0
    move-exception v0

    .line 484
    :goto_4
    :try_start_4
    const-string v4, "DisBasedCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot save cache to disk file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 486
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 487
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 489
    if-nez v1, :cond_7

    .line 490
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    .line 491
    const-string v0, "DisBasedCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_3

    .line 486
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 487
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 489
    if-nez v1, :cond_6

    .line 490
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6

    .line 491
    const-string v1, "DisBasedCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v0

    .line 486
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 483
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :cond_7
    move-object v0, v1

    goto/16 :goto_3
.end method

.method static a(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 574
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 575
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 576
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 577
    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 590
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 591
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 592
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 593
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 594
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 595
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 596
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 597
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 614
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;J)V

    .line 615
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 616
    return-void
.end method

.method static a(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;I)V

    .line 638
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 639
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 640
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/net/http/DiskBasedCache$b;->a(Ljava/io/OutputStream;I)V

    .line 645
    :cond_1
    return-void
.end method

.method static b(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    const/4 v0, 0x0

    .line 581
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->read(Ljava/io/InputStream;)I

    move-result v1

    or-int/2addr v0, v1

    .line 582
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 583
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 584
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 585
    return v0
.end method

.method static c(Ljava/io/InputStream;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0xff

    .line 600
    const-wide/16 v0, 0x0

    .line 601
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 602
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 603
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 604
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 605
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 606
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 607
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 608
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 609
    return-wide v0
.end method

.method static d(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->c(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 620
    if-ltz v1, :cond_0

    const/16 v0, 0x2000

    if-le v1, v0, :cond_1

    .line 621
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed data structure encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_1
    new-array v2, v1, [B

    .line 625
    const/4 v0, 0x0

    .line 626
    :goto_0
    if-ge v0, v1, :cond_2

    sub-int v3, v1, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 627
    add-int/2addr v0, v3

    goto :goto_0

    .line 629
    :cond_2
    if-eq v0, v1, :cond_3

    .line 630
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes but read "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 632
    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static e(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->b(Ljava/io/InputStream;)I

    move-result v1

    .line 649
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 650
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 651
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$b;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    :cond_0
    return-object v2
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 566
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 567
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 569
    :cond_0
    return v0
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 1

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$b;->Bu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/net/http/DiskBasedCache$b;->Bu:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ck()Lmiui/net/http/Cache$Entry;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 503
    :try_start_0
    new-instance v1, Lmiui/net/http/Cache$Entry;

    invoke-direct {v1}, Lmiui/net/http/Cache$Entry;-><init>()V

    .line 504
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lmiui/net/http/DiskBasedCache$b;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    .line 505
    iget-object v2, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$b;->Bs:J

    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$b;->Bs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 518
    :goto_0
    return-object v0

    .line 508
    :cond_0
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$b;->Br:J

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$b;->Bs:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lmiui/net/http/Cache$Entry;->length:J

    .line 509
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$b;->etag:Ljava/lang/String;

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    .line 510
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$b;->contentType:Ljava/lang/String;

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    .line 511
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$b;->contentEncoding:Ljava/lang/String;

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    .line 512
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$b;->serverDate:J

    iput-wide v2, v1, Lmiui/net/http/Cache$Entry;->serverDate:J

    .line 513
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$b;->ttl:J

    iput-wide v2, v1, Lmiui/net/http/Cache$Entry;->ttl:J

    .line 514
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$b;->softTtl:J

    iput-wide v2, v1, Lmiui/net/http/Cache$Entry;->softTtl:J

    .line 515
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$b;->responseHeaders:Ljava/util/Map;

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 516
    goto :goto_0

    .line 517
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized cl()Z
    .locals 1

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$b;->Bu:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete()V
    .locals 3

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$b;->Bu:I

    if-lez v0, :cond_1

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/DiskBasedCache$b;->Bt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 555
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$b;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const-string v0, "DisBasedCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$b;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$b;->Bu:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/net/http/DiskBasedCache$b;->Bu:I

    .line 541
    iget v0, p0, Lmiui/net/http/DiskBasedCache$b;->Bu:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lmiui/net/http/DiskBasedCache$b;->Bt:Z

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$b;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    const-string v0, "DisBasedCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$b;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :cond_0
    monitor-exit p0

    return-void

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
