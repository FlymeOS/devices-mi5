.class public Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
.super Ljava/lang/Object;
.source "MiuiIccPhoneBookInterfaceManager.java"


# static fields
.field protected static final ALLOW_SIM_OP_IN_UI_THREAD:Z = false

.field protected static final DBG:Z = true

.field protected static final EVENT_BPR_LOADED:I = 0x4

.field protected static final EVENT_GET_SIZE_DONE:I = 0x1

.field protected static final EVENT_LOAD_DONE:I = 0x2

.field protected static final EVENT_UPDATE_DONE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiIccPhoneBookInterfaceManager"


# instance fields
.field protected mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

.field protected mBaseHandler:Landroid/os/Handler;

.field private mError:I

.field private mHasPbr:I

.field protected final mLock:Ljava/lang/Object;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mRecordSize:[I

.field protected mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mSuccess:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    .line 53
    new-instance v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 125
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 126
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMiuiAdnCache()Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x4f30

    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 130
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    return p1
.end method

.method private cleanUp()V
    .locals 1

    .prologue
    .line 133
    const-string v0, "cleanUp"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->reset()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    .line 138
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    :cond_1
    return-void
.end method

.method private updateEfForIccType(I)I
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 359
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 360
    const-string v0, "Translate EF_ADN to EF_PBR"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 361
    const/16 p1, 0x4f30

    .line 363
    .end local p1    # "efid":I
    :cond_0
    return p1
.end method


# virtual methods
.method protected checkThread()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->cleanUp()V

    .line 146
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 428
    const-string v0, "MiuiIccPhoneBookInterfaceManager: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHasPbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    if-eqz v0, :cond_0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AdnCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getAdnCapacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FreeAdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getFreeAdn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    const-string v0, " mAdnCache=null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAdnCapacity()I
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    const/16 v1, 0x6f3a

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->getAdnCapacity(I)I

    move-result v0

    return v0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEF: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 321
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 323
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 324
    .local v1, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 325
    .local v0, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    if-eqz v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 331
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    return-object v2

    .line 329
    :cond_1
    :try_start_1
    const-string v2, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getAdnRecordsSize(I)[I
    .locals 6
    .param p1, "efid"    # I

    .prologue
    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdnRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 281
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 283
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    .line 286
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 287
    .local v2, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 289
    .local v1, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 291
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 293
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 295
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    return-object v3

    .line 295
    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getFreeAdn()I
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    const/16 v1, 0x6f3a

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->getFreeAdn(I)I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I

    return v0
.end method

.method public isPhoneBookReady()Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsimPhoneBookRecords()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 374
    iget v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, "MiuiIccPhoneBookInterfaceManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v0, "MiuiIccPhoneBookInterfaceManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 254
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 257
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 258
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 259
    .local v5, "response":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .local v2, "newAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    move v1, p1

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 262
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 266
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 264
    :cond_1
    :try_start_1
    const-string v0, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v2    # "newAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfBySearch: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p6}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 206
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 209
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 210
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 211
    .local v5, "response":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v2, "oldAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    new-instance v3, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {v3, p4, p5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v3, "newAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    move v1, p1

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 215
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 219
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 217
    :cond_1
    :try_start_1
    const-string v0, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    .end local v2    # "oldAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v3    # "newAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 4
    .param p1, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    const-string v0, "updateIccRecords"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getMiuiAdnCache()Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x4f30

    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->cleanUp()V

    goto :goto_0
.end method

.method public updateUsimPhoneBookRecordsByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "index"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 397
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 400
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 401
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 402
    .local v5, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 403
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 404
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    iget-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 404
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateUsimPhoneBookRecordsBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 416
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 417
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 419
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 420
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 421
    .local v5, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 422
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 423
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    iget-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 423
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "status"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 347
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update by search"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
