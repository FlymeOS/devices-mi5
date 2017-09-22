.class public final Lcom/android/vendorsettings/backup/p;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SettingProtos.java"

# interfaces
.implements Lcom/android/vendorsettings/backup/q;


# instance fields
.field private bitField0_:I

.field private lock_:Ljava/util/List;

.field private secure_:Ljava/util/List;

.field private system_:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2018
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/p;->system_:Ljava/util/List;

    .line 2256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/p;->secure_:Ljava/util/List;

    .line 2345
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/p;->lock_:Ljava/util/List;

    .line 2019
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/p;->mb()V

    .line 2020
    return-void
.end method

.method private static mC()Lcom/android/vendorsettings/backup/p;
    .locals 1

    .prologue
    .line 2025
    new-instance v0, Lcom/android/vendorsettings/backup/p;

    invoke-direct {v0}, Lcom/android/vendorsettings/backup/p;-><init>()V

    return-object v0
.end method

.method private mH()V
    .locals 2

    .prologue
    .line 2170
    iget v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2171
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/vendorsettings/backup/p;->system_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/vendorsettings/backup/p;->system_:Ljava/util/List;

    .line 2172
    iget v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    .line 2174
    :cond_0
    return-void
.end method

.method private mI()V
    .locals 2

    .prologue
    .line 2259
    iget v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2260
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/vendorsettings/backup/p;->secure_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/vendorsettings/backup/p;->secure_:Ljava/util/List;

    .line 2261
    iget v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    .line 2263
    :cond_0
    return-void
.end method

.method private mJ()V
    .locals 2

    .prologue
    .line 2348
    iget v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2349
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/vendorsettings/backup/p;->lock_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/vendorsettings/backup/p;->lock_:Ljava/util/List;

    .line 2350
    iget v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    .line 2352
    :cond_0
    return-void
.end method

.method static synthetic mK()Lcom/android/vendorsettings/backup/p;
    .locals 1

    .prologue
    .line 2013
    invoke-static {}, Lcom/android/vendorsettings/backup/p;->mC()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method private mb()V
    .locals 0

    .prologue
    .line 2023
    return-void
.end method


# virtual methods
.method public b(Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;)Lcom/android/vendorsettings/backup/p;
    .locals 1

    .prologue
    .line 2203
    if-nez p1, :cond_0

    .line 2204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2206
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/p;->mH()V

    .line 2207
    iget-object v0, p0, Lcom/android/vendorsettings/backup/p;->system_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2209
    return-object p0
.end method

.method public synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/p;->mF()Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    move-result-object v0

    return-object v0
.end method

.method public synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/p;->mG()Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/vendorsettings/backup/p;
    .locals 1

    .prologue
    .line 2130
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2131
    sparse-switch v0, :sswitch_data_0

    .line 2136
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vendorsettings/backup/p;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2138
    :sswitch_0
    return-object p0

    .line 2143
    :sswitch_1
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;->mN()Lcom/android/vendorsettings/backup/r;

    move-result-object v0

    .line 2144
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2145
    invoke-virtual {v0}, Lcom/android/vendorsettings/backup/r;->mU()Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/backup/p;->b(Lcom/android/vendorsettings/backup/SettingProtos$SystemSetting;)Lcom/android/vendorsettings/backup/p;

    goto :goto_0

    .line 2149
    :sswitch_2
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;->ml()Lcom/android/vendorsettings/backup/n;

    move-result-object v0

    .line 2150
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2151
    invoke-virtual {v0}, Lcom/android/vendorsettings/backup/n;->ms()Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/backup/p;->d(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;)Lcom/android/vendorsettings/backup/p;

    goto :goto_0

    .line 2155
    :sswitch_3
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;->lY()Lcom/android/vendorsettings/backup/l;

    move-result-object v0

    .line 2156
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2157
    invoke-virtual {v0}, Lcom/android/vendorsettings/backup/l;->mg()Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/backup/p;->d(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;)Lcom/android/vendorsettings/backup/p;

    goto :goto_0

    .line 2131
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/p;->mD()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/p;->mD()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/p;->mE()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/p;->mE()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/p;->mE()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/p;->mE()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/android/vendorsettings/backup/SettingProtos$LockSetting;)Lcom/android/vendorsettings/backup/p;
    .locals 1

    .prologue
    .line 2381
    if-nez p1, :cond_0

    .line 2382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2384
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/p;->mJ()V

    .line 2385
    iget-object v0, p0, Lcom/android/vendorsettings/backup/p;->lock_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2387
    return-object p0
.end method

.method public d(Lcom/android/vendorsettings/backup/SettingProtos$SecureSetting;)Lcom/android/vendorsettings/backup/p;
    .locals 1

    .prologue
    .line 2292
    if-nez p1, :cond_0

    .line 2293
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2295
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/p;->mI()V

    .line 2296
    iget-object v0, p0, Lcom/android/vendorsettings/backup/p;->secure_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2298
    return-object p0
.end method

.method public e(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Lcom/android/vendorsettings/backup/p;
    .locals 2

    .prologue
    .line 2087
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->mu()Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2118
    :cond_0
    :goto_0
    return-object p0

    .line 2088
    :cond_1
    invoke-static {p1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->b(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2089
    iget-object v0, p0, Lcom/android/vendorsettings/backup/p;->system_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2090
    invoke-static {p1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->b(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/p;->system_:Ljava/util/List;

    .line 2091
    iget v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    .line 2098
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->c(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2099
    iget-object v0, p0, Lcom/android/vendorsettings/backup/p;->secure_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2100
    invoke-static {p1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->c(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/p;->secure_:Ljava/util/List;

    .line 2101
    iget v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    .line 2108
    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->d(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/android/vendorsettings/backup/p;->lock_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2110
    invoke-static {p1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->d(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/p;->lock_:Ljava/util/List;

    .line 2111
    iget v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    goto :goto_0

    .line 2093
    :cond_4
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/p;->mH()V

    .line 2094
    iget-object v0, p0, Lcom/android/vendorsettings/backup/p;->system_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->b(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2103
    :cond_5
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/p;->mI()V

    .line 2104
    iget-object v0, p0, Lcom/android/vendorsettings/backup/p;->secure_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->c(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2113
    :cond_6
    invoke-direct {p0}, Lcom/android/vendorsettings/backup/p;->mJ()V

    .line 2114
    iget-object v0, p0, Lcom/android/vendorsettings/backup/p;->lock_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->d(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/p;->mv()Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/p;->mv()Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2122
    const/4 v0, 0x1

    return v0
.end method

.method public mD()Lcom/android/vendorsettings/backup/p;
    .locals 1

    .prologue
    .line 2029
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2030
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/p;->system_:Ljava/util/List;

    .line 2031
    iget v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    .line 2032
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/p;->secure_:Ljava/util/List;

    .line 2033
    iget v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    .line 2034
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/backup/p;->lock_:Ljava/util/List;

    .line 2035
    iget v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    .line 2036
    return-object p0
.end method

.method public mE()Lcom/android/vendorsettings/backup/p;
    .locals 2

    .prologue
    .line 2040
    invoke-static {}, Lcom/android/vendorsettings/backup/p;->mC()Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/p;->mG()Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/backup/p;->e(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public mF()Lcom/android/vendorsettings/backup/SettingProtos$Settings;
    .locals 2

    .prologue
    .line 2048
    invoke-virtual {p0}, Lcom/android/vendorsettings/backup/p;->mG()Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    move-result-object v0

    .line 2049
    invoke-virtual {v0}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2050
    invoke-static {v0}, Lcom/android/vendorsettings/backup/p;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2052
    :cond_0
    return-object v0
.end method

.method public mG()Lcom/android/vendorsettings/backup/SettingProtos$Settings;
    .locals 3

    .prologue
    .line 2066
    new-instance v0, Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;-><init>(Lcom/android/vendorsettings/backup/p;Lcom/android/vendorsettings/backup/k;)V

    .line 2067
    iget v1, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    .line 2068
    iget v1, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2069
    iget-object v1, p0, Lcom/android/vendorsettings/backup/p;->system_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/backup/p;->system_:Ljava/util/List;

    .line 2070
    iget v1, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    .line 2072
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/backup/p;->system_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->a(Lcom/android/vendorsettings/backup/SettingProtos$Settings;Ljava/util/List;)Ljava/util/List;

    .line 2073
    iget v1, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2074
    iget-object v1, p0, Lcom/android/vendorsettings/backup/p;->secure_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/backup/p;->secure_:Ljava/util/List;

    .line 2075
    iget v1, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    .line 2077
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/backup/p;->secure_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->b(Lcom/android/vendorsettings/backup/SettingProtos$Settings;Ljava/util/List;)Ljava/util/List;

    .line 2078
    iget v1, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 2079
    iget-object v1, p0, Lcom/android/vendorsettings/backup/p;->lock_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/backup/p;->lock_:Ljava/util/List;

    .line 2080
    iget v1, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/vendorsettings/backup/p;->bitField0_:I

    .line 2082
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/backup/p;->lock_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->c(Lcom/android/vendorsettings/backup/SettingProtos$Settings;Ljava/util/List;)Ljava/util/List;

    .line 2083
    return-object v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2013
    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/backup/p;->c(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2013
    check-cast p1, Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/backup/p;->e(Lcom/android/vendorsettings/backup/SettingProtos$Settings;)Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2013
    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/backup/p;->c(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/vendorsettings/backup/p;

    move-result-object v0

    return-object v0
.end method

.method public mv()Lcom/android/vendorsettings/backup/SettingProtos$Settings;
    .locals 1

    .prologue
    .line 2044
    invoke-static {}, Lcom/android/vendorsettings/backup/SettingProtos$Settings;->mu()Lcom/android/vendorsettings/backup/SettingProtos$Settings;

    move-result-object v0

    return-object v0
.end method
