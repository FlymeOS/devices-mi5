.class public final Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SettingProtos.java"

# interfaces
.implements Lcom/android/vendorsettings/backup/s;


# static fields
.field private static final PY:Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 606
    new-instance v0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;-><init>(Z)V

    sput-object v0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->PY:Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;

    .line 607
    sget-object v0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->PY:Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;

    invoke-direct {v0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->lX()V

    .line 608
    return-void
.end method

.method private constructor <init>(Lcom/android/vendorsettings/backup/r;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 183
    iput-byte v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->memoizedIsInitialized:B

    .line 209
    iput v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->memoizedSerializedSize:I

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/backup/r;Lcom/android/vendorsettings/backup/k;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;-><init>(Lcom/android/vendorsettings/backup/r;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 183
    iput-byte v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->memoizedIsInitialized:B

    .line 209
    iput v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    return p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method public static c(Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;)Lcom/android/vendorsettings/backup/r;
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->mN()Lcom/android/vendorsettings/backup/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/backup/r;->d(Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;)Lcom/android/vendorsettings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    .line 135
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private lT()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    .line 71
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    .line 77
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private lW()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    .line 103
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    .line 109
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private lX()V
    .locals 1

    .prologue
    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public static mL()Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->PY:Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;

    return-object v0
.end method

.method public static mN()Lcom/android/vendorsettings/backup/r;
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/android/vendorsettings/backup/r;->mV()Lcom/android/vendorsettings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method private mk()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    .line 167
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 168
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    .line 173
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->mM()Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    .line 121
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 122
    check-cast v0, Ljava/lang/String;

    .line 130
    :goto_0
    return-object v0

    .line 124
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 126
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iput-object v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 130
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 211
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->memoizedSerializedSize:I

    .line 212
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 232
    :goto_0
    return v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 215
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->lT()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    :cond_1
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 220
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->lW()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    :cond_2
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 224
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    :cond_3
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 228
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->mk()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    :cond_4
    iput v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    .line 153
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 154
    check-cast v0, Ljava/lang/String;

    .line 162
    :goto_0
    return-object v0

    .line 156
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 158
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iput-object v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 162
    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 185
    iget-byte v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->memoizedIsInitialized:B

    .line 186
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 189
    :goto_0
    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_1
    iput-byte v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public lR()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 53
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    .line 57
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Ljava/lang/String;

    .line 66
    :goto_0
    return-object v0

    .line 60
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 62
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iput-object v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 66
    goto :goto_0
.end method

.method public lU()Z
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lV()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    .line 89
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Ljava/lang/String;

    .line 98
    :goto_0
    return-object v0

    .line 92
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 94
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iput-object v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 98
    goto :goto_0
.end method

.method public mM()Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->PY:Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;

    return-object v0
.end method

.method public mO()Lcom/android/vendorsettings/backup/r;
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->mN()Lcom/android/vendorsettings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method public mP()Lcom/android/vendorsettings/backup/r;
    .locals 1

    .prologue
    .line 314
    invoke-static {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->c(Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;)Lcom/android/vendorsettings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->mO()Lcom/android/vendorsettings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->mP()Lcom/android/vendorsettings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 194
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->getSerializedSize()I

    .line 195
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->lT()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 198
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->lW()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 201
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 202
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 204
    :cond_2
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->mk()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 207
    :cond_3
    return-void
.end method
