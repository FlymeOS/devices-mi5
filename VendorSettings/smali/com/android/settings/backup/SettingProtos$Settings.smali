.class public final Lcom/android/vendorsettings/backup/SettingProtos$Settings;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SettingProtos.java"

# interfaces
.implements Lcom/android/vendorsettings/backup/q;


# static fields
.field private static final PX:Lcom/android/vendorsettings/backup/SettingProtos$Settings;

.field private static final serialVersionUID:J


# instance fields
.field private lock_:Ljava/util/List;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private secure_:Ljava/util/List;

.field private system_:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2437
    new-instance v0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;-><init>(Z)V

    sput-object v0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->PX:Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    .line 2438
    sget-object v0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->PX:Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    invoke-direct {v0}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->lX()V

    .line 2439
    return-void
.end method

.method private constructor <init>(Lcom/android/vendorsettings/backup/p;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1806
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1887
    iput-byte v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->memoizedIsInitialized:B

    .line 1910
    iput v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->memoizedSerializedSize:I

    .line 1807
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/backup/p;Lcom/android/vendorsettings/backup/k;)V
    .locals 0

    .prologue
    .line 1801
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;-><init>(Lcom/android/vendorsettings/backup/p;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1808
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1887
    iput-byte v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->memoizedIsInitialized:B

    .line 1910
    iput v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->memoizedSerializedSize:I

    .line 1808
    return-void
.end method

.method public static a(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Lcom/android/vendorsettings/backup/p;
    .locals 1

    .prologue
    .line 2009
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->mz()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/backup/p;->e(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/backup/SettingProtos$Settings;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 1801
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/backup/SettingProtos$Settings;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 1801
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/backup/SettingProtos$Settings;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 1801
    iput-object p1, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    return-object v0
.end method

.method private lX()V
    .locals 1

    .prologue
    .line 1883
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    .line 1884
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    .line 1885
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    .line 1886
    return-void
.end method

.method public static mu()Lcom/android/vendorsettings/backup/SettingProtos$Settings;
    .locals 1

    .prologue
    .line 1812
    sget-object v0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->PX:Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    return-object v0
.end method

.method public static mz()Lcom/android/vendorsettings/backup/p;
    .locals 1

    .prologue
    .line 2006
    invoke-static {}, Lcom/android/vendorsettings/backup/p;->mK()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1801
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->mv()Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1912
    iget v3, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->memoizedSerializedSize:I

    .line 1913
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    .line 1929
    :goto_0
    return v3

    :cond_0
    move v1, v2

    move v3, v2

    .line 1916
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1917
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1916
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1920
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1921
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1920
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1924
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1925
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1924
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1928
    :cond_3
    iput v3, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1889
    iget-byte v1, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->memoizedIsInitialized:B

    .line 1890
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 1893
    :goto_0
    return v0

    .line 1890
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1892
    :cond_1
    iput-byte v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public mA()Lcom/android/vendorsettings/backup/p;
    .locals 1

    .prologue
    .line 2007
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->mz()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public mB()Lcom/android/vendorsettings/backup/p;
    .locals 1

    .prologue
    .line 2011
    invoke-static {p0}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->a(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public mv()Lcom/android/vendorsettings/backup/SettingProtos$Settings;
    .locals 1

    .prologue
    .line 1816
    sget-object v0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->PX:Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    return-object v0
.end method

.method public mw()Ljava/util/List;
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    return-object v0
.end method

.method public mx()Ljava/util/List;
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    return-object v0
.end method

.method public my()Ljava/util/List;
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    return-object v0
.end method

.method public synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1801
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->mA()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1801
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->mB()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1936
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1898
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->getSerializedSize()I

    move v1, v2

    .line 1899
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1900
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1899
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1902
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1903
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1902
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1905
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1906
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1905
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1908
    :cond_2
    return-void
.end method
