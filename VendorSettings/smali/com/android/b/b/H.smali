.class public final Lcom/android/b/b/H;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final Gk:Ljava/util/List;

.field private final Qu:Lcom/android/b/b/Q;

.field private final Rt:Lcom/android/b/b/U;

.field private aJA:I

.field private aJB:Z

.field private aJC:J

.field private aJD:Z

.field private final aJs:Ljava/util/Collection;

.field private aJv:S

.field private aJw:Landroid/bluetooth/BluetoothClass;

.field private aJx:Ljava/util/HashMap;

.field private final aJy:Ljava/util/List;

.field private aJz:Z

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mName:Ljava/lang/String;

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/U;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/b/H;->aJy:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/b/H;->aJs:Ljava/util/Collection;

    .line 166
    iput-object p1, p0, Lcom/android/b/b/H;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/android/b/b/H;->Qu:Lcom/android/b/b/Q;

    .line 168
    iput-object p3, p0, Lcom/android/b/b/H;->Rt:Lcom/android/b/b/U;

    .line 169
    iput-object p4, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/b/b/H;->aJx:Ljava/util/HashMap;

    .line 171
    invoke-direct {p0}, Lcom/android/b/b/H;->zA()V

    .line 172
    return-void
.end method

.method private b(Lcom/android/b/b/T;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bQ(Z)V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "No profiles. Maybe we will connect later"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/b/H;->aJB:Z

    .line 228
    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 230
    if-eqz p1, :cond_3

    invoke-interface {v0}, Lcom/android/b/b/T;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    :goto_2
    iget-object v3, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3}, Lcom/android/b/b/T;->h(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    add-int/lit8 v1, v1, 0x1

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/b/b/H;->e(Lcom/android/b/b/T;)V

    :cond_2
    move v0, v1

    move v1, v0

    .line 236
    goto :goto_1

    .line 230
    :cond_3
    invoke-interface {v0}, Lcom/android/b/b/T;->nT()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 239
    :cond_4
    if-nez v1, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/android/b/b/H;->zv()V

    goto :goto_0
.end method

.method private zA()V
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/b/b/H;->zC()V

    .line 363
    invoke-direct {p0}, Lcom/android/b/b/H;->zF()V

    .line 364
    invoke-direct {p0}, Lcom/android/b/b/H;->zG()Z

    .line 365
    invoke-direct {p0}, Lcom/android/b/b/H;->zP()V

    .line 366
    invoke-direct {p0}, Lcom/android/b/b/H;->zS()V

    .line 367
    invoke-direct {p0}, Lcom/android/b/b/H;->zU()V

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/b/H;->mVisible:Z

    .line 370
    invoke-direct {p0}, Lcom/android/b/b/H;->zN()V

    .line 371
    return-void
.end method

.method private zC()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    .line 417
    :cond_0
    return-void
.end method

.method private zF()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/b/H;->aJw:Landroid/bluetooth/BluetoothClass;

    .line 489
    return-void
.end method

.method private zG()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 492
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 493
    if-nez v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v0

    .line 495
    :cond_1
    iget-object v2, p0, Lcom/android/b/b/H;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v2}, Lcom/android/b/b/Q;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 496
    if-eqz v2, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/android/b/b/H;->zW()V

    .line 503
    iget-object v0, p0, Lcom/android/b/b/H;->Rt:Lcom/android/b/b/U;

    iget-object v3, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    iget-object v4, p0, Lcom/android/b/b/H;->aJy:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/b/b/H;->aJz:Z

    iget-object v6, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v0 .. v6}, Lcom/android/b/b/U;->a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 516
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zN()V
    .locals 3

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/b/b/H;->aJs:Ljava/util/Collection;

    monitor-enter v1

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/H;->aJs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/I;

    .line 647
    invoke-interface {v0}, Lcom/android/b/b/I;->nn()V

    goto :goto_0

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    return-void
.end method

.method private zP()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 722
    iget-object v0, p0, Lcom/android/b/b/H;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_phonebook_permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 740
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v1

    if-nez v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 730
    if-ne v1, v3, :cond_2

    .line 731
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 737
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 738
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 739
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 732
    :cond_2
    if-ne v1, v4, :cond_1

    .line 733
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_1
.end method

.method private zS()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 785
    iget-object v0, p0, Lcom/android/b/b/H;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_message_permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 803
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v1

    if-nez v1, :cond_1

    .line 792
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 793
    if-ne v1, v3, :cond_2

    .line 794
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 800
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 802
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 795
    :cond_2
    if-ne v1, v4, :cond_1

    .line 796
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_1
.end method

.method private zU()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 817
    iget-object v0, p0, Lcom/android/b/b/H;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_message_reject"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 819
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/b/b/H;->aJA:I

    .line 820
    return-void
.end method

.method private zV()V
    .locals 3

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/b/b/H;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_message_reject"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 825
    iget v1, p0, Lcom/android/b/b/H;->aJA:I

    if-nez v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 830
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 831
    return-void

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/b/b/H;->aJA:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private zW()V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 837
    sget-object v1, Lcom/android/b/b/af;->aKi:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/android/b/b/H;->zO()I

    move-result v0

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    .line 842
    const/16 v1, 0x408

    if-eq v0, v1, :cond_2

    const/16 v1, 0x404

    if-ne v0, v1, :cond_3

    .line 844
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/b/b/H;->dW(I)V

    goto :goto_0

    .line 846
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/b/b/H;->dW(I)V

    goto :goto_0
.end method

.method private zv()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 245
    invoke-direct {p0}, Lcom/android/b/b/H;->zw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    return-void

    .line 249
    :cond_1
    iput-boolean v3, p0, Lcom/android/b/b/H;->aJB:Z

    .line 251
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 252
    invoke-interface {v0}, Lcom/android/b/b/T;->nT()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    iget-object v2, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2, v3}, Lcom/android/b/b/T;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/b/b/H;->e(Lcom/android/b/b/T;)V

    goto :goto_0
.end method

.method private zw()Z
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/b/b/H;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/b/b/H;->zx()Z

    .line 289
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/b/b/I;)V
    .locals 2

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/b/b/H;->aJs:Ljava/util/Collection;

    monitor-enter v1

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/H;->aJs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 635
    monitor-exit v1

    .line 636
    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/android/b/b/T;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/b/b/H;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ad()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 133
    const-string v0, "CachedBluetoothDevice"

    const-string v1, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/b/b/H;->aJx:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 138
    instance-of v0, p1, Lcom/android/b/b/Y;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v4}, Lcom/android/b/b/T;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/b/b/H;->aJy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    instance-of v0, p1, Lcom/android/b/b/ac;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/b/b/ac;

    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/b/b/ac;->t(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iput-boolean v4, p0, Lcom/android/b/b/H;->aJz:Z

    goto :goto_0

    .line 149
    :cond_3
    instance-of v0, p1, Lcom/android/b/b/Y;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 151
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v3}, Lcom/android/b/b/T;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 152
    :cond_4
    iget-boolean v0, p0, Lcom/android/b/b/H;->aJz:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/b/b/ac;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/b/b/ac;

    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/b/b/ac;->t(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 155
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/android/b/b/H;->aJy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iput-boolean v3, p0, Lcom/android/b/b/H;->aJz:Z

    goto :goto_0
.end method

.method a(S)V
    .locals 1

    .prologue
    .line 439
    iget-short v0, p0, Lcom/android/b/b/H;->aJv:S

    if-eq v0, p1, :cond_0

    .line 440
    iput-short p1, p0, Lcom/android/b/b/H;->aJv:S

    .line 441
    invoke-direct {p0}, Lcom/android/b/b/H;->zN()V

    .line 443
    :cond_0
    return-void
.end method

.method b(Landroid/bluetooth/BluetoothClass;)V
    .locals 1

    .prologue
    .line 603
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/b/b/H;->aJw:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 604
    iput-object p1, p0, Lcom/android/b/b/H;->aJw:Landroid/bluetooth/BluetoothClass;

    .line 605
    invoke-direct {p0}, Lcom/android/b/b/H;->zN()V

    .line 607
    :cond_0
    return-void
.end method

.method public b(Lcom/android/b/b/I;)V
    .locals 2

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/b/b/H;->aJs:Ljava/util/Collection;

    monitor-enter v1

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/H;->aJs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 641
    monitor-exit v1

    .line 642
    return-void

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bP(Z)V
    .locals 2

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/b/b/H;->zw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/b/b/H;->aJC:J

    .line 202
    invoke-direct {p0, p1}, Lcom/android/b/b/H;->bQ(Z)V

    goto :goto_0
.end method

.method public c(Lcom/android/b/b/T;)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/b/b/T;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/b/b/H;->b(Lcom/android/b/b/T;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcom/android/b/b/H;

    invoke-virtual {p0, p1}, Lcom/android/b/b/H;->g(Lcom/android/b/b/H;)I

    move-result v0

    return v0
.end method

.method cs(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 386
    iput-object p1, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    .line 390
    :cond_1
    invoke-direct {p0}, Lcom/android/b/b/H;->zN()V

    .line 392
    :cond_2
    return-void
.end method

.method public d(Lcom/android/b/b/T;)V
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/b/b/H;->aJC:J

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/b/H;->aJB:Z

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/b/b/H;->e(Lcom/android/b/b/T;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/b/b/H;->refresh()V

    .line 271
    return-void
.end method

.method dV(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 580
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 582
    iput-boolean v1, p0, Lcom/android/b/b/H;->aJD:Z

    .line 583
    invoke-virtual {p0, v1}, Lcom/android/b/b/H;->dW(I)V

    .line 584
    invoke-virtual {p0, v1}, Lcom/android/b/b/H;->dX(I)V

    .line 585
    invoke-virtual {p0, v1}, Lcom/android/b/b/H;->dY(I)V

    .line 586
    iput v1, p0, Lcom/android/b/b/H;->aJA:I

    .line 587
    invoke-direct {p0}, Lcom/android/b/b/H;->zV()V

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/android/b/b/H;->refresh()V

    .line 592
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    invoke-virtual {p0}, Lcom/android/b/b/H;->zu()V

    .line 598
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/b/b/H;->aJD:Z

    .line 600
    :cond_2
    return-void

    .line 595
    :cond_3
    iget-boolean v0, p0, Lcom/android/b/b/H;->aJD:Z

    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {p0, v1}, Lcom/android/b/b/H;->bP(Z)V

    goto :goto_0
.end method

.method public dW(I)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 710
    const/4 v2, 0x0

    .line 711
    if-ne p1, v0, :cond_0

    .line 716
    :goto_0
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 717
    return-void

    .line 713
    :cond_0
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 714
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public dX(I)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 753
    const/4 v2, 0x0

    .line 754
    if-ne p1, v0, :cond_0

    .line 759
    :goto_0
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 760
    return-void

    .line 756
    :cond_0
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 757
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method dY(I)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 773
    const/4 v2, 0x0

    .line 774
    if-ne p1, v0, :cond_0

    .line 779
    :goto_0
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    .line 780
    return-void

    .line 776
    :cond_0
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 777
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/b/b/H;->c(Lcom/android/b/b/T;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/H;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v0}, Lcom/android/b/b/U;->As()Lcom/android/b/b/af;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/b/b/af;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 184
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/b/b/af;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 186
    :cond_1
    return-void
.end method

.method declared-synchronized e(Lcom/android/b/b/T;)V
    .locals 3

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/b/b/H;->zw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :goto_0
    monitor-exit p0

    return-void

    .line 277
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/b/b/T;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/b/b/H;->b(Lcom/android/b/b/T;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 283
    :cond_1
    :try_start_2
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 659
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/b/b/H;

    if-nez v0, :cond_1

    .line 660
    :cond_0
    const/4 v0, 0x0

    .line 662
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/b/b/H;

    iget-object v1, p1, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Lcom/android/b/b/T;)I
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/b/b/H;->aJx:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/b/b/H;->aJx:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/b/b/T;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 345
    iget-object v1, p0, Lcom/android/b/b/H;->aJx:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/b/b/H;->aJx:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public g(Lcom/android/b/b/H;)I
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 675
    invoke-virtual {p1}, Lcom/android/b/b/H;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/b/b/H;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    sub-int/2addr v0, v3

    .line 676
    if-eqz v0, :cond_3

    .line 692
    :cond_0
    :goto_2
    return v0

    :cond_1
    move v0, v2

    .line 675
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 679
    :cond_3
    invoke-virtual {p1}, Lcom/android/b/b/H;->getBondState()I

    move-result v0

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/android/b/b/H;->getBondState()I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v1

    :goto_4
    sub-int/2addr v0, v3

    .line 681
    if-nez v0, :cond_0

    .line 684
    iget-boolean v0, p1, Lcom/android/b/b/H;->mVisible:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    iget-boolean v3, p0, Lcom/android/b/b/H;->mVisible:Z

    if-eqz v3, :cond_7

    :goto_6
    sub-int/2addr v0, v1

    .line 685
    if-nez v0, :cond_0

    .line 688
    iget-short v0, p1, Lcom/android/b/b/H;->aJv:S

    iget-short v1, p0, Lcom/android/b/b/H;->aJv:S

    sub-int/2addr v0, v1

    .line 689
    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v2

    .line 679
    goto :goto_3

    :cond_5
    move v3, v2

    goto :goto_4

    :cond_6
    move v0, v2

    .line 684
    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_6
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 458
    invoke-virtual {p0, v0}, Lcom/android/b/b/H;->f(Lcom/android/b/b/T;)I

    move-result v0

    .line 459
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 464
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/b/b/H;->zN()V

    .line 421
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iput-object p1, p0, Lcom/android/b/b/H;->mName:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 401
    invoke-direct {p0}, Lcom/android/b/b/H;->zN()V

    .line 403
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/b/b/H;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 429
    iput-boolean p1, p0, Lcom/android/b/b/H;->mVisible:Z

    .line 430
    invoke-direct {p0}, Lcom/android/b/b/H;->zN()V

    .line 432
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zB()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/b/b/H;->zC()V

    .line 407
    invoke-direct {p0}, Lcom/android/b/b/H;->zN()V

    .line 408
    return-void
.end method

.method zD()S
    .locals 1

    .prologue
    .line 447
    iget-short v0, p0, Lcom/android/b/b/H;->aJv:S

    return v0
.end method

.method public zE()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 474
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 475
    invoke-virtual {p0, v0}, Lcom/android/b/b/H;->f(Lcom/android/b/b/T;)I

    move-result v0

    .line 476
    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 481
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/b/b/H;->getBondState()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method zH()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/android/b/b/H;->zF()V

    .line 525
    invoke-direct {p0}, Lcom/android/b/b/H;->zN()V

    .line 526
    return-void
.end method

.method zI()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 532
    const-string v0, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onUuidChanged, mProfile Size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 535
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 536
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 537
    invoke-direct {p0}, Lcom/android/b/b/H;->zG()Z

    .line 541
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "UUID not udpated, returning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 544
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 577
    :goto_0
    return-void

    :cond_0
    move v0, v1

    .line 547
    :goto_1
    iget-object v3, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 548
    iget-object v3, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 549
    iget-object v3, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 553
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 555
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 557
    const-wide/16 v2, 0x1388

    .line 558
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v0, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    const-wide/16 v2, 0x7530

    .line 571
    :cond_3
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v4, p0, Lcom/android/b/b/H;->aJC:J

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    iget-wide v2, p0, Lcom/android/b/b/H;->aJC:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 574
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/b/b/H;->bQ(Z)V

    .line 576
    :cond_5
    invoke-direct {p0}, Lcom/android/b/b/H;->zN()V

    goto :goto_0
.end method

.method public zJ()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/b/b/H;->aJw:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method public zK()Ljava/util/List;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zL()Ljava/util/List;
    .locals 4

    .prologue
    .line 618
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 620
    iget-object v0, p0, Lcom/android/b/b/H;->Gk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 621
    invoke-interface {v0}, Lcom/android/b/b/T;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 625
    :cond_1
    return-object v1
.end method

.method public zM()Ljava/util/List;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/b/b/H;->aJy:Ljava/util/List;

    return-object v0
.end method

.method public zO()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 700
    iget-object v2, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v2

    .line 701
    if-ne v2, v0, :cond_0

    .line 706
    :goto_0
    return v0

    .line 703
    :cond_0
    if-ne v2, v1, :cond_1

    move v0, v1

    .line 704
    goto :goto_0

    .line 706
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zQ()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 743
    iget-object v2, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v2

    .line 744
    if-ne v2, v0, :cond_0

    .line 749
    :goto_0
    return v0

    .line 746
    :cond_0
    if-ne v2, v1, :cond_1

    move v0, v1

    .line 747
    goto :goto_0

    .line 749
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zR()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 763
    iget-object v2, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getSimAccessPermission()I

    move-result v2

    .line 764
    if-ne v2, v0, :cond_0

    .line 769
    :goto_0
    return v0

    .line 766
    :cond_0
    if-ne v2, v1, :cond_1

    move v0, v1

    .line 767
    goto :goto_0

    .line 769
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zT()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 809
    iget v0, p0, Lcom/android/b/b/H;->aJA:I

    if-ge v0, v1, :cond_0

    .line 810
    iget v0, p0, Lcom/android/b/b/H;->aJA:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/b/b/H;->aJA:I

    .line 811
    invoke-direct {p0}, Lcom/android/b/b/H;->zV()V

    .line 813
    :cond_0
    iget v0, p0, Lcom/android/b/b/H;->aJA:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zX()I
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 867
    .line 871
    invoke-virtual {p0}, Lcom/android/b/b/H;->zK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 872
    invoke-virtual {p0, v0}, Lcom/android/b/b/H;->f(Lcom/android/b/b/T;)I

    move-result v7

    .line 874
    packed-switch v7, :pswitch_data_0

    :cond_0
    move v0, v1

    move v1, v3

    move v3, v4

    :goto_1
    move v4, v3

    move v3, v1

    move v1, v0

    .line 894
    goto :goto_0

    .line 877
    :pswitch_0
    invoke-static {v7}, Lcom/android/b/b/ai;->eb(I)I

    move-result v2

    .line 908
    :cond_1
    :goto_2
    return v2

    :pswitch_1
    move v0, v1

    move v1, v3

    move v3, v5

    .line 881
    goto :goto_1

    .line 884
    :pswitch_2
    invoke-interface {v0}, Lcom/android/b/b/T;->nU()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 885
    instance-of v7, v0, Lcom/android/b/b/a;

    if-nez v7, :cond_2

    instance-of v7, v0, Lcom/android/b/b/d;

    if-eqz v7, :cond_3

    :cond_2
    move v0, v1

    move v3, v4

    move v1, v5

    .line 887
    goto :goto_1

    .line 888
    :cond_3
    instance-of v0, v0, Lcom/android/b/b/K;

    if-eqz v0, :cond_0

    move v0, v5

    move v1, v3

    move v3, v4

    .line 889
    goto :goto_1

    .line 896
    :cond_4
    if-eqz v4, :cond_8

    .line 897
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 898
    sget v2, Lcom/android/b/e;->aGP:I

    goto :goto_2

    .line 899
    :cond_5
    if-eqz v3, :cond_6

    .line 900
    sget v2, Lcom/android/b/e;->aGN:I

    goto :goto_2

    .line 901
    :cond_6
    if-eqz v1, :cond_7

    .line 902
    sget v2, Lcom/android/b/e;->aGO:I

    goto :goto_2

    .line 904
    :cond_7
    sget v2, Lcom/android/b/e;->aGM:I

    goto :goto_2

    .line 908
    :cond_8
    invoke-virtual {p0}, Lcom/android/b/b/H;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    sget v2, Lcom/android/b/e;->aGZ:I

    goto :goto_2

    .line 874
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method zu()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/b/b/H;->bP(Z)V

    .line 209
    return-void
.end method

.method public zx()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 297
    iget-object v1, p0, Lcom/android/b/b/H;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1}, Lcom/android/b/b/Q;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/b/b/H;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1}, Lcom/android/b/b/Q;->Ab()V

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0

    .line 305
    :cond_1
    iput-boolean v0, p0, Lcom/android/b/b/H;->aJD:Z

    goto :goto_0
.end method

.method public zy()V
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/b/b/H;->getBondState()I

    move-result v0

    .line 320
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 324
    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 326
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v0

    .line 328
    if-eqz v0, :cond_1

    .line 330
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/b/b/H;->b(Lcom/android/b/b/T;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1
    return-void
.end method

.method public zz()V
    .locals 4

    .prologue
    .line 353
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Clearing all connection state for dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/b/b/H;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Lcom/android/b/b/H;->zK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 356
    iget-object v2, p0, Lcom/android/b/b/H;->aJx:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method
