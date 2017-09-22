.class public final Lcom/android/settings/backup/r;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SettingProtos.java"

# interfaces
.implements Lcom/android/settings/backup/s;


# instance fields
.field private bitField0_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 459
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/backup/r;->guid_:Ljava/lang/Object;

    .line 495
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/backup/r;->luid_:Ljava/lang/Object;

    .line 531
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/backup/r;->name_:Ljava/lang/Object;

    .line 567
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/backup/r;->value_:Ljava/lang/Object;

    .line 322
    invoke-direct {p0}, Lcom/android/settings/backup/r;->mb()V

    .line 323
    return-void
.end method

.method private static mQ()Lcom/android/settings/backup/r;
    .locals 1

    .prologue
    .line 328
    new-instance v0, Lcom/android/settings/backup/r;

    invoke-direct {v0}, Lcom/android/settings/backup/r;-><init>()V

    return-object v0
.end method

.method static synthetic mV()Lcom/android/settings/backup/r;
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/android/settings/backup/r;->mQ()Lcom/android/settings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method private mb()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method


# virtual methods
.method public aF(Ljava/lang/String;)Lcom/android/settings/backup/r;
    .locals 1

    .prologue
    .line 474
    if-nez p1, :cond_0

    .line 475
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 477
    :cond_0
    iget v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 478
    iput-object p1, p0, Lcom/android/settings/backup/r;->guid_:Ljava/lang/Object;

    .line 480
    return-object p0
.end method

.method public aG(Ljava/lang/String;)Lcom/android/settings/backup/r;
    .locals 1

    .prologue
    .line 510
    if-nez p1, :cond_0

    .line 511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 513
    :cond_0
    iget v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 514
    iput-object p1, p0, Lcom/android/settings/backup/r;->luid_:Ljava/lang/Object;

    .line 516
    return-object p0
.end method

.method public aH(Ljava/lang/String;)Lcom/android/settings/backup/r;
    .locals 1

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 549
    :cond_0
    iget v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 550
    iput-object p1, p0, Lcom/android/settings/backup/r;->name_:Ljava/lang/Object;

    .line 552
    return-object p0
.end method

.method public aI(Ljava/lang/String;)Lcom/android/settings/backup/r;
    .locals 1

    .prologue
    .line 582
    if-nez p1, :cond_0

    .line 583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 585
    :cond_0
    iget v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 586
    iput-object p1, p0, Lcom/android/settings/backup/r;->value_:Ljava/lang/Object;

    .line 588
    return-object p0
.end method

.method public synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/backup/r;->mT()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    return-object v0
.end method

.method public synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/backup/r;->mU()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/backup/r;->mR()Lcom/android/settings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/backup/r;->mR()Lcom/android/settings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/backup/r;->mS()Lcom/android/settings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/backup/r;->mS()Lcom/android/settings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/backup/r;->mS()Lcom/android/settings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/backup/r;->mS()Lcom/android/settings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Lcom/android/settings/backup/r;
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->mL()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-object p0

    .line 396
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->lR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->lS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/backup/r;->aF(Ljava/lang/String;)Lcom/android/settings/backup/r;

    .line 399
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->lU()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->lV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/backup/r;->aG(Ljava/lang/String;)Lcom/android/settings/backup/r;

    .line 402
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 403
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/backup/r;->aH(Ljava/lang/String;)Lcom/android/settings/backup/r;

    .line 405
    :cond_4
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/backup/r;->aI(Ljava/lang/String;)Lcom/android/settings/backup/r;

    goto :goto_0
.end method

.method public d(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/r;
    .locals 1

    .prologue
    .line 420
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 421
    sparse-switch v0, :sswitch_data_0

    .line 426
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/backup/r;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    :sswitch_0
    return-object p0

    .line 433
    :sswitch_1
    iget v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 434
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/r;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 438
    :sswitch_2
    iget v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 439
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/r;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 443
    :sswitch_3
    iget v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 444
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/r;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 448
    :sswitch_4
    iget v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 449
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/r;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 421
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/backup/r;->mM()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/backup/r;->mM()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public mM()Lcom/android/settings/backup/SettingProtos$SystemSetting;
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->mL()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    return-object v0
.end method

.method public mR()Lcom/android/settings/backup/r;
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 333
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/backup/r;->guid_:Ljava/lang/Object;

    .line 334
    iget v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 335
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/backup/r;->luid_:Ljava/lang/Object;

    .line 336
    iget v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 337
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/backup/r;->name_:Ljava/lang/Object;

    .line 338
    iget v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/backup/r;->value_:Ljava/lang/Object;

    .line 340
    iget v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 341
    return-object p0
.end method

.method public mS()Lcom/android/settings/backup/r;
    .locals 2

    .prologue
    .line 345
    invoke-static {}, Lcom/android/settings/backup/r;->mQ()Lcom/android/settings/backup/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/backup/r;->mU()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/r;->d(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Lcom/android/settings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method public mT()Lcom/android/settings/backup/SettingProtos$SystemSetting;
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/settings/backup/r;->mU()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    invoke-static {v0}, Lcom/android/settings/backup/r;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 357
    :cond_0
    return-object v0
.end method

.method public mU()Lcom/android/settings/backup/SettingProtos$SystemSetting;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 371
    new-instance v2, Lcom/android/settings/backup/SettingProtos$SystemSetting;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;-><init>(Lcom/android/settings/backup/r;Lcom/android/settings/backup/k;)V

    .line 372
    iget v3, p0, Lcom/android/settings/backup/r;->bitField0_:I

    .line 373
    const/4 v1, 0x0

    .line 374
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    .line 377
    :goto_0
    iget-object v1, p0, Lcom/android/settings/backup/r;->guid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->a(Lcom/android/settings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 379
    or-int/lit8 v0, v0, 0x2

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/settings/backup/r;->luid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->b(Lcom/android/settings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 383
    or-int/lit8 v0, v0, 0x4

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/android/settings/backup/r;->name_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->c(Lcom/android/settings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 387
    or-int/lit8 v0, v0, 0x8

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/android/settings/backup/r;->value_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->d(Lcom/android/settings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-static {v2, v0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->a(Lcom/android/settings/backup/SettingProtos$SystemSetting;I)I

    .line 391
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/r;->d(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 316
    check-cast p1, Lcom/android/settings/backup/SettingProtos$SystemSetting;

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/r;->d(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Lcom/android/settings/backup/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/r;->d(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/r;

    move-result-object v0

    return-object v0
.end method
