.class public final Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SettingProtos.java"

# interfaces
.implements Lcom/android/vendorsettings/backup/m;


# static fields
.field private static final PV:Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1773
    new-instance v0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;-><init>(Z)V

    sput-object v0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->PV:Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    .line 1774
    sget-object v0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->PV:Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    invoke-direct {v0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lX()V

    .line 1775
    return-void
.end method

.method private constructor <init>(Lcom/android/vendorsettings/backup/l;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1239
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1365
    iput-byte v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->memoizedIsInitialized:B

    .line 1391
    iput v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->memoizedSerializedSize:I

    .line 1240
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/backup/l;Lcom/android/vendorsettings/backup/k;)V
    .locals 0

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;-><init>(Lcom/android/vendorsettings/backup/l;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1241
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1365
    iput-byte v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->memoizedIsInitialized:B

    .line 1391
    iput v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->memoizedSerializedSize:I

    .line 1241
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;I)I
    .locals 0

    .prologue
    .line 1234
    iput p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

    return p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;J)J
    .locals 1

    .prologue
    .line 1234
    iput-wide p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->value_:J

    return-wide p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method public static b(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;)Lcom/android/vendorsettings/backup/l;
    .locals 1

    .prologue
    .line 1494
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lY()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/backup/l;->c(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;)Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    .line 1339
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1340
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1342
    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    .line 1345
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public static lP()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;
    .locals 1

    .prologue
    .line 1245
    sget-object v0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->PV:Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    return-object v0
.end method

.method private lT()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    .line 1275
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1276
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1278
    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    .line 1281
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private lW()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    .line 1307
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1308
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1310
    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    .line 1313
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private lX()V
    .locals 2

    .prologue
    .line 1360
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    .line 1361
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    .line 1362
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    .line 1363
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->value_:J

    .line 1364
    return-void
.end method

.method public static lY()Lcom/android/vendorsettings/backup/l;
    .locals 1

    .prologue
    .line 1491
    invoke-static {}, Lcom/android/vendorsettings/backup/l;->mh()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lQ()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    .line 1325
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1326
    check-cast v0, Ljava/lang/String;

    .line 1334
    :goto_0
    return-object v0

    .line 1328
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1330
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1331
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1332
    iput-object v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1334
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1393
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->memoizedSerializedSize:I

    .line 1394
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1414
    :goto_0
    return v0

    .line 1396
    :cond_0
    const/4 v0, 0x0

    .line 1397
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1398
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lT()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1401
    :cond_1
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1402
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lW()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1405
    :cond_2
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 1406
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1409
    :cond_3
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 1410
    iget-wide v2, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->value_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1413
    :cond_4
    iput v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 1356
    iget-wide v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->value_:J

    return-wide v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 1321
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

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
    .line 1353
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

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

    .line 1367
    iget-byte v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->memoizedIsInitialized:B

    .line 1368
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 1371
    :goto_0
    return v0

    .line 1368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1370
    :cond_1
    iput-byte v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public lQ()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;
    .locals 1

    .prologue
    .line 1249
    sget-object v0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->PV:Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    return-object v0
.end method

.method public lR()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1257
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

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
    .line 1260
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    .line 1261
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1262
    check-cast v0, Ljava/lang/String;

    .line 1270
    :goto_0
    return-object v0

    .line 1264
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1266
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1267
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1268
    iput-object v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1270
    goto :goto_0
.end method

.method public lU()Z
    .locals 2

    .prologue
    .line 1289
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

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
    .line 1292
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    .line 1293
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1294
    check-cast v0, Ljava/lang/String;

    .line 1302
    :goto_0
    return-object v0

    .line 1296
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1298
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1299
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1300
    iput-object v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1302
    goto :goto_0
.end method

.method public lZ()Lcom/android/vendorsettings/backup/l;
    .locals 1

    .prologue
    .line 1492
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lY()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public ma()Lcom/android/vendorsettings/backup/l;
    .locals 1

    .prologue
    .line 1496
    invoke-static {p0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->b(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;)Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lZ()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->ma()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1421
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

    .line 1376
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->getSerializedSize()I

    .line 1377
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1378
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lT()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1380
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1381
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lW()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1383
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 1384
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1386
    :cond_2
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 1387
    iget-wide v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->value_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    .line 1389
    :cond_3
    return-void
.end method
