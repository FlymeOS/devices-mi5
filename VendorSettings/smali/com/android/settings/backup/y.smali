.class public final Lcom/android/settings/backup/y;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SyncRootProtos.java"

# interfaces
.implements Lcom/android/settings/backup/z;


# instance fields
.field private bitField0_:I

.field private setting_:Lcom/android/settings/backup/SettingProtos$Settings;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 267
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->mu()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/y;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    .line 168
    invoke-direct {p0}, Lcom/android/settings/backup/y;->mb()V

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/android/settings/backup/y;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/settings/backup/y;->ni()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method private mb()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method private static ne()Lcom/android/settings/backup/y;
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/android/settings/backup/y;

    invoke-direct {v0}, Lcom/android/settings/backup/y;-><init>()V

    return-object v0
.end method

.method private ni()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->nj()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    invoke-static {v0}, Lcom/android/settings/backup/y;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 207
    :cond_0
    return-object v0
.end method

.method static synthetic nk()Lcom/android/settings/backup/y;
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/android/settings/backup/y;->ne()Lcom/android/settings/backup/y;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;)Lcom/android/settings/backup/y;
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->mX()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object p0

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->mZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->na()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/backup/y;->g(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/y;

    goto :goto_0
.end method

.method public synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->nh()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->nj()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->nf()Lcom/android/settings/backup/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->nf()Lcom/android/settings/backup/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->ng()Lcom/android/settings/backup/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->ng()Lcom/android/settings/backup/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->ng()Lcom/android/settings/backup/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->ng()Lcom/android/settings/backup/y;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/y;
    .locals 2

    .prologue
    .line 239
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 240
    sparse-switch v0, :sswitch_data_0

    .line 245
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/backup/y;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :sswitch_0
    return-object p0

    .line 252
    :sswitch_1
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->mz()Lcom/android/settings/backup/p;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->mZ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->na()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/p;->e(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/p;

    .line 256
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 257
    invoke-virtual {v0}, Lcom/android/settings/backup/p;->mG()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/backup/y;->f(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/y;

    goto :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3a -> :sswitch_1
    .end sparse-switch
.end method

.method public f(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/y;
    .locals 1

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 278
    :cond_0
    iput-object p1, p0, Lcom/android/settings/backup/y;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    .line 280
    iget v0, p0, Lcom/android/settings/backup/y;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/backup/y;->bitField0_:I

    .line 281
    return-object p0
.end method

.method public g(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/y;
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/android/settings/backup/y;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/backup/y;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->mu()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings/backup/y;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    invoke-static {v0}, Lcom/android/settings/backup/SettingProtos$Settings;->a(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/backup/p;->e(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/backup/p;->mG()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/y;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    .line 299
    :goto_0
    iget v0, p0, Lcom/android/settings/backup/y;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/backup/y;->bitField0_:I

    .line 300
    return-object p0

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/android/settings/backup/y;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    goto :goto_0
.end method

.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->mY()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->mY()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public mY()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->mX()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public mZ()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 269
    iget v1, p0, Lcom/android/settings/backup/y;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/y;->e(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    check-cast p1, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/y;->b(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;)Lcom/android/settings/backup/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/y;->e(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/y;

    move-result-object v0

    return-object v0
.end method

.method public na()Lcom/android/settings/backup/SettingProtos$Settings;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings/backup/y;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    return-object v0
.end method

.method public nf()Lcom/android/settings/backup/y;
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 179
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->mu()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/y;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    .line 180
    iget v0, p0, Lcom/android/settings/backup/y;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/settings/backup/y;->bitField0_:I

    .line 181
    return-object p0
.end method

.method public ng()Lcom/android/settings/backup/y;
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Lcom/android/settings/backup/y;->ne()Lcom/android/settings/backup/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/backup/y;->nj()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/y;->b(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;)Lcom/android/settings/backup/y;

    move-result-object v0

    return-object v0
.end method

.method public nh()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/settings/backup/y;->nj()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-static {v0}, Lcom/android/settings/backup/y;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 197
    :cond_0
    return-object v0
.end method

.method public nj()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 211
    new-instance v2, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;-><init>(Lcom/android/settings/backup/y;Lcom/android/settings/backup/x;)V

    .line 212
    iget v3, p0, Lcom/android/settings/backup/y;->bitField0_:I

    .line 213
    const/4 v1, 0x0

    .line 214
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/android/settings/backup/y;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    invoke-static {v2, v1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->a(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/SettingProtos$Settings;

    .line 218
    invoke-static {v2, v0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->a(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;I)I

    .line 219
    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method
