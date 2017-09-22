.class public Lcom/xiaomi/xmpush/thrift/Target;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field public static final bgC:Ljava/util/Map;

.field private static final bgr:Lorg/apache/thrift/protocol/g;

.field private static final bnm:Lorg/apache/thrift/protocol/a;

.field private static final bnn:Lorg/apache/thrift/protocol/a;

.field private static final bno:Lorg/apache/thrift/protocol/a;

.field private static final bnp:Lorg/apache/thrift/protocol/a;

.field private static final bnq:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public channelId:J

.field public isPreview:Z

.field public resource:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/16 v6, 0xb

    const/4 v5, 0x2

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "Target"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bgr:Lorg/apache/thrift/protocol/g;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "channelId"

    invoke-direct {v0, v1, v8, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bnm:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "userId"

    invoke-direct {v0, v1, v6, v5}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bnn:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "server"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bno:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "resource"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bnp:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "isPreview"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bnq:Lorg/apache/thrift/protocol/a;

    .line 123
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 124
    sget-object v1, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnr:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "channelId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bns:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "userId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnt:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "server"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnu:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "resource"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnv:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "isPreview"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bgC:Ljava/util/Map;

    .line 135
    const-class v0, Lcom/xiaomi/xmpush/thrift/Target;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/Target;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->__isset_bit_vector:Ljava/util/BitSet;

    .line 139
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    .line 141
    const-string v0, "xiaomi.com"

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    .line 147
    return-void
.end method


# virtual methods
.method public Lj()Z
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Lk()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ll()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lm()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ln()Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0xb

    .line 533
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 536
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 537
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 583
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 586
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Lj()Z

    move-result v0

    if-nez v0, :cond_6

    .line 587
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'channelId\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 579
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 581
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 542
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 543
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    .line 544
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/Target;->cF(Z)V

    goto :goto_1

    .line 546
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 550
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_2

    .line 551
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    goto :goto_1

    .line 553
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 557
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_3

    .line 558
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    goto :goto_1

    .line 560
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 564
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_4

    .line 565
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    goto :goto_1

    .line 567
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 571
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 572
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    .line 573
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/Target;->cG(Z)V

    goto :goto_1

    .line 575
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 589
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->validate()V

    .line 590
    return-void

    .line 540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/Target;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 410
    if-nez p1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 418
    :cond_1
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Lk()Z

    move-result v1

    .line 423
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Target;->Lk()Z

    move-result v2

    .line 424
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 425
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 427
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Ll()Z

    move-result v1

    .line 432
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Target;->Ll()Z

    move-result v2

    .line 433
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 434
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 436
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Lm()Z

    move-result v1

    .line 441
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Target;->Lm()Z

    move-result v2

    .line 442
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 443
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 445
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Ln()Z

    move-result v1

    .line 450
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Target;->Ln()Z

    move-result v2

    .line 451
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 452
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 454
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    if-ne v1, v2, :cond_0

    .line 458
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/Target;)I
    .locals 4

    .prologue
    .line 467
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 524
    :cond_0
    :goto_0
    return v0

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Lj()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Target;->Lj()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 475
    if-nez v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Lj()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 480
    if-nez v0, :cond_0

    .line 484
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Lk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Target;->Lk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 485
    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Lk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 490
    if-nez v0, :cond_0

    .line 494
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Ll()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Target;->Ll()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 495
    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Ll()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 499
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 500
    if-nez v0, :cond_0

    .line 504
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Lm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Target;->Lm()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 505
    if-nez v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Lm()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 509
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 510
    if-nez v0, :cond_0

    .line 514
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Ln()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Target;->Ln()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 515
    if-nez v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Ln()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 519
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->f(ZZ)I

    move-result v0

    .line 520
    if-nez v0, :cond_0

    .line 524
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 2

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->validate()V

    .line 595
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 596
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bnm:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 597
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->O(J)V

    .line 598
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 599
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 600
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bnn:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 601
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 605
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Ll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bno:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 607
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 612
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Lm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bnp:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 614
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 618
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Ln()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->bnq:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 620
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->cW(Z)V

    .line 621
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 623
    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 624
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 625
    return-void
.end method

.method public cF(Z)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 216
    return-void
.end method

.method public cG(Z)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 311
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lcom/xiaomi/xmpush/thrift/Target;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 402
    if-nez p1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 404
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v1, :cond_0

    .line 405
    check-cast p1, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    const-string v1, "channelId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 635
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v1, "userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 638
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Ll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string v1, "server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 647
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Lm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 654
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    const-string v1, "resource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 657
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->Ln()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 664
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const-string v1, "isPreview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 669
    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 640
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 649
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 659
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 676
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'userId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_0
    return-void
.end method
