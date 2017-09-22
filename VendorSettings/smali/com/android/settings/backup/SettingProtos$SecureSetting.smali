.class public final Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SettingProtos.java"

# interfaces
.implements Lcom/android/vendorsettings/backup/o;


# static fields
.field private static final PW:Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

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
    .line 1208
    new-instance v0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;-><init>(Z)V

    sput-object v0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->PW:Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    .line 1209
    sget-object v0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->PW:Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    invoke-direct {v0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->lX()V

    .line 1210
    return-void
.end method

.method private constructor <init>(Lcom/android/vendorsettings/backup/n;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 637
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 785
    iput-byte v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->memoizedIsInitialized:B

    .line 811
    iput v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->memoizedSerializedSize:I

    .line 638
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/backup/n;Lcom/android/vendorsettings/backup/k;)V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;-><init>(Lcom/android/vendorsettings/backup/n;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 639
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 785
    iput-byte v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->memoizedIsInitialized:B

    .line 811
    iput v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->memoizedSerializedSize:I

    .line 639
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;I)I
    .locals 0

    .prologue
    .line 632
    iput p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

    return p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method public static b(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;)Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 914
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->ml()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/backup/n;->c(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;)Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    .line 737
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 738
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 740
    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    .line 743
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private lT()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    .line 673
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 674
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 676
    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    .line 679
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private lW()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    .line 705
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 706
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 708
    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    .line 711
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private lX()V
    .locals 1

    .prologue
    .line 780
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    .line 781
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    .line 782
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    .line 783
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    .line 784
    return-void
.end method

.method public static mi()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;
    .locals 1

    .prologue
    .line 643
    sget-object v0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->PW:Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    return-object v0
.end method

.method private mk()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    .line 769
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 770
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 772
    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    .line 775
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public static ml()Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 911
    invoke-static {}, Lcom/android/vendorsettings/backup/n;->mt()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->mj()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    .line 723
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 724
    check-cast v0, Ljava/lang/String;

    .line 732
    :goto_0
    return-object v0

    .line 726
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 728
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    iput-object v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 732
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 813
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->memoizedSerializedSize:I

    .line 814
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 834
    :goto_0
    return v0

    .line 816
    :cond_0
    const/4 v0, 0x0

    .line 817
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 818
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->lT()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 821
    :cond_1
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 822
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->lW()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 825
    :cond_2
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 826
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 829
    :cond_3
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 830
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->mk()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 833
    :cond_4
    iput v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    .line 755
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 756
    check-cast v0, Ljava/lang/String;

    .line 764
    :goto_0
    return-object v0

    .line 758
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 760
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iput-object v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 764
    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 719
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

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
    .line 751
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

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

    .line 787
    iget-byte v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->memoizedIsInitialized:B

    .line 788
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 791
    :goto_0
    return v0

    .line 788
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 790
    :cond_1
    iput-byte v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public lR()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 655
    iget v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

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
    .line 658
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    .line 659
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 660
    check-cast v0, Ljava/lang/String;

    .line 668
    :goto_0
    return-object v0

    .line 662
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 664
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 665
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iput-object v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 668
    goto :goto_0
.end method

.method public lU()Z
    .locals 2

    .prologue
    .line 687
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

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
    .line 690
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    .line 691
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 692
    check-cast v0, Ljava/lang/String;

    .line 700
    :goto_0
    return-object v0

    .line 694
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 696
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 697
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    iput-object v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 700
    goto :goto_0
.end method

.method public mj()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;
    .locals 1

    .prologue
    .line 647
    sget-object v0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->PW:Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    return-object v0
.end method

.method public mm()Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 912
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->ml()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public mn()Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 916
    invoke-static {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->b(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;)Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->mm()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->mn()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 841
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

    .line 796
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->getSerializedSize()I

    .line 797
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 798
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->lT()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 800
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 801
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->lW()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 803
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 804
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 806
    :cond_2
    iget v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 807
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->mk()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 809
    :cond_3
    return-void
.end method
