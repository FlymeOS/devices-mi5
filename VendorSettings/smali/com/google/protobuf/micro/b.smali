.class public final Lcom/google/protobuf/micro/b;
.super Ljava/lang/Object;
.source "CodedInputStreamMicro.java"


# instance fields
.field private aWA:I

.field private aWB:I

.field private aWC:I

.field private aWD:I

.field private aWE:I

.field private aWF:I

.field private aWx:I

.field private aWy:I

.field private final aWz:Ljava/io/InputStream;

.field private final buffer:[B

.field private bufferSize:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWC:I

    .line 454
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWE:I

    .line 457
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWF:I

    .line 471
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/protobuf/micro/b;->buffer:[B

    .line 472
    iput v1, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    .line 473
    iput v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    .line 474
    iput-object p1, p0, Lcom/google/protobuf/micro/b;->aWz:Ljava/io/InputStream;

    .line 475
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWC:I

    .line 454
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWE:I

    .line 457
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWF:I

    .line 464
    iput-object p1, p0, Lcom/google/protobuf/micro/b;->buffer:[B

    .line 465
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    .line 466
    iput p2, p0, Lcom/google/protobuf/micro/b;->aWy:I

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/micro/b;->aWz:Ljava/io/InputStream;

    .line 468
    return-void
.end method

.method private EO()V
    .locals 2

    .prologue
    .line 550
    iget v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    .line 551
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWB:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    add-int/2addr v0, v1

    .line 552
    iget v1, p0, Lcom/google/protobuf/micro/b;->aWC:I

    if-le v0, v1, :cond_0

    .line 554
    iget v1, p0, Lcom/google/protobuf/micro/b;->aWC:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWx:I

    .line 555
    iget v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWx:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWx:I

    goto :goto_0
.end method

.method private bZ(Z)Z
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 601
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWy:I

    iget v3, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    if-ge v0, v3, :cond_0

    .line 602
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWB:I

    iget v3, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/protobuf/micro/b;->aWC:I

    if-ne v0, v3, :cond_2

    .line 608
    if-eqz p1, :cond_1

    .line 609
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->EQ()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    :cond_1
    move v0, v2

    .line 638
    :goto_0
    return v0

    .line 615
    :cond_2
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWB:I

    iget v3, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWB:I

    .line 617
    iput v2, p0, Lcom/google/protobuf/micro/b;->aWy:I

    .line 618
    iget-object v0, p0, Lcom/google/protobuf/micro/b;->aWz:Ljava/io/InputStream;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    .line 619
    iget v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    if-ge v0, v1, :cond_5

    .line 620
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/micro/b;->aWz:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/protobuf/micro/b;->buffer:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    .line 624
    :cond_5
    iget v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    if-ne v0, v1, :cond_7

    .line 625
    iput v2, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    .line 626
    if-eqz p1, :cond_6

    .line 627
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->EQ()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    :cond_6
    move v0, v2

    .line 629
    goto :goto_0

    .line 632
    :cond_7
    invoke-direct {p0}, Lcom/google/protobuf/micro/b;->EO()V

    .line 633
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWB:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWx:I

    add-int/2addr v0, v1

    .line 635
    iget v1, p0, Lcom/google/protobuf/micro/b;->aWF:I

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_9

    .line 636
    :cond_8
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->EX()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 638
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c([BII)Lcom/google/protobuf/micro/b;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/google/protobuf/micro/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/micro/b;-><init>([BII)V

    return-object v0
.end method

.method public static g(Ljava/io/InputStream;)Lcom/google/protobuf/micro/b;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/protobuf/micro/b;

    invoke-direct {v0, p0}, Lcom/google/protobuf/micro/b;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public EN()Lcom/google/protobuf/micro/a;
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawVarint32()I

    move-result v1

    .line 240
    iget v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/micro/b;->aWy:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/protobuf/micro/b;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/micro/b;->aWy:I

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/micro/a;->b([BII)Lcom/google/protobuf/micro/a;

    move-result-object v0

    .line 244
    iget v2, p0, Lcom/google/protobuf/micro/b;->aWy:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    .line 248
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/micro/b;->readRawBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/micro/a;->p([B)Lcom/google/protobuf/micro/a;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/protobuf/micro/c;)V
    .locals 3

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawVarint32()I

    move-result v0

    .line 226
    iget v1, p0, Lcom/google/protobuf/micro/b;->aWD:I

    iget v2, p0, Lcom/google/protobuf/micro/b;->aWE:I

    if-lt v1, v2, :cond_0

    .line 227
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->EW()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 229
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/b;->pushLimit(I)I

    move-result v0

    .line 230
    iget v1, p0, Lcom/google/protobuf/micro/b;->aWD:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/micro/b;->aWD:I

    .line 231
    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/c;->a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;

    .line 232
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/micro/b;->checkLastTagWas(I)V

    .line 233
    iget v1, p0, Lcom/google/protobuf/micro/b;->aWD:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/micro/b;->aWD:I

    .line 234
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/b;->popLimit(I)V

    .line 235
    return-void
.end method

.method public checkLastTagWas(I)V
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWA:I

    if-eq v0, p1, :cond_0

    .line 103
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->EU()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 105
    :cond_0
    return-void
.end method

.method public isAtEnd()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 590
    iget v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    iget v2, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/b;->bZ(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public popLimit(I)V
    .locals 0

    .prologue
    .line 567
    iput p1, p0, Lcom/google/protobuf/micro/b;->aWC:I

    .line 568
    invoke-direct {p0}, Lcom/google/protobuf/micro/b;->EO()V

    .line 569
    return-void
.end method

.method public pushLimit(I)I
    .locals 2

    .prologue
    .line 534
    if-gez p1, :cond_0

    .line 535
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->ER()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 537
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWB:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 538
    iget v1, p0, Lcom/google/protobuf/micro/b;->aWC:I

    .line 539
    if-le v0, v1, :cond_1

    .line 540
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->EQ()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 542
    :cond_1
    iput v0, p0, Lcom/google/protobuf/micro/b;->aWC:I

    .line 544
    invoke-direct {p0}, Lcom/google/protobuf/micro/b;->EO()V

    .line 546
    return v1
.end method

.method public readBool()Z
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readInt32()I
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readRawByte()B
    .locals 3

    .prologue
    .line 649
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWy:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    if-ne v0, v1, :cond_0

    .line 650
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/b;->bZ(Z)Z

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/micro/b;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/micro/b;->aWy:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 11

    .prologue
    const/16 v10, 0x1000

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 662
    if-gez p1, :cond_0

    .line 663
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->ER()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 666
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWB:I

    iget v2, p0, Lcom/google/protobuf/micro/b;->aWy:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Lcom/google/protobuf/micro/b;->aWC:I

    if-le v0, v2, :cond_1

    .line 668
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWC:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWB:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/b;->skipRawBytes(I)V

    .line 670
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->EQ()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 673
    :cond_1
    iget v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/micro/b;->aWy:I

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_2

    .line 675
    new-array v0, p1, [B

    .line 676
    iget-object v2, p0, Lcom/google/protobuf/micro/b;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/micro/b;->aWy:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    iget v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    .line 761
    :goto_0
    return-object v0

    .line 679
    :cond_2
    if-ge p1, v10, :cond_4

    .line 684
    new-array v2, p1, [B

    .line 685
    iget v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/micro/b;->aWy:I

    sub-int/2addr v0, v3

    .line 686
    iget-object v3, p0, Lcom/google/protobuf/micro/b;->buffer:[B

    iget v4, p0, Lcom/google/protobuf/micro/b;->aWy:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    iget v3, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    iput v3, p0, Lcom/google/protobuf/micro/b;->aWy:I

    .line 692
    invoke-direct {p0, v5}, Lcom/google/protobuf/micro/b;->bZ(Z)Z

    .line 694
    :goto_1
    sub-int v3, p1, v0

    iget v4, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    if-le v3, v4, :cond_3

    .line 695
    iget-object v3, p0, Lcom/google/protobuf/micro/b;->buffer:[B

    iget v4, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    iget v3, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    add-int/2addr v0, v3

    .line 697
    iget v3, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    iput v3, p0, Lcom/google/protobuf/micro/b;->aWy:I

    .line 698
    invoke-direct {p0, v5}, Lcom/google/protobuf/micro/b;->bZ(Z)Z

    goto :goto_1

    .line 701
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/micro/b;->buffer:[B

    sub-int v4, p1, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWy:I

    move-object v0, v2

    .line 704
    goto :goto_0

    .line 716
    :cond_4
    iget v5, p0, Lcom/google/protobuf/micro/b;->aWy:I

    .line 717
    iget v6, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    .line 720
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWB:I

    iget v2, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWB:I

    .line 721
    iput v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    .line 722
    iput v1, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    .line 725
    sub-int v0, v6, v5

    sub-int v0, p1, v0

    .line 728
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    move v4, v0

    .line 730
    :goto_2
    if-lez v4, :cond_8

    .line 731
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v8, v0, [B

    move v0, v1

    .line 733
    :goto_3
    array-length v2, v8

    if-ge v0, v2, :cond_7

    .line 734
    iget-object v2, p0, Lcom/google/protobuf/micro/b;->aWz:Ljava/io/InputStream;

    if-nez v2, :cond_5

    move v2, v3

    .line 736
    :goto_4
    if-ne v2, v3, :cond_6

    .line 737
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->EQ()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 734
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/micro/b;->aWz:Ljava/io/InputStream;

    array-length v9, v8

    sub-int/2addr v9, v0

    .line 735
    invoke-virtual {v2, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_4

    .line 739
    :cond_6
    iget v9, p0, Lcom/google/protobuf/micro/b;->aWB:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/google/protobuf/micro/b;->aWB:I

    .line 740
    add-int/2addr v0, v2

    .line 741
    goto :goto_3

    .line 742
    :cond_7
    array-length v0, v8

    sub-int v0, v4, v0

    .line 743
    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v4, v0

    .line 744
    goto :goto_2

    .line 747
    :cond_8
    new-array v4, p1, [B

    .line 750
    sub-int v0, v6, v5

    .line 751
    iget-object v2, p0, Lcom/google/protobuf/micro/b;->buffer:[B

    invoke-static {v2, v5, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v1

    move v3, v0

    .line 754
    :goto_5
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 755
    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 756
    array-length v5, v0

    invoke-static {v0, v1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    array-length v0, v0

    add-int/2addr v3, v0

    .line 754
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_9
    move-object v0, v4

    .line 761
    goto/16 :goto_0
.end method

.method public readRawLittleEndian32()I
    .locals 4

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v0

    .line 376
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v1

    .line 377
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v2

    .line 378
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v3

    .line 379
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readRawLittleEndian64()J
    .locals 14

    .prologue
    const-wide/16 v12, 0xff

    .line 387
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v0

    .line 388
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v1

    .line 389
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v2

    .line 390
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v3

    .line 391
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v4

    .line 392
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v5

    .line 393
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v6

    .line 394
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v7

    .line 395
    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readRawVarint32()I
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v0

    .line 293
    if-ltz v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 297
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_2

    .line 298
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 300
    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 301
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_3

    .line 302
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    .line 304
    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 305
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_4

    .line 306
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    .line 308
    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 309
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 310
    if-gez v1, :cond_0

    .line 312
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 313
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v2

    if-gez v2, :cond_0

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 317
    :cond_5
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->ES()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0
.end method

.method public readRawVarint64()J
    .locals 6

    .prologue
    .line 360
    const/4 v2, 0x0

    .line 361
    const-wide/16 v0, 0x0

    .line 362
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawByte()B

    move-result v3

    .line 364
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 365
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 366
    return-wide v0

    .line 368
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 369
    goto :goto_0

    .line 370
    :cond_1
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->ES()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawVarint32()I

    move-result v1

    .line 198
    iget v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/micro/b;->aWy:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/micro/b;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/micro/b;->aWy:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 202
    iget v2, p0, Lcom/google/protobuf/micro/b;->aWy:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    .line 206
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/protobuf/micro/b;->readRawBytes(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public readTag()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iput v0, p0, Lcom/google/protobuf/micro/b;->aWA:I

    .line 89
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWA:I

    .line 85
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWA:I

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->ET()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 89
    :cond_1
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWA:I

    goto :goto_0
.end method

.method public readUInt32()I
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public skipField(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 114
    invoke-static {p1}, Lcom/google/protobuf/micro/d;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 136
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->EV()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readInt32()I

    .line 134
    :goto_0
    return v0

    .line 119
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawLittleEndian64()J

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawVarint32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/micro/b;->skipRawBytes(I)V

    goto :goto_0

    .line 125
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->skipMessage()V

    .line 127
    invoke-static {p1}, Lcom/google/protobuf/micro/d;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/d;->makeTag(II)I

    move-result v1

    .line 126
    invoke-virtual {p0, v1}, Lcom/google/protobuf/micro/b;->checkLastTagWas(I)V

    goto :goto_0

    .line 131
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readRawLittleEndian32()I

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 1

    .prologue
    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 147
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/b;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 772
    if-gez p1, :cond_0

    .line 773
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->ER()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 776
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWB:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWC:I

    if-le v0, v1, :cond_1

    .line 778
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWC:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWB:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/b;->skipRawBytes(I)V

    .line 780
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->EQ()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 783
    :cond_1
    iget v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_3

    .line 785
    iget v0, p0, Lcom/google/protobuf/micro/b;->aWy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWy:I

    .line 803
    :cond_2
    return-void

    .line 788
    :cond_3
    iget v0, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->aWy:I

    sub-int/2addr v0, v1

    .line 789
    iget v1, p0, Lcom/google/protobuf/micro/b;->aWB:I

    iget v2, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/micro/b;->aWB:I

    .line 790
    iput v3, p0, Lcom/google/protobuf/micro/b;->aWy:I

    .line 791
    iput v3, p0, Lcom/google/protobuf/micro/b;->bufferSize:I

    move v1, v0

    .line 794
    :goto_0
    if-ge v1, p1, :cond_2

    .line 795
    iget-object v0, p0, Lcom/google/protobuf/micro/b;->aWz:Ljava/io/InputStream;

    if-nez v0, :cond_4

    const/4 v0, -0x1

    .line 796
    :goto_1
    if-gtz v0, :cond_5

    .line 797
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->EQ()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 795
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/micro/b;->aWz:Ljava/io/InputStream;

    sub-int v2, p1, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_1

    .line 799
    :cond_5
    add-int/2addr v1, v0

    .line 800
    iget v2, p0, Lcom/google/protobuf/micro/b;->aWB:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/micro/b;->aWB:I

    goto :goto_0
.end method
