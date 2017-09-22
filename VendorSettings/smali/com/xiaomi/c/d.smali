.class public Lcom/xiaomi/c/d;
.super Ljava/lang/Object;
.source "BlobWriter.java"


# instance fields
.field bha:Ljava/nio/ByteBuffer;

.field private bhb:Ljava/nio/ByteBuffer;

.field private bhc:Ljava/util/zip/Adler32;

.field private bhf:Lcom/xiaomi/smack/a;

.field private mOut:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/xiaomi/smack/a;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/c/d;->bha:Ljava/nio/ByteBuffer;

    .line 29
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/c/d;->bhb:Ljava/nio/ByteBuffer;

    .line 31
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/c/d;->bhc:Ljava/util/zip/Adler32;

    .line 38
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/xiaomi/c/d;->mOut:Ljava/io/OutputStream;

    .line 39
    iput-object p2, p0, Lcom/xiaomi/c/d;->bhf:Lcom/xiaomi/smack/a;

    .line 40
    return-void
.end method


# virtual methods
.method public Jy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 78
    new-instance v0, Lcom/xiaomi/push/b/h;

    invoke-direct {v0}, Lcom/xiaomi/push/b/h;-><init>()V

    .line 79
    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->eY(I)Lcom/xiaomi/push/b/h;

    .line 80
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->dL(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    .line 81
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->dM(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    .line 82
    invoke-static {}, Lcom/xiaomi/push/service/V;->Fj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->dN(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    .line 83
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->eZ(I)Lcom/xiaomi/push/b/h;

    .line 84
    iget-object v1, p0, Lcom/xiaomi/c/d;->bhf:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->JF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->dO(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    .line 85
    iget-object v1, p0, Lcom/xiaomi/c/d;->bhf:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->dP(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->dQ(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->fa(I)Lcom/xiaomi/push/b/h;

    .line 89
    iget-object v1, p0, Lcom/xiaomi/c/d;->bhf:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->JE()Lcom/xiaomi/smack/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/smack/c;->Jd()[B

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-static {v1}, Lcom/xiaomi/push/b/e;->s([B)Lcom/xiaomi/push/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/h;->a(Lcom/xiaomi/push/b/e;)Lcom/xiaomi/push/b/h;

    .line 94
    :cond_0
    new-instance v1, Lcom/xiaomi/c/b;

    invoke-direct {v1}, Lcom/xiaomi/c/b;-><init>()V

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/c/b;->fp(I)V

    .line 96
    const-string v2, "CONN"

    invoke-virtual {v1, v2, v5}, Lcom/xiaomi/c/b;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-wide/16 v2, 0x0

    const-string v4, "xiaomi.com"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaomi/c/b;->d(JLjava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/xiaomi/push/b/h;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/xiaomi/c/b;->d([BLjava/lang/String;)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/xiaomi/c/d;->g(Lcom/xiaomi/c/b;)I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[slim] open conn:sdk=24 uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/xiaomi/push/service/V;->Fj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public g(Lcom/xiaomi/c/b;)I
    .locals 5

    .prologue
    const v4, 0x8000

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getSerializedSize()I

    move-result v1

    .line 44
    if-le v1, v4, :cond_0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blob size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Drop blob chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jr()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 74
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/c/d;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1000

    if-le v1, v2, :cond_1

    .line 53
    const/16 v1, 0x800

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/c/d;->bha:Ljava/nio/ByteBuffer;

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/c/d;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 57
    iget-object v1, p0, Lcom/xiaomi/c/d;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lcom/xiaomi/c/b;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/c/d;->bha:Ljava/nio/ByteBuffer;

    .line 59
    iget-object v1, p0, Lcom/xiaomi/c/d;->bhc:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    .line 60
    iget-object v1, p0, Lcom/xiaomi/c/d;->bhc:Ljava/util/zip/Adler32;

    iget-object v2, p0, Lcom/xiaomi/c/d;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/c/d;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 61
    iget-object v1, p0, Lcom/xiaomi/c/d;->bhc:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    .line 62
    iget-object v2, p0, Lcom/xiaomi/c/d;->bhb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 67
    iget-object v1, p0, Lcom/xiaomi/c/d;->mOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/xiaomi/c/d;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/c/d;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 68
    iget-object v1, p0, Lcom/xiaomi/c/d;->mOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/xiaomi/c/d;->bhb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 69
    iget-object v0, p0, Lcom/xiaomi/c/d;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 71
    iget-object v0, p0, Lcom/xiaomi/c/d;->bha:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] Wrote {cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jr()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lcom/xiaomi/c/b;

    invoke-direct {v0}, Lcom/xiaomi/c/b;-><init>()V

    .line 108
    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/c/b;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/xiaomi/c/d;->g(Lcom/xiaomi/c/b;)I

    .line 110
    iget-object v0, p0, Lcom/xiaomi/c/d;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 111
    return-void
.end method
