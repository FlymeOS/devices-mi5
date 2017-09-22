.class Lcom/xiaomi/c/c;
.super Ljava/lang/Object;
.source "BlobReader.java"


# instance fields
.field private volatile abV:Z

.field private bha:Ljava/nio/ByteBuffer;

.field private bhb:Ljava/nio/ByteBuffer;

.field private bhc:Ljava/util/zip/Adler32;

.field private bhd:Lcom/xiaomi/c/e;

.field private bhe:Lcom/xiaomi/c/f;

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/xiaomi/c/f;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    .line 29
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/c/c;->bhb:Ljava/nio/ByteBuffer;

    .line 31
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/c/c;->bhc:Ljava/util/zip/Adler32;

    .line 42
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/xiaomi/c/c;->mInputStream:Ljava/io/InputStream;

    .line 43
    iput-object p2, p0, Lcom/xiaomi/c/c;->bhe:Lcom/xiaomi/c/f;

    .line 44
    new-instance v0, Lcom/xiaomi/c/e;

    invoke-direct {v0}, Lcom/xiaomi/c/e;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/c/c;->bhd:Lcom/xiaomi/c/e;

    .line 45
    return-void
.end method

.method private Jw()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 134
    iget-object v0, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    .line 135
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 139
    iget-object v0, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/xiaomi/c/b;->Jv()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/c/c;->a(Ljava/nio/ByteBuffer;I)V

    .line 140
    iget-object v0, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/c/b;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 142
    const v1, 0x8000

    if-le v0, v1, :cond_1

    .line 143
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Blob size too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 147
    invoke-static {}, Lcom/xiaomi/c/b;->Jv()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 149
    iput-object v1, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/c/c;->a(Ljava/nio/ByteBuffer;I)V

    .line 155
    iget-object v0, p0, Lcom/xiaomi/c/c;->bhb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 156
    iget-object v0, p0, Lcom/xiaomi/c/c;->bhb:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/c/c;->a(Ljava/nio/ByteBuffer;I)V

    .line 157
    iget-object v0, p0, Lcom/xiaomi/c/c;->bhb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    iget-object v0, p0, Lcom/xiaomi/c/c;->bhb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/xiaomi/c/c;->bhc:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    .line 161
    iget-object v1, p0, Lcom/xiaomi/c/c;->bhc:Ljava/util/zip/Adler32;

    iget-object v2, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 162
    iget-object v1, p0, Lcom/xiaomi/c/c;->bhc:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    if-eq v0, v1, :cond_3

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/c/c;->bhc:Ljava/util/zip/Adler32;

    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted Blob bad CRC"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private a(Ljava/nio/ByteBuffer;I)V
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/c/c;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 195
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 196
    sub-int/2addr p2, v1

    .line 197
    add-int/2addr v0, v1

    .line 201
    if-gtz p2, :cond_0

    .line 202
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    return-void

    .line 199
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private loop()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/xiaomi/c/c;->abV:Z

    .line 61
    invoke-virtual {p0}, Lcom/xiaomi/c/c;->Jx()Lcom/xiaomi/c/b;

    move-result-object v1

    .line 62
    const-string v2, "CONN"

    invoke-virtual {v1}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {v1}, Lcom/xiaomi/c/b;->getPayload()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/b/i;->u([B)Lcom/xiaomi/push/b/i;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/xiaomi/push/b/i;->Ib()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaomi/c/c;->bhe:Lcom/xiaomi/c/f;

    invoke-virtual {v1}, Lcom/xiaomi/push/b/i;->getChallenge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/c/f;->setChallenge(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    .line 69
    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/push/b/i;->HX()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v1}, Lcom/xiaomi/push/b/i;->HY()Lcom/xiaomi/push/b/e;

    move-result-object v2

    .line 72
    new-instance v3, Lcom/xiaomi/c/b;

    invoke-direct {v3}, Lcom/xiaomi/c/b;-><init>()V

    .line 73
    const-string v4, "SYNC"

    const-string v5, "CONF"

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/c/b;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Lcom/xiaomi/push/b/e;->toByteArray()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/xiaomi/c/b;->d([BLjava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/xiaomi/c/c;->bhe:Lcom/xiaomi/c/f;

    invoke-virtual {v2, v3}, Lcom/xiaomi/c/f;->h(Lcom/xiaomi/c/b;)V

    .line 77
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Slim] CONN: host = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/b/i;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 79
    :cond_2
    if-nez v0, :cond_3

    .line 80
    const-string v0, "[Slim] Invalid CONN"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/c/c;->bhe:Lcom/xiaomi/c/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/f;->h(Lcom/xiaomi/c/b;)V

    .line 84
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/xiaomi/c/c;->abV:Z

    if-nez v0, :cond_5

    .line 85
    invoke-virtual {p0}, Lcom/xiaomi/c/c;->Jx()Lcom/xiaomi/c/b;

    move-result-object v1

    .line 86
    iget-object v0, p0, Lcom/xiaomi/c/c;->bhe:Lcom/xiaomi/c/f;

    invoke-virtual {v0}, Lcom/xiaomi/c/f;->JN()V

    .line 88
    invoke-virtual {v1}, Lcom/xiaomi/c/b;->Ju()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] unknow blob type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaomi/c/b;->Ju()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_1
    const-string v0, "SECMSG"

    invoke-virtual {v1}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/xiaomi/c/b;->Hc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    :try_start_0
    invoke-virtual {v1}, Lcom/xiaomi/c/b;->Jr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v1}, Lcom/xiaomi/c/b;->Jt()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/xiaomi/c/c;->bhd:Lcom/xiaomi/c/e;

    iget-object v0, v0, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/c/b;->ep(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/c/c;->bhe:Lcom/xiaomi/c/f;

    invoke-virtual {v2, v0, v3}, Lcom/xiaomi/c/e;->a([BLcom/xiaomi/smack/a;)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    .line 102
    iget-object v2, p0, Lcom/xiaomi/c/c;->bhe:Lcom/xiaomi/c/f;

    invoke-virtual {v2, v0}, Lcom/xiaomi/c/f;->g(Lcom/xiaomi/smack/packet/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Slim] Parse packet from Blob "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/c/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/c/c;->bhe:Lcom/xiaomi/c/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/f;->h(Lcom/xiaomi/c/b;)V

    goto/16 :goto_0

    .line 114
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/c/c;->bhd:Lcom/xiaomi/c/e;

    invoke-virtual {v1}, Lcom/xiaomi/c/b;->getPayload()[B

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/c/c;->bhe:Lcom/xiaomi/c/f;

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/c/e;->a([BLcom/xiaomi/smack/a;)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/xiaomi/c/c;->bhe:Lcom/xiaomi/c/f;

    invoke-virtual {v2, v0}, Lcom/xiaomi/c/f;->g(Lcom/xiaomi/smack/packet/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 116
    :catch_1
    move-exception v0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Slim] Parse packet from Blob "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/c/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :cond_5
    return-void

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method Jx()Lcom/xiaomi/c/b;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 170
    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/c/c;->Jw()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 174
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 175
    invoke-static {v0}, Lcom/xiaomi/c/b;->b(Ljava/nio/ByteBuffer;)Lcom/xiaomi/c/b;

    move-result-object v0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Slim] Read {cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";chid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaomi/c/b;->Jr()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    return-object v0

    .line 178
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 179
    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 180
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Slim] read Blob ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/c/c;->bha:Ljava/nio/ByteBuffer;

    .line 182
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 184
    invoke-static {}, Lcom/xiaomi/c/b;->Jv()I

    move-result v5

    if-le v0, v5, :cond_1

    invoke-static {}, Lcom/xiaomi/c/b;->Jv()I

    move-result v0

    .line 181
    :cond_1
    invoke-static {v4, v2, v0}, Lcom/xiaomi/channel/commonutils/c/c;->g([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] Err:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 186
    throw v1

    .line 178
    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_0
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/c/c;->abV:Z

    .line 131
    return-void
.end method

.method start()V
    .locals 2

    .prologue
    .line 49
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/c/c;->loop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    iget-boolean v1, p0, Lcom/xiaomi/c/c;->abV:Z

    if-nez v1, :cond_0

    .line 52
    throw v0
.end method
