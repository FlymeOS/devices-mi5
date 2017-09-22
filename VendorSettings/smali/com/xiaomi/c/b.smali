.class public Lcom/xiaomi/c/b;
.super Ljava/lang/Object;
.source "Blob.java"


# static fields
.field private static final bgY:[B

.field private static id:J

.field private static prefix:Ljava/lang/String;


# instance fields
.field private bgW:Lcom/xiaomi/push/b/d;

.field private bgX:S

.field private bgZ:[B

.field mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/xiaomi/smack/d/g;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/c/b;->prefix:Ljava/lang/String;

    .line 153
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/c/b;->id:J

    .line 159
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/xiaomi/c/b;->bgY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/xiaomi/c/b;->bgX:S

    .line 161
    sget-object v0, Lcom/xiaomi/c/b;->bgY:[B

    iput-object v0, p0, Lcom/xiaomi/c/b;->bgZ:[B

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/c/b;->mPackageName:Ljava/lang/String;

    .line 166
    new-instance v0, Lcom/xiaomi/push/b/d;

    invoke-direct {v0}, Lcom/xiaomi/push/b/d;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    .line 167
    return-void
.end method

.method constructor <init>(Lcom/xiaomi/push/b/d;S[B)V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/xiaomi/c/b;->bgX:S

    .line 161
    sget-object v0, Lcom/xiaomi/c/b;->bgY:[B

    iput-object v0, p0, Lcom/xiaomi/c/b;->bgZ:[B

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/c/b;->mPackageName:Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    .line 171
    iput-short p2, p0, Lcom/xiaomi/c/b;->bgX:S

    .line 172
    iput-object p3, p0, Lcom/xiaomi/c/b;->bgZ:[B

    .line 173
    return-void
.end method

.method static Jv()I
    .locals 1

    .prologue
    .line 485
    const/16 v0, 0xe

    return v0
.end method

.method public static a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;)Lcom/xiaomi/c/b;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 363
    new-instance v2, Lcom/xiaomi/c/b;

    invoke-direct {v2}, Lcom/xiaomi/c/b;-><init>()V

    .line 364
    const/4 v0, 0x1

    .line 366
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 371
    :goto_0
    invoke-virtual {v2, v0}, Lcom/xiaomi/c/b;->fp(I)V

    .line 372
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/e;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/c/b;->setPacketID(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/e;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/c/b;->setFrom(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/e;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/c/b;->setPackageName(Ljava/lang/String;)V

    .line 375
    const-string v0, "XMLMSG"

    invoke-virtual {v2, v0, v5}, Lcom/xiaomi/c/b;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/e;->toXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lcom/xiaomi/c/b;->d([BLjava/lang/String;)V

    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/xiaomi/c/b;->b(S)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    :goto_1
    return-object v2

    .line 367
    :catch_0
    move-exception v1

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blob parse chid err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_0
    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {v2, v0}, Lcom/xiaomi/c/b;->b(S)V

    .line 383
    const-string v0, "SECMSG"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/c/b;->Q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 385
    :catch_1
    move-exception v0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blob setPayload err\uff1a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static b(Ljava/nio/ByteBuffer;)Lcom/xiaomi/c/b;
    .locals 6

    .prologue
    .line 440
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/16 v1, -0x3d02

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 441
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 442
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed Input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read Blob err :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed Input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_1
    const/4 v0, 0x6

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    .line 447
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    .line 448
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 450
    new-instance v3, Lcom/xiaomi/push/b/d;

    invoke-direct {v3}, Lcom/xiaomi/push/b/d;-><init>()V

    .line 451
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v3, v4, v5, v1}, Lcom/xiaomi/push/b/d;->f([BII)Lcom/google/protobuf/micro/c;

    .line 452
    new-array v4, v2, [B

    .line 453
    add-int/lit8 v1, v1, 0xe

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 454
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 455
    new-instance v1, Lcom/xiaomi/c/b;

    invoke-direct {v1, v3, v0, v4}, Lcom/xiaomi/c/b;-><init>(Lcom/xiaomi/push/b/d;S[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method

.method static c(Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 481
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static declared-synchronized nextID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 230
    const-class v1, Lcom/xiaomi/c/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/c/b;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/xiaomi/c/b;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/xiaomi/c/b;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Ha()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->Ha()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Hc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->Hc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Hj()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->Hj()I

    move-result v0

    return v0
.end method

.method public Hl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->Hl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Jr()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->GS()I

    move-result v0

    return v0
.end method

.method public Js()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->Hk()Z

    move-result v0

    return v0
.end method

.method public Jt()Ljava/lang/String;
    .locals 4

    .prologue
    .line 308
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->GV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->GU()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->GW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    .line 310
    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->GY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ju()S
    .locals 1

    .prologue
    .line 463
    iget-short v0, p0, Lcom/xiaomi/c/b;->bgX:S

    return v0
.end method

.method public Q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/b/d;->dy(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    .line 185
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->He()Lcom/xiaomi/push/b/d;

    .line 186
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/b/d;->dz(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    .line 189
    :cond_1
    return-void
.end method

.method a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/xiaomi/c/b;->getSerializedSize()I

    move-result v0

    .line 404
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 405
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 407
    if-eqz p1, :cond_2

    .line 408
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_2
    move-object p1, v0

    .line 413
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 414
    const/16 v1, -0x3d02

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 415
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 416
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 417
    iget-short v1, p0, Lcom/xiaomi/c/b;->bgX:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 419
    iget-object v1, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->EY()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 420
    iget-object v1, p0, Lcom/xiaomi/c/b;->bgZ:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 422
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 423
    iget-object v2, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v5}, Lcom/xiaomi/push/b/d;->EY()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/push/b/d;->e([BII)V

    .line 424
    iget-object v2, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v2}, Lcom/xiaomi/push/b/d;->EY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 426
    iget-object v1, p0, Lcom/xiaomi/c/b;->bgZ:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 428
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 429
    return-object p1
.end method

.method public b(S)V
    .locals 0

    .prologue
    .line 467
    iput-short p1, p0, Lcom/xiaomi/c/b;->bgX:S

    .line 468
    return-void
.end method

.method public d(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 290
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/b/d;->I(J)Lcom/xiaomi/push/b/d;

    .line 294
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p3}, Lcom/xiaomi/push/b/d;->dw(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    .line 298
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/b/d;->dx(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    .line 301
    :cond_2
    return-void
.end method

.method public d([BLjava/lang/String;)V
    .locals 2

    .prologue
    .line 322
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/d;->eT(I)Lcom/xiaomi/push/b/d;

    .line 325
    invoke-virtual {p0}, Lcom/xiaomi/c/b;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/push/service/S;->P(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 326
    invoke-static {v0, p1}, Lcom/xiaomi/push/service/S;->c([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/c/b;->bgZ:[B

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/d;->eT(I)Lcom/xiaomi/push/b/d;

    .line 329
    iput-object p1, p0, Lcom/xiaomi/c/b;->bgZ:[B

    goto :goto_0
.end method

.method public ep(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->Hh()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/xiaomi/c/b;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/push/service/S;->P(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/xiaomi/c/b;->bgZ:[B

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/S;->c([B[B)[B

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->Hh()I

    move-result v0

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgZ:[B

    goto :goto_0

    .line 351
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknow cipher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->Hh()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgZ:[B

    goto :goto_0
.end method

.method public fp(I)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/b/d;->eR(I)Lcom/xiaomi/push/b/d;

    .line 201
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/xiaomi/c/b;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->getId()Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v1, "ID_NOT_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    const/4 v0, 0x0

    .line 250
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->hasId()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    invoke-static {}, Lcom/xiaomi/c/b;->nextID()Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/b/d;->dA(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    goto :goto_0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgZ:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 393
    invoke-static {}, Lcom/xiaomi/c/b;->Jv()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/d;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/c/b;->bgZ:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 270
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 271
    const-string v1, "/"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 272
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 273
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    iget-object v4, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v4, v2, v3}, Lcom/xiaomi/push/b/d;->I(J)Lcom/xiaomi/push/b/d;

    .line 275
    iget-object v2, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/d;->dw(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    .line 276
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/d;->dx(Ljava/lang/String;)Lcom/xiaomi/push/b/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blob parse user err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/xiaomi/c/b;->mPackageName:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setPacketID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/xiaomi/c/b;->bgW:Lcom/xiaomi/push/b/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/b/d;->dA(Ljava/lang/String;)Lcom/xiaomi/push/b/d;

    .line 209
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blob [chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/c/b;->Jr()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/c/b;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 472
    invoke-virtual {p0}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/c/b;->Ju()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 473
    invoke-virtual {p0}, Lcom/xiaomi/c/b;->Jt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
