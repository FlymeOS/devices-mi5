.class public Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;
.super Ljava/lang/Object;
.source "XmPushActionCustomConfig.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field public static final bgC:Ljava/util/Map;

.field private static final bgr:Lorg/apache/thrift/protocol/g;

.field private static final boP:Lorg/apache/thrift/protocol/a;


# instance fields
.field public customConfigs:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x1

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionCustomConfig"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->bgr:Lorg/apache/thrift/protocol/g;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "customConfigs"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->boP:Lorg/apache/thrift/protocol/a;

    .line 101
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 102
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;->boQ:Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "customConfigs"

    new-instance v4, Lorg/apache/thrift/meta_data/ListMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/StructMetaData;

    const/16 v6, 0xc

    const-class v7, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    invoke-direct {v5, v6, v7}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/ListMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->bgC:Ljava/util/Map;

    .line 106
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public LR()Ljava/util/List;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    return-object v0
.end method

.method public LS()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

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
    .line 267
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 270
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 271
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 298
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 301
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->validate()V

    .line 302
    return-void

    .line 274
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 294
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 296
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 276
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 278
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MR()Lorg/apache/thrift/protocol/b;

    move-result-object v1

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    .line 280
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    if-ge v0, v2, :cond_1

    .line 283
    new-instance v2, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;-><init>()V

    .line 284
    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->a(Lorg/apache/thrift/protocol/d;)V

    .line 285
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 287
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MS()V

    goto :goto_1

    .line 290
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 225
    if-nez p1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->LS()Z

    move-result v1

    .line 229
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->LS()Z

    move-result v2

    .line 230
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 231
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 233
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;)I
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
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

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->LS()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->LS()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 249
    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->LS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 254
    if-nez v0, :cond_0

    .line 258
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->validate()V

    .line 307
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 308
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 309
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->boP:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 311
    new-instance v0, Lorg/apache/thrift/protocol/b;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/b;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/b;)V

    .line 312
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    .line 314
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->b(Lorg/apache/thrift/protocol/d;)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MK()V

    .line 318
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 320
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 321
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 322
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 217
    if-nez p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;

    if-eqz v1, :cond_0

    .line 220
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmPushActionCustomConfig("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    const-string v1, "customConfigs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 331
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->customConfigs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'customConfigs\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    return-void
.end method
