.class public final Lcom/android/vendorsettings/backup/n;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SettingProtos.java"

# interfaces
.implements Lcom/android/vendorsettings/backup/o;


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
    .line 923
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1061
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/n;->guid_:Ljava/lang/Object;

    .line 1097
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/n;->luid_:Ljava/lang/Object;

    .line 1133
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/n;->name_:Ljava/lang/Object;

    .line 1169
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/n;->value_:Ljava/lang/Object;

    .line 924
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/n;->mb()V

    .line 925
    return-void
.end method

.method private mb()V
    .locals 0

    .prologue
    .line 928
    return-void
.end method

.method private static mo()Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 930
    new-instance v0, Lcom/android/vendorsettings/backup/n;

    invoke-direct {v0}, Lcom/android/vendorsettings/backup/n;-><init>()V

    return-object v0
.end method

.method static synthetic mt()Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 918
    invoke-static {}, Lcom/android/vendorsettings/backup/n;->mo()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public aB(Ljava/lang/String;)Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 1076
    if-nez p1, :cond_0

    .line 1077
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1079
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 1080
    iput-object p1, p0, Lcom/android/vendorsettings/backup/n;->guid_:Ljava/lang/Object;

    .line 1082
    return-object p0
.end method

.method public aC(Ljava/lang/String;)Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 1112
    if-nez p1, :cond_0

    .line 1113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1115
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 1116
    iput-object p1, p0, Lcom/android/vendorsettings/backup/n;->luid_:Ljava/lang/Object;

    .line 1118
    return-object p0
.end method

.method public aD(Ljava/lang/String;)Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 1148
    if-nez p1, :cond_0

    .line 1149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1151
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 1152
    iput-object p1, p0, Lcom/android/vendorsettings/backup/n;->name_:Ljava/lang/Object;

    .line 1154
    return-object p0
.end method

.method public aE(Ljava/lang/String;)Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 1184
    if-nez p1, :cond_0

    .line 1185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1187
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 1188
    iput-object p1, p0, Lcom/android/vendorsettings/backup/n;->value_:Ljava/lang/Object;

    .line 1190
    return-object p0
.end method

.method public b(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 1022
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1023
    sparse-switch v0, :sswitch_data_0

    .line 1028
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vendorsettings/backup/n;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1030
    :sswitch_0
    return-object p0

    .line 1035
    :sswitch_1
    iget v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 1036
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/n;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 1040
    :sswitch_2
    iget v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 1041
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/n;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 1045
    :sswitch_3
    iget v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 1046
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/n;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1050
    :sswitch_4
    iget v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 1051
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/n;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 1023
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/n;->mr()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    return-object v0
.end method

.method public synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/n;->ms()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;)Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 997
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->mi()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-object p0

    .line 998
    :cond_1
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->lR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 999
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->lS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/backup/n;->aB(Ljava/lang/String;)Lcom/android/vendorsettings/backup/n;

    .line 1001
    :cond_2
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->lU()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1002
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->lV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/backup/n;->aC(Ljava/lang/String;)Lcom/android/vendorsettings/backup/n;

    .line 1004
    :cond_3
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1005
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/backup/n;->aD(Ljava/lang/String;)Lcom/android/vendorsettings/backup/n;

    .line 1007
    :cond_4
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {p1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/backup/n;->aE(Ljava/lang/String;)Lcom/android/vendorsettings/backup/n;

    goto :goto_0
.end method

.method public synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/n;->mp()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/n;->mp()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/n;->mq()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/n;->mq()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/n;->mq()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/n;->mq()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/n;->mj()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/n;->mj()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1014
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/backup/n;->b(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 918
    check-cast p1, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/backup/n;->c(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;)Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/backup/n;->b(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public mj()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;
    .locals 1

    .prologue
    .line 951
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->mi()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    return-object v0
.end method

.method public mp()Lcom/android/vendorsettings/backup/n;
    .locals 1

    .prologue
    .line 934
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 935
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/n;->guid_:Ljava/lang/Object;

    .line 936
    iget v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 937
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/n;->luid_:Ljava/lang/Object;

    .line 938
    iget v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 939
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/n;->name_:Ljava/lang/Object;

    .line 940
    iget v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 941
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vendorsettings/backup/n;->value_:Ljava/lang/Object;

    .line 942
    iget v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 943
    return-object p0
.end method

.method public mq()Lcom/android/vendorsettings/backup/n;
    .locals 2

    .prologue
    .line 947
    invoke-static {}, Lcom/android/vendorsettings/backup/n;->mo()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/n;->ms()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/backup/n;->c(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;)Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public mr()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;
    .locals 2

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/n;->ms()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    .line 956
    invoke-virtual {v0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 957
    invoke-static {v0}, Lcom/android/vendorsettings/backup/n;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 959
    :cond_0
    return-object v0
.end method

.method public ms()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 973
    new-instance v2, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;-><init>(Lcom/android/vendorsettings/backup/n;Lcom/android/vendorsettings/backup/k;)V

    .line 974
    iget v3, p0, Lcom/android/vendorsettings/backup/n;->bitField0_:I

    .line 975
    const/4 v1, 0x0

    .line 976
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    .line 979
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/backup/n;->guid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->a(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 981
    or-int/lit8 v0, v0, 0x2

    .line 983
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/backup/n;->luid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->b(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 985
    or-int/lit8 v0, v0, 0x4

    .line 987
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/backup/n;->name_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->c(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 989
    or-int/lit8 v0, v0, 0x8

    .line 991
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/backup/n;->value_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->d(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    invoke-static {v2, v0}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->a(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;I)I

    .line 993
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method
