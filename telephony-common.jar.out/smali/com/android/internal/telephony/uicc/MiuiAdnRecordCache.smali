.class public final Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;
.super Landroid/os/Handler;
.source "MiuiAdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiAdnRecordCache"

.field private static final MAX_PHB_ANR_LENGTH:I = 0x14

.field private static final MAX_PHB_NAME_LENGTH:I = 0x3c

.field private static final MAX_PHB_NUMBER_LENGTH:I = 0x28


# instance fields
.field mAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mAdnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

.field private mLock:Ljava/lang/Object;

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    .line 69
    return-void
.end method

.method private clearUserWriters()V
    .locals 5

    .prologue
    .line 97
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 99
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const/16 v4, -0x3f5

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 103
    monitor-exit v3

    .line 104
    return-void

    .line 103
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private clearWaiters()V
    .locals 9

    .prologue
    .line 85
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 86
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 87
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 88
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 89
    .local v3, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v8, -0x3f5

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-direct {v0, v4, v6, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 90
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 93
    monitor-exit v5

    .line 94
    return-void

    .line 93
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isMTKPlatform()Z
    .locals 2

    .prologue
    .line 211
    const-string v0, "mediatek"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadAllAdn(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->getAdnRecordsIfLoaded()Ljava/util/ArrayList;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    check-cast v0, Ljava/util/ArrayList;

    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    goto :goto_0
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 376
    :cond_0
    return-void

    .line 369
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 370
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 371
    .local v2, "waiter":Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 372
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 373
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 369
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;I)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "error"    # I

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    const-string v0, "MiuiAdnRecordCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorResponse response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 137
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 445
    const-string v3, "MiuiAdnRecordCache: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 447
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 448
    .local v1, "key":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 449
    .local v2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mAdnLikeFiles["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: efId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 451
    .end local v1    # "key":I
    .end local v2    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public extensionEfForEf(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    const/16 v0, 0x6f4a

    .line 122
    sparse-switch p1, :sswitch_data_0

    .line 129
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 123
    :sswitch_1
    const/16 v0, 0x6fc8

    goto :goto_0

    .line 125
    :sswitch_2
    const/16 v0, 0x6f4c

    goto :goto_0

    .line 126
    :sswitch_3
    const/16 v0, 0x6f4b

    goto :goto_0

    .line 128
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAdnCapacity(I)I
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->loadAllAdn(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 358
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getFreeAdn(I)I
    .locals 5
    .param p1, "efid"    # I

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->loadAllAdn(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 343
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    if-nez v3, :cond_1

    .line 344
    const/4 v1, 0x0

    .line 353
    :cond_0
    return v1

    .line 347
    :cond_1
    const/4 v1, 0x0

    .line 348
    .local v1, "count":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 349
    .local v0, "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 396
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 443
    :goto_0
    return-void

    .line 399
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 400
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 401
    .local v2, "efid":I
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 402
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 403
    .local v6, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 404
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    .line 406
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 407
    .local v4, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    .end local v4    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :cond_0
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 410
    monitor-exit v8

    goto :goto_0

    .end local v6    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 413
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "efid":I
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 414
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 415
    .restart local v2    # "efid":I
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 416
    :try_start_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 417
    .local v3, "index":I
    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 418
    .local v0, "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_2

    .line 419
    if-eqz v0, :cond_1

    .line 420
    iput v3, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mRecordNumber:I

    .line 421
    iget v7, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEfid:I

    if-gtz v7, :cond_1

    .line 422
    iput v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEfid:I

    .line 426
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 427
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setEmails([Ljava/lang/String;)V

    .line 428
    const-string v7, ""

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setAnr(Ljava/lang/String;)V

    .line 429
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v7, v9, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 434
    .local v5, "response":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 436
    if-eqz v5, :cond_3

    .line 437
    const/4 v7, 0x0

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v7, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 438
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 440
    :cond_3
    monitor-exit v8

    goto :goto_0

    .end local v0    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v3    # "index":I
    .end local v5    # "response":Landroid/os/Message;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 7
    .param p1, "efid"    # I
    .param p2, "extensionEf"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x4f30

    .line 296
    const-string v2, "MiuiAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLoadAllAdnLike efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-ne p1, v5, :cond_2

    .line 299
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->getAdnRecordsIfLoaded()Ljava/util/ArrayList;

    move-result-object v0

    .line 304
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 305
    if-eqz p3, :cond_0

    .line 306
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 307
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 309
    :cond_0
    const-string v2, "MiuiAdnRecordCache"

    const-string v3, "requestLoadAllAdnLike: already loaded, return the result directly"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1
    :goto_1
    return-void

    .line 301
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    goto :goto_0

    .line 313
    :cond_3
    if-gez p2, :cond_4

    .line 314
    if-eqz p3, :cond_1

    .line 315
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v4, -0x3f6

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 316
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 321
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 323
    .local v1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_5

    .line 324
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    monitor-exit v3

    goto :goto_1

    .line 338
    .end local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 328
    .restart local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_5
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .restart local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    if-ne p1, v5, :cond_6

    .line 333
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->requestLoadEfFilesFromUsim(Landroid/os/Message;)V

    .line 338
    :goto_2
    monitor-exit v3

    goto :goto_1

    .line 335
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->getLoader()Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, p1, v6}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, p1, p2, v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->loadAllFromEF(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;IILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->reset()V

    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->clearWaiters()V

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->clearUserWriters()V

    .line 82
    return-void
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 19
    .param p1, "efid"    # I
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "recordIndex"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 153
    const-string v4, "MiuiAdnRecordCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAdnByIndex efid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", recordIndex="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    .line 155
    .local v7, "extensionEf":I
    if-gez v7, :cond_0

    .line 156
    const/16 v4, -0x3f6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    .line 208
    :goto_0
    return-void

    .line 160
    :cond_0
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x3c

    if-le v4, v6, :cond_1

    .line 161
    const/16 v4, -0x3ec

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 165
    :cond_1
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    .line 166
    .local v16, "length":I
    if-lez v16, :cond_2

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2b

    if-ne v4, v6, :cond_2

    .line 167
    add-int/lit8 v16, v16, -0x1

    .line 169
    :cond_2
    const/16 v4, 0x28

    move/from16 v0, v16

    if-le v0, v4, :cond_3

    .line 170
    const/16 v4, -0x3eb

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 174
    :cond_3
    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    .line 175
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x14

    if-le v4, v6, :cond_4

    .line 176
    const/16 v4, -0x3f1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 180
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->update(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;)I

    move-result v17

    .line 181
    .local v17, "ret":I
    if-eqz v17, :cond_5

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 184
    :cond_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v4, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 185
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 188
    .end local v17    # "ret":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 189
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 190
    const/16 v4, -0x3ee

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    .line 191
    monitor-exit v18

    goto/16 :goto_0

    .line 206
    :catchall_0
    move-exception v4

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 193
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    const/16 v4, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->isMTKPlatform()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 199
    new-instance v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {v5, v0, v1, v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v5, "oriAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move/from16 v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 206
    .end local v5    # "oriAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_1
    monitor-exit v18

    goto/16 :goto_0

    .line 203
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->getLoader()Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v10, p2

    move/from16 v11, p1

    move v12, v7

    move/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 13
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 230
    const-string v1, "MiuiAdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnByIndex efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->loadAllAdn(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 232
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    if-nez v11, :cond_0

    .line 233
    const/16 v1, -0x3f2

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    .line 287
    :goto_0
    return-void

    .line 237
    :cond_0
    const/4 v4, -0x1

    .line 238
    .local v4, "index":I
    const/4 v7, 0x1

    .line 239
    .local v7, "count":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    move v4, v7

    .line 247
    :cond_1
    const/4 v1, -0x1

    if-ne v4, v1, :cond_4

    .line 248
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, -0x3ed

    :goto_2
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 244
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 248
    :cond_3
    const/16 v1, -0x3f2

    goto :goto_2

    .line 252
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->extensionEfForEf(I)I

    move-result v8

    .line 253
    .local v8, "extensionEf":I
    if-gez v8, :cond_5

    .line 254
    const/16 v1, -0x3f6

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 258
    :cond_5
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_b

    .line 259
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_6

    .line 260
    const/16 v1, -0x3ec

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 264
    :cond_6
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    .line 265
    .local v10, "length":I
    if-lez v10, :cond_7

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_7

    .line 266
    add-int/lit8 v10, v10, -0x1

    .line 268
    :cond_7
    const/16 v1, 0x28

    if-le v10, v1, :cond_8

    .line 269
    const/16 v1, -0x3eb

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 272
    :cond_8
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_9

    .line 273
    const/16 v1, -0x3f1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 277
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    move-object/from16 v0, p3

    invoke-virtual {v1, p2, v4, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->update(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;ILcom/android/internal/telephony/uicc/MiuiAdnRecord;)I

    move-result v12

    .line 278
    .local v12, "ret":I
    if-eqz v12, :cond_a

    .line 279
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v12}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 281
    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 282
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v10    # "length":I
    .end local v12    # "ret":I
    :cond_b
    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 285
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method
