.class final Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HandleStateByPid"
.end annotation


# instance fields
.field private mHandlesStat:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;",
            ">;"
        }
    .end annotation
.end field

.field private mPendSensor:Ljava/util/Timer;

.field private mPid:I

.field final synthetic this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;I)V
    .locals 1
    .param p2, "pid"    # I

    .prologue
    .line 237
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mPid:I

    .line 239
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mPendSensor:Ljava/util/Timer;

    .line 241
    return-void
.end method

.method static synthetic access$202(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mPendSensor:Ljava/util/Timer;

    return-object p1
.end method

.method private getIndexForConnectHandle(Landroid/os/IBinder;I)I
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "handle"    # I

    .prologue
    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method

.method private getSensorConnectState(Landroid/os/IBinder;I)Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    .locals 3
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "handle"    # I

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->getIndexForConnectHandle(Landroid/os/IBinder;I)I

    move-result v1

    .line 244
    .local v1, "sensorKey":I
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 245
    .local v0, "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .end local v0    # "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    invoke-direct {v0, v2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)V

    .line 247
    .restart local v0    # "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    :cond_0
    return-object v0
.end method


# virtual methods
.method public delHandle(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "handle"    # I

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->getIndexForConnectHandle(Landroid/os/IBinder;I)I

    move-result v1

    .line 262
    .local v1, "sensorKey":I
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 263
    .local v0, "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    if-eqz v0, :cond_1

    .line 264
    iget-boolean v2, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    if-eqz v2, :cond_2

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    goto :goto_0
.end method

.method public getFirstSensorHandleByPid()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    iget v0, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    .line 343
    :cond_0
    return v0
.end method

.method public killSensors()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 330
    .local v9, "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iget-boolean v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    if-eqz v1, :cond_0

    .line 331
    iput-boolean v2, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    .line 332
    iput-boolean v2, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    .line 333
    iget-object v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    iget v3, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    iget-wide v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    iget-wide v6, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    iget v8, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mReserve:I

    invoke-static/range {v1 .. v8}, Lcom/miui/whetstone/utils/UtilsNative;->sensorsControl(Landroid/os/IBinder;ZIJJI)I

    .line 334
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 328
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    const-string v1, "PowerKeeperPolicy"

    const-string v3, "killSensors 3"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    .line 340
    .end local v9    # "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :cond_1
    return-void
.end method

.method public pauseSensors()V
    .locals 10

    .prologue
    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 293
    .local v9, "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iget-boolean v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    if-nez v1, :cond_0

    .line 294
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    .line 295
    const-string v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseSensors, uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mUid:I
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->access$300(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "connect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " max = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    iget v3, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    iget-wide v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    iget-wide v6, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    iget v8, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mReserve:I

    invoke-static/range {v1 .. v8}, Lcom/miui/whetstone/utils/UtilsNative;->sensorsControl(Landroid/os/IBinder;ZIJJI)I

    .line 291
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v9    # "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :cond_1
    return-void
.end method

.method public pauseSensorsForPending()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 304
    .local v9, "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iget-boolean v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    if-nez v1, :cond_0

    iget-boolean v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    if-eqz v1, :cond_0

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    .line 306
    iput-boolean v2, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    .line 307
    const-string v1, "PowerKeeperPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseSensorsForPending, uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mUid:I
    invoke-static {v4}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->access$300(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "connect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sam = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    iget v3, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    iget-wide v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    iget-wide v6, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    iget v8, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mReserve:I

    invoke-static/range {v1 .. v8}, Lcom/miui/whetstone/utils/UtilsNative;->sensorsControl(Landroid/os/IBinder;ZIJJI)I

    .line 302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v9    # "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :cond_1
    return-void
.end method

.method public resumeSensors()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 316
    .local v9, "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iget-boolean v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    if-eq v1, v2, :cond_0

    iget-boolean v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    if-ne v1, v2, :cond_1

    .line 317
    :cond_0
    iget-boolean v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    if-nez v1, :cond_1

    .line 318
    iput-boolean v10, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    .line 319
    iput-boolean v10, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    .line 320
    const-string v1, "PowerKeeperPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeSensors, uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mUid:I
    invoke-static {v4}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->access$300(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "connect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sam = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    iget v3, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    iget-wide v4, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    iget-wide v6, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    iget v8, v9, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mReserve:I

    invoke-static/range {v1 .. v8}, Lcom/miui/whetstone/utils/UtilsNative;->sensorsControl(Landroid/os/IBinder;ZIJJI)I

    .line 314
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v9    # "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :cond_2
    return-void
.end method

.method public setHandleOperationPendingState(Landroid/os/IBinder;IZ)V
    .locals 6
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "handle"    # I
    .param p3, "pending"    # Z

    .prologue
    .line 273
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->getIndexForConnectHandle(Landroid/os/IBinder;I)I

    move-result v1

    .line 274
    .local v1, "sensorKey":I
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 275
    .local v0, "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .end local v0    # "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    invoke-direct {v0, v3}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)V

    .line 277
    .restart local v0    # "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    :cond_0
    iput-boolean p3, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    .line 280
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mPendSensor:Ljava/util/Timer;

    .line 281
    new-instance v2, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid$1;

    invoke-direct {v2, p0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid$1;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;)V

    .line 288
    .local v2, "task":Ljava/util/TimerTask;
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mPendSensor:Ljava/util/Timer;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 289
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 349
    const-string v3, " mPid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 353
    .local v0, "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    invoke-virtual {v0, v2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->toString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public updateParams(Landroid/os/IBinder;IZJJI)V
    .locals 2
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "handle"    # I
    .param p3, "st"    # Z
    .param p4, "sam"    # J
    .param p6, "max"    # J
    .param p8, "res"    # I

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->getSensorConnectState(Landroid/os/IBinder;I)Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    move-result-object v0

    .line 253
    .local v0, "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iput-boolean p3, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    .line 254
    iput-object p1, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    .line 255
    iput p2, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    .line 256
    iput-wide p4, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    .line 257
    iput-wide p6, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    .line 258
    iput p8, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mReserve:I

    .line 259
    return-void
.end method
