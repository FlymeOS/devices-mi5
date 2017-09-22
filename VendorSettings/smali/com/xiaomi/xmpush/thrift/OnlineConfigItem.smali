.class public Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;
.super Ljava/lang/Object;
.source "OnlineConfigItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field public static final bgC:Ljava/util/Map;

.field private static final bgr:Lorg/apache/thrift/protocol/g;

.field private static final bgt:Lorg/apache/thrift/protocol/a;

.field private static final bmf:Lorg/apache/thrift/protocol/a;

.field private static final bmg:Lorg/apache/thrift/protocol/a;

.field private static final bmh:Lorg/apache/thrift/protocol/a;

.field private static final bmi:Lorg/apache/thrift/protocol/a;

.field private static final bmj:Lorg/apache/thrift/protocol/a;

.field private static final bmk:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public boolValue:Z

.field public clear:Z

.field public intValue:I

.field public key:I

.field public longValue:J

.field public stringValue:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x2

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "OnlineConfigItem"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bgr:Lorg/apache/thrift/protocol/g;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "key"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bmf:Lorg/apache/thrift/protocol/a;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "type"

    invoke-direct {v0, v1, v6, v5}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bgt:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "clear"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bmg:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "intValue"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bmh:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "longValue"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bmi:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "stringValue"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bmj:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "boolValue"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bmk:Lorg/apache/thrift/protocol/a;

    .line 134
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 135
    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bml:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "key"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmm:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "type"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmn:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "clear"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmo:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "intValue"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmp:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "longValue"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmq:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "stringValue"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmr:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "boolValue"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bgC:Ljava/util/Map;

    .line 150
    const-class v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    .line 154
    return-void
.end method


# virtual methods
.method public Jf()Z
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public KB()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    return v0
.end method

.method public KC()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public KD()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public KE()Z
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public KF()J
    .locals 2

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    return-wide v0
.end method

.method public KG()Z
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public KH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public KI()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KJ()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    return v0
.end method

.method public KK()Z
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 640
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 643
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 644
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 708
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 711
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->validate()V

    .line 712
    return-void

    .line 647
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 704
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 706
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 649
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_1

    .line 650
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    .line 651
    invoke-virtual {p0, v3}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->ct(Z)V

    goto :goto_1

    .line 653
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 657
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_2

    .line 658
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    .line 659
    invoke-virtual {p0, v3}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->cm(Z)V

    goto :goto_1

    .line 661
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 665
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_3

    .line 666
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    .line 667
    invoke-virtual {p0, v3}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->cu(Z)V

    goto :goto_1

    .line 669
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 673
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_4

    .line 674
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    .line 675
    invoke-virtual {p0, v3}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->cv(Z)V

    goto :goto_1

    .line 677
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 681
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 682
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    .line 683
    invoke-virtual {p0, v3}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->cw(Z)V

    goto :goto_1

    .line 685
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 689
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    .line 690
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    goto :goto_1

    .line 692
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 696
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_7

    .line 697
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    .line 698
    invoke-virtual {p0, v3}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->cx(Z)V

    goto/16 :goto_1

    .line 700
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 479
    if-nez p1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v0

    .line 482
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KC()Z

    move-result v1

    .line 483
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KC()Z

    move-result v2

    .line 484
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 485
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 487
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    if-ne v1, v2, :cond_0

    .line 491
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->Jf()Z

    move-result v1

    .line 492
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->Jf()Z

    move-result v2

    .line 493
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 494
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 496
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    if-ne v1, v2, :cond_0

    .line 500
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KD()Z

    move-result v1

    .line 501
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KD()Z

    move-result v2

    .line 502
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 503
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 505
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    if-ne v1, v2, :cond_0

    .line 509
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KE()Z

    move-result v1

    .line 510
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KE()Z

    move-result v2

    .line 511
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 512
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 514
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    if-ne v1, v2, :cond_0

    .line 518
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KG()Z

    move-result v1

    .line 519
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KG()Z

    move-result v2

    .line 520
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 521
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 523
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 527
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KI()Z

    move-result v1

    .line 528
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KI()Z

    move-result v2

    .line 529
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 530
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 532
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KK()Z

    move-result v1

    .line 537
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KK()Z

    move-result v2

    .line 538
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 539
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 541
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    if-ne v1, v2, :cond_0

    .line 545
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;)I
    .locals 4

    .prologue
    .line 554
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
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

    .line 631
    :cond_0
    :goto_0
    return v0

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KC()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KC()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 562
    if-nez v0, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 567
    if-nez v0, :cond_0

    .line 571
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->Jf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->Jf()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 572
    if-nez v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->Jf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 577
    if-nez v0, :cond_0

    .line 581
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KD()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 582
    if-nez v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KD()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 586
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->f(ZZ)I

    move-result v0

    .line 587
    if-nez v0, :cond_0

    .line 591
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KE()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KE()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 592
    if-nez v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KE()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 596
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 597
    if-nez v0, :cond_0

    .line 601
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KG()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KG()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 602
    if-nez v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KG()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 606
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 607
    if-nez v0, :cond_0

    .line 611
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KI()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KI()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 612
    if-nez v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KI()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 616
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 617
    if-nez v0, :cond_0

    .line 621
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KK()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KK()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 622
    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KK()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 626
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->f(ZZ)I

    move-result v0

    .line 627
    if-nez v0, :cond_0

    .line 631
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 2

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->validate()V

    .line 717
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 718
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bmf:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 720
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 721
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->Jf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bgt:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 725
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 726
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 728
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KD()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bmg:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 730
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->cW(Z)V

    .line 731
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 733
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KE()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 734
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bmh:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 735
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 736
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 738
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 739
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bmi:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 740
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->O(J)V

    .line 741
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 743
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 744
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KI()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 745
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bmj:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 746
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 750
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KK()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 751
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->bmk:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 752
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->cW(Z)V

    .line 753
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 755
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 756
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 757
    return-void
.end method

.method public cm(Z)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 238
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->b(Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;)I

    move-result v0

    return v0
.end method

.method public ct(Z)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 215
    return-void
.end method

.method public cu(Z)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 261
    return-void
.end method

.method public cv(Z)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 284
    return-void
.end method

.method public cw(Z)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 307
    return-void
.end method

.method public cx(Z)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 354
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 471
    if-nez p1, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 473
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    if-eqz v1, :cond_0

    .line 474
    check-cast p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->a(Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "OnlineConfigItem("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 762
    const/4 v0, 0x1

    .line 764
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KC()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 765
    const-string v0, "key:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->Jf()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 770
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    :cond_1
    const-string v0, "type:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 775
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KD()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 776
    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_3
    const-string v0, "clear:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v0, v1

    .line 781
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KE()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 782
    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_5
    const-string v0, "intValue:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 787
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KG()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 788
    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :cond_7
    const-string v0, "longValue:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget-wide v4, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    .line 793
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KI()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 794
    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_9
    const-string v0, "stringValue:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 797
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KK()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 804
    if-nez v1, :cond_a

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    :cond_a
    const-string v0, "boolValue:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 809
    :cond_b
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 799
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_d
    move v1, v0

    goto :goto_0
.end method

.method public validate()V
    .locals 0

    .prologue
    .line 815
    return-void
.end method
