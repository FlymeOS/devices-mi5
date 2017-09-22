.class public Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;
.super Ljava/lang/Object;
.source "XmPushActionNormalConfig.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field public static final bgC:Ljava/util/Map;

.field private static final bgr:Lorg/apache/thrift/protocol/g;

.field private static final bmA:Lorg/apache/thrift/protocol/a;

.field private static final bmv:Lorg/apache/thrift/protocol/a;

.field private static final boS:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:J

.field public normalConfigs:Ljava/util/List;

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0xf

    const/16 v11, 0xb

    const/16 v10, 0xa

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionNormalConfig"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->bgr:Lorg/apache/thrift/protocol/g;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "normalConfigs"

    invoke-direct {v0, v1, v12, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->boS:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->bmv:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v11, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->bmA:Lorg/apache/thrift/protocol/a;

    .line 115
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 116
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->boT:Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "normalConfigs"

    new-instance v4, Lorg/apache/thrift/meta_data/ListMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/StructMetaData;

    const/16 v6, 0xc

    const-class v7, Lcom/xiaomi/xmpush/thrift/NormalConfig;

    invoke-direct {v5, v6, v7}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5}, Lorg/apache/thrift/meta_data/ListMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->boU:Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v10}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->boV:Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v11}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->bgC:Ljava/util/Map;

    .line 124
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->__isset_bit_vector:Ljava/util/BitSet;

    .line 128
    return-void
.end method


# virtual methods
.method public KN()Z
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public KU()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LT()Ljava/util/List;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    return-object v0
.end method

.method public LU()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 4

    .prologue
    .line 410
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 413
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 414
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 456
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 459
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->validate()V

    .line 460
    return-void

    .line 417
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 452
    :pswitch_0
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 454
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 419
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 421
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MR()Lorg/apache/thrift/protocol/b;

    move-result-object v1

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    .line 423
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    if-ge v0, v2, :cond_1

    .line 426
    new-instance v2, Lcom/xiaomi/xmpush/thrift/NormalConfig;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/NormalConfig;-><init>()V

    .line 427
    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->a(Lorg/apache/thrift/protocol/d;)V

    .line 428
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 430
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MS()V

    goto :goto_1

    .line 433
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 437
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 438
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->appId:J

    .line 439
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->cO(Z)V

    goto :goto_1

    .line 441
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 445
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    .line 446
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 448
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 325
    if-nez p1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->LU()Z

    move-result v1

    .line 329
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->LU()Z

    move-result v2

    .line 330
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 331
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 333
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KN()Z

    move-result v1

    .line 338
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KN()Z

    move-result v2

    .line 339
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 340
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 342
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->appId:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->appId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 346
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KU()Z

    move-result v1

    .line 347
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KU()Z

    move-result v2

    .line 348
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 349
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 351
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;)I
    .locals 4

    .prologue
    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
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

    .line 401
    :cond_0
    :goto_0
    return v0

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->LU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->LU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 372
    if-nez v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->LU()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 377
    if-nez v0, :cond_0

    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 382
    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 386
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->appId:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->appId:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 387
    if-nez v0, :cond_0

    .line 391
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 392
    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KU()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 397
    if-nez v0, :cond_0

    .line 401
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->validate()V

    .line 465
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 466
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 467
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->boS:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 469
    new-instance v0, Lorg/apache/thrift/protocol/b;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/b;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/b;)V

    .line 470
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;

    .line 472
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->b(Lorg/apache/thrift/protocol/d;)V

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MK()V

    .line 476
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->bmv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 480
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->appId:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->O(J)V

    .line 481
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 484
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KU()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->bmA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 486
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 490
    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 491
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 492
    return-void
.end method

.method public cO(Z)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 228
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 317
    if-nez p1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;

    if-eqz v1, :cond_0

    .line 320
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmPushActionNormalConfig("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    const-string v1, "normalConfigs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    if-nez v1, :cond_2

    .line 501
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->appId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->KU()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->packageName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 516
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_1
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 503
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 518
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->normalConfigs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'normalConfigs\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_0
    return-void
.end method
