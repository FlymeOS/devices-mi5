.class public Lcom/xiaomi/xmpush/thrift/NormalConfig;
.super Ljava/lang/Object;
.source "NormalConfig.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field public static final bgC:Ljava/util/Map;

.field private static final bgr:Lorg/apache/thrift/protocol/g;

.field private static final bgt:Lorg/apache/thrift/protocol/a;

.field private static final bly:Lorg/apache/thrift/protocol/a;

.field private static final blz:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public configItems:Ljava/util/List;

.field public type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/16 v5, 0x8

    const/4 v8, 0x1

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "NormalConfig"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->bgr:Lorg/apache/thrift/protocol/g;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "version"

    invoke-direct {v0, v1, v5, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->bly:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "configItems"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->blz:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "type"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->bgt:Lorg/apache/thrift/protocol/a;

    .line 124
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 125
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->blA:Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "version"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->blB:Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "configItems"

    new-instance v4, Lorg/apache/thrift/meta_data/ListMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/StructMetaData;

    const/16 v6, 0xc

    const-class v7, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    invoke-direct {v5, v6, v7}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/ListMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->blC:Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "type"

    new-instance v4, Lorg/apache/thrift/meta_data/EnumMetaData;

    const/16 v5, 0x10

    const-class v6, Lcom/xiaomi/xmpush/thrift/ConfigListType;

    invoke-direct {v4, v5, v6}, Lorg/apache/thrift/meta_data/EnumMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->bgC:Ljava/util/Map;

    .line 133
    const-class v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->__isset_bit_vector:Ljava/util/BitSet;

    .line 137
    return-void
.end method


# virtual methods
.method public Jf()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KA()Lcom/xiaomi/xmpush/thrift/ConfigListType;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    return-object v0
.end method

.method public Ky()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Kz()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 432
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 435
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 436
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 478
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 481
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Ky()Z

    move-result v0

    if-nez v0, :cond_5

    .line 482
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 474
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 476
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 441
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_1

    .line 442
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    .line 443
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->cs(Z)V

    goto :goto_1

    .line 445
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 449
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 451
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MR()Lorg/apache/thrift/protocol/b;

    move-result-object v1

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    .line 453
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    if-ge v0, v2, :cond_2

    .line 456
    new-instance v2, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;-><init>()V

    .line 457
    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->a(Lorg/apache/thrift/protocol/d;)V

    .line 458
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 460
    :cond_2
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MS()V

    goto :goto_1

    .line 463
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 467
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_4

    .line 468
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/ConfigListType;->fu(I)Lcom/xiaomi/xmpush/thrift/ConfigListType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    goto :goto_1

    .line 470
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 484
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->validate()V

    .line 485
    return-void

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/NormalConfig;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 347
    if-nez p1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    if-ne v1, v2, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Kz()Z

    move-result v1

    .line 360
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Kz()Z

    move-result v2

    .line 361
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 362
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 364
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Jf()Z

    move-result v1

    .line 369
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Jf()Z

    move-result v2

    .line 370
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 371
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 373
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/ConfigListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/NormalConfig;)I
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
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

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Ky()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Ky()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 394
    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Ky()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 399
    if-nez v0, :cond_0

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Kz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Kz()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 404
    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Kz()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 409
    if-nez v0, :cond_0

    .line 413
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Jf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Jf()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 414
    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->Jf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 418
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 419
    if-nez v0, :cond_0

    .line 423
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->validate()V

    .line 490
    sget-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 491
    sget-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->bly:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 492
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 493
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 494
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 495
    sget-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->blz:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 497
    new-instance v0, Lorg/apache/thrift/protocol/b;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/b;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/b;)V

    .line 498
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    .line 500
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->b(Lorg/apache/thrift/protocol/d;)V

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MK()V

    .line 504
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    if-eqz v0, :cond_2

    .line 507
    sget-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->bgt:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 508
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ConfigListType;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 509
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 511
    :cond_2
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 512
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 513
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->b(Lcom/xiaomi/xmpush/thrift/NormalConfig;)I

    move-result v0

    return v0
.end method

.method public cs(Z)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 203
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 339
    if-nez p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;

    if-eqz v1, :cond_0

    .line 342
    check-cast p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->a(Lcom/xiaomi/xmpush/thrift/NormalConfig;)Z

    move-result v0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NormalConfig("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v1, "configItems:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    if-nez v1, :cond_0

    .line 526
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    if-nez v1, :cond_1

    .line 534
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'configItems\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    if-nez v0, :cond_1

    .line 550
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'type\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_1
    return-void
.end method
