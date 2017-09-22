.class public Lcom/xiaomi/push/thrift/StatsEvents;
.super Ljava/lang/Object;
.source "StatsEvents.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field public static final bgC:Ljava/util/Map;

.field private static final bgP:Lorg/apache/thrift/protocol/a;

.field private static final bgQ:Lorg/apache/thrift/protocol/a;

.field private static final bgR:Lorg/apache/thrift/protocol/a;

.field private static final bgr:Lorg/apache/thrift/protocol/g;


# instance fields
.field public events:Ljava/util/List;

.field public operator:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/16 v5, 0xb

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "StatsEvents"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->bgr:Lorg/apache/thrift/protocol/g;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "uuid"

    invoke-direct {v0, v1, v5, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->bgP:Lorg/apache/thrift/protocol/a;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "operator"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->bgQ:Lorg/apache/thrift/protocol/a;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "events"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->bgR:Lorg/apache/thrift/protocol/a;

    .line 105
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 106
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgS:Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "uuid"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgT:Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "operator"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgU:Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "events"

    new-instance v4, Lorg/apache/thrift/meta_data/ListMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/StructMetaData;

    const/16 v6, 0xc

    const-class v7, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-direct {v5, v6, v7}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/ListMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->bgC:Ljava/util/Map;

    .line 114
    const-class v0, Lcom/xiaomi/push/thrift/StatsEvents;

    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvents;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/xiaomi/push/thrift/StatsEvents;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    .line 127
    return-void
.end method


# virtual methods
.method public Jo()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Jp()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Jq()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

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
    const/16 v4, 0xb

    .line 402
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 405
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 406
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 447
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 450
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->validate()V

    .line 451
    return-void

    .line 409
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 443
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 445
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 411
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_1

    .line 412
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    goto :goto_1

    .line 414
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 418
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_2

    .line 419
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    goto :goto_1

    .line 421
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 425
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_4

    .line 427
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MR()Lorg/apache/thrift/protocol/b;

    move-result-object v1

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    .line 429
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    if-ge v0, v2, :cond_3

    .line 432
    new-instance v2, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-direct {v2}, Lcom/xiaomi/push/thrift/StatsEvent;-><init>()V

    .line 433
    invoke-virtual {v2, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->a(Lorg/apache/thrift/protocol/d;)V

    .line 434
    iget-object v3, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 436
    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MS()V

    goto :goto_1

    .line 439
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/push/thrift/StatsEvents;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 317
    if-nez p1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->Jo()Z

    move-result v1

    .line 321
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvents;->Jo()Z

    move-result v2

    .line 322
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 323
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 325
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->Jp()Z

    move-result v1

    .line 330
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvents;->Jp()Z

    move-result v2

    .line 331
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 332
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 334
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->Jq()Z

    move-result v1

    .line 339
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvents;->Jq()Z

    move-result v2

    .line 340
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 341
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 343
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/push/thrift/StatsEvents;)I
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
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

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->Jo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvents;->Jo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 364
    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->Jo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 369
    if-nez v0, :cond_0

    .line 373
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->Jp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvents;->Jp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 374
    if-nez v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->Jp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 379
    if-nez v0, :cond_0

    .line 383
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->Jq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvents;->Jq()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 384
    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->Jq()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 389
    if-nez v0, :cond_0

    .line 393
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->validate()V

    .line 456
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 457
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->bgP:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 459
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 463
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->Jp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->bgQ:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 465
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 470
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->bgR:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 472
    new-instance v0, Lorg/apache/thrift/protocol/b;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/b;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/b;)V

    .line 473
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/thrift/StatsEvent;

    .line 475
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->b(Lorg/apache/thrift/protocol/d;)V

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MK()V

    .line 479
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 481
    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 482
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 483
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/push/thrift/StatsEvents;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/thrift/StatsEvents;->b(Lcom/xiaomi/push/thrift/StatsEvents;)I

    move-result v0

    return v0
.end method

.method public eo(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvents;
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 309
    if-nez p1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/push/thrift/StatsEvents;

    if-eqz v1, :cond_0

    .line 312
    check-cast p1, Lcom/xiaomi/push/thrift/StatsEvents;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/thrift/StatsEvents;->a(Lcom/xiaomi/push/thrift/StatsEvents;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatsEvents("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    const-string v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 492
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->Jp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v1, "operator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 501
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_0
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string v1, "events:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    if-nez v1, :cond_3

    .line 510
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 494
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 503
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 512
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'uuid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    if-nez v0, :cond_1

    .line 525
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'events\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_1
    return-void
.end method
