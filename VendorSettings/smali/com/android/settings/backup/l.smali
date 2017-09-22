.class public final Lcom/android/vendorsettings/backup/l;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SettingProtos.java"

# interfaces
.implements Lcom/android/vendorsettings/backup/m;


# instance fields
.field private bitField0_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private value_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1503
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1641
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/l;->guid_:Ljava/lang/Object;

    .line 1677
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/l;->luid_:Ljava/lang/Object;

    .line 1713
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/l;->name_:Ljava/lang/Object;

    .line 1504
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/l;->mb()V

    .line 1505
    return-void
.end method

.method private mb()V
    .locals 0

    .prologue
    .line 1508
    return-void
.end method

.method private static mc()Lcom/android/vendorsettings/backup/l;
    .locals 1

    .prologue
    .line 1510
    new-instance v0, Lcom/android/vendorsettings/backup/l;

    invoke-direct {v0}, Lcom/android/vendorsettings/backup/l;-><init>()V

    return-object v0
.end method

.method static synthetic mh()Lcom/android/vendorsettings/backup/l;
    .locals 1

    .prologue
    .line 1498
    invoke-static {}, Lcom/android/vendorsettings/backup/l;->mc()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/vendorsettings/backup/l;
    .locals 2

    .prologue
    .line 1602
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1603
    sparse-switch v0, :sswitch_data_0

    .line 1608
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vendorsettings/backup/l;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    :sswitch_0
    return-object p0

    .line 1615
    :sswitch_1
    iget v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1616
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/l;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 1620
    :sswitch_2
    iget v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1621
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/l;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 1625
    :sswitch_3
    iget v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1626
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/l;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1630
    :sswitch_4
    iget v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1631
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/backup/l;->value_:J

    goto :goto_0

    .line 1603
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public aA(Ljava/lang/String;)Lcom/android/vendorsettings/backup/l;
    .locals 1

    .prologue
    .line 1728
    if-nez p1, :cond_0

    .line 1729
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1731
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1732
    iput-object p1, p0, Lcom/android/vendorsettings/backup/l;->name_:Ljava/lang/Object;

    .line 1734
    return-object p0
.end method

.method public ay(Ljava/lang/String;)Lcom/android/vendorsettings/backup/l;
    .locals 1

    .prologue
    .line 1656
    if-nez p1, :cond_0

    .line 1657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1659
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1660
    iput-object p1, p0, Lcom/android/vendorsettings/backup/l;->guid_:Ljava/lang/Object;

    .line 1662
    return-object p0
.end method

.method public az(Ljava/lang/String;)Lcom/android/vendorsettings/backup/l;
    .locals 1

    .prologue
    .line 1692
    if-nez p1, :cond_0

    .line 1693
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1695
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1696
    iput-object p1, p0, Lcom/android/vendorsettings/backup/l;->luid_:Ljava/lang/Object;

    .line 1698
    return-object p0
.end method

.method public synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/l;->mf()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    move-result-object v0

    return-object v0
.end method

.method public synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/l;->mg()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;)Lcom/android/vendorsettings/backup/l;
    .locals 2

    .prologue
    .line 1577
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lP()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1590
    :cond_0
    :goto_0
    return-object p0

    .line 1578
    :cond_1
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1579
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/backup/l;->ay(Ljava/lang/String;)Lcom/android/vendorsettings/backup/l;

    .line 1581
    :cond_2
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lU()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1582
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/backup/l;->az(Ljava/lang/String;)Lcom/android/vendorsettings/backup/l;

    .line 1584
    :cond_3
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1585
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/backup/l;->aA(Ljava/lang/String;)Lcom/android/vendorsettings/backup/l;

    .line 1587
    :cond_4
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1588
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/backup/l;->o(J)Lcom/android/vendorsettings/backup/l;

    goto :goto_0
.end method

.method public synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/l;->md()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/l;->md()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/l;->me()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/l;->me()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/l;->me()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/l;->me()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/l;->lQ()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/l;->lQ()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1594
    const/4 v0, 0x1

    return v0
.end method

.method public lQ()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;
    .locals 1

    .prologue
    .line 1531
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lP()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    move-result-object v0

    return-object v0
.end method

.method public md()Lcom/android/vendorsettings/backup/l;
    .locals 2

    .prologue
    .line 1514
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1515
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/l;->guid_:Ljava/lang/Object;

    .line 1516
    iget v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1517
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/l;->luid_:Ljava/lang/Object;

    .line 1518
    iget v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1519
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/l;->name_:Ljava/lang/Object;

    .line 1520
    iget v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1521
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/vendorsettings/backup/l;->value_:J

    .line 1522
    iget v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1523
    return-object p0
.end method

.method public me()Lcom/android/vendorsettings/backup/l;
    .locals 2

    .prologue
    .line 1527
    invoke-static {}, Lcom/android/vendorsettings/backup/l;->mc()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/l;->mg()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/backup/l;->c(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;)Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/backup/l;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1498
    check-cast p1, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/backup/l;->c(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;)Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/backup/l;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    return-object v0
.end method

.method public mf()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;
    .locals 2

    .prologue
    .line 1535
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/l;->mg()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    move-result-object v0

    .line 1536
    invoke-virtual {v0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1537
    invoke-static {v0}, Lcom/android/vendorsettings/backup/l;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1539
    :cond_0
    return-object v0
.end method

.method public mg()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 1553
    new-instance v2, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;-><init>(Lcom/android/vendorsettings/backup/l;Lcom/android/vendorsettings/backup/k;)V

    .line 1554
    iget v3, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1555
    const/4 v1, 0x0

    .line 1556
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    .line 1559
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/backup/l;->guid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->a(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1561
    or-int/lit8 v0, v0, 0x2

    .line 1563
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/backup/l;->luid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->b(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 1565
    or-int/lit8 v0, v0, 0x4

    .line 1567
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/backup/l;->name_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->c(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 1569
    or-int/lit8 v0, v0, 0x8

    .line 1571
    :cond_2
    iget-wide v4, p0, Lcom/android/vendorsettings/backup/l;->value_:J

    invoke-static {v2, v4, v5}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->a(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;J)J

    .line 1572
    invoke-static {v2, v0}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->a(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;I)I

    .line 1573
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public o(J)Lcom/android/vendorsettings/backup/l;
    .locals 1

    .prologue
    .line 1757
    iget v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/vendorsettings/backup/l;->bitField0_:I

    .line 1758
    iput-wide p1, p0, Lcom/android/vendorsettings/backup/l;->value_:J

    .line 1760
    return-object p0
.end method
