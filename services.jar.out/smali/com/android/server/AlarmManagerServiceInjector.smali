.class Lcom/android/server/AlarmManagerServiceInjector;
.super Ljava/lang/Object;
.source "AlarmManagerServiceInjector.java"


# static fields
.field private static APP_PUSH_PERIOD_TIME:J = 0x0L

.field private static final APP_PUSH_PERIOD_TIME_DELTA:I = 0x3e8

.field private static final DEBUG:Z = true

.field private static final MAX_APP_PUSH_PERIOD_TIME:I = 0x83d60

.field private static final MIN_APP_PUSH_PERIOD_TIME:I = 0x1d4c0

.field private static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSIST_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AlarmManagerServiceInjector"

.field private static final THIRD_PARTY_WAKEUP_RESTRICT_PROP:Ljava/lang/String; = "persist.sys.wakeup_restrict"

.field private static final WAKEUP_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static appPushLeaderLastTriggerElapsed:J

.field private static isPushLeaderLive:Z

.field private static final mPushAlarmPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private static final mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

.field private static final mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    .line 35
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 37
    new-instance v0, Lcom/android/server/AlarmManagerServiceInjector$1;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerServiceInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->WAKEUP_WHITE_LIST:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/android/server/AlarmManagerServiceInjector$2;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerServiceInjector$2;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->PERSIST_PACKAGES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckIfAlarmGenralRistrictApply(II)Z
    .locals 5
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 112
    const/16 v4, 0x2710

    if-gt p0, v4, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v3

    .line 116
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getCurAdjByPid(I)I

    move-result v0

    .line 117
    .local v0, "curAdj":I
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getProcStateByPid(I)I

    move-result v2

    .line 118
    .local v2, "procState":I
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->hasForegroundActivities(I)Z

    move-result v1

    .line 120
    .local v1, "hasForegroundActivities":Z
    if-nez v1, :cond_0

    const/4 v4, 0x2

    if-gt v0, v4, :cond_2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_0

    .line 124
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static adjustWakeUpAlarmType(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalType"    # I

    .prologue
    const/4 v4, 0x0

    .line 66
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 87
    .end local p1    # "originalType":I
    :cond_0
    :goto_0
    return p1

    .line 69
    .restart local p1    # "originalType":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 71
    .local v2, "uid":I
    const/16 v3, 0x2710

    if-lt v2, v3, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 77
    aget-object v0, v1, v4

    .line 78
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceInjector;->inWakeUpAlarmWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v3, "persist.sys.wakeup_restrict"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "AlarmManagerServiceInjector"

    const-string v4, "restrict all third party wakeup is set"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p1}, Lcom/android/server/AlarmManagerServiceInjector;->nonWakeUpType(I)I

    move-result p1

    goto :goto_0
.end method

.method private static checkAlarmIsAllowedAddToPushAlarmPendingList(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 5
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, "isFinded":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 216
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 217
    .local v2, "tmp":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    const/4 v1, 0x1

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "tmp":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    if-nez v1, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static checkAlarmIsAllowedSend(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 128
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->pid:I

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->pid:I

    invoke-static {v3, v4}, Lcom/android/server/AlarmManagerServiceInjector;->CheckIfAlarmGenralRistrictApply(II)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isAlarmAllowedLocked(IIIZ)Z

    move-result v0

    return v0
.end method

.method private static checkAlarmOperationIsHeartBeat(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 8
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v4, 0x0

    .line 178
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v2

    .line 179
    .local v2, "powerKeeperPolicy":Lcom/miui/whetstone/PowerKeeperPolicy;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    .line 181
    .local v3, "uid":I
    invoke-virtual {v2, v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmFunc(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v4

    .line 185
    :cond_1
    invoke-virtual {v2, v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmProperty(I)Landroid/content/Intent;

    move-result-object v1

    .line 186
    .local v1, "heartIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    .local v0, "curIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 189
    :cond_2
    const-string v5, "AlarmManagerServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "curIntent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "heartIntent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_3
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerServiceInjector;->cmpCurPushAlarmPropertyWithHeartBeat(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static checkAlarmOperationIsLeaderHeartBeat(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 5
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v1, 0x1

    .line 201
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    .line 203
    .local v0, "powerKeeperPolicy":Lcom/miui/whetstone/PowerKeeperPolicy;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmLeaderUid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 204
    const-string v2, "AlarmManagerServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " alarm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is aligned leader, now sending all pending alarm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    .line 208
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkIsNeedAjustTriggerElapsed(Landroid/app/PendingIntent;JJ)J
    .locals 11
    .param p0, "operation"    # Landroid/app/PendingIntent;
    .param p1, "triggerElapsed"    # J
    .param p3, "nowElapsed"    # J

    .prologue
    .line 142
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v2

    .line 144
    .local v2, "powerKeeperPolicy":Lcom/miui/whetstone/PowerKeeperPolicy;
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    .line 145
    .local v3, "uid":I
    invoke-virtual {v2, v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmFunc(I)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    if-nez v6, :cond_1

    .line 173
    .end local p1    # "triggerElapsed":J
    :cond_0
    :goto_0
    return-wide p1

    .line 148
    .restart local p1    # "triggerElapsed":J
    :cond_1
    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmLeaderUid()I

    move-result v6

    if-ne v3, v6, :cond_4

    .line 149
    sub-long v4, p1, p3

    .line 150
    .local v4, "tmpDelta":J
    const-wide/32 v6, 0x83d60

    cmp-long v6, v4, v6

    if-gtz v6, :cond_2

    const-wide/32 v6, 0x1d4c0

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    .line 152
    :cond_2
    const-string v6, "AlarmManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tmpDelta = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is abnormal, ignore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_3
    sput-wide v4, Lcom/android/server/AlarmManagerServiceInjector;->APP_PUSH_PERIOD_TIME:J

    .line 155
    sput-wide p1, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    goto :goto_0

    .line 160
    .end local v4    # "tmpDelta":J
    :cond_4
    invoke-virtual {v2, v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmProperty(I)Landroid/content/Intent;

    move-result-object v1

    .line 161
    .local v1, "heartIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 162
    .local v0, "curIntent":Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerServiceInjector;->cmpCurPushAlarmPropertyWithHeartBeat(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    sget-object v6, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 166
    sget-wide v6, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    cmp-long v6, p3, v6

    if-lez v6, :cond_5

    .line 167
    const-string v6, "AlarmManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nowElapsed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u3000> LastTriggerElapsed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-wide v6, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    sget-wide v8, Lcom/android/server/AlarmManagerServiceInjector;->APP_PUSH_PERIOD_TIME:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    sub-long p1, v6, v8

    goto/16 :goto_0

    .line 171
    :cond_5
    const-string v6, "AlarmManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nowElapsed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " < appPushLeaderLastTriggerElapsed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-wide v6, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    const-wide/16 v8, 0x3e8

    sub-long p1, v6, v8

    goto/16 :goto_0
.end method

.method private static cmpCurPushAlarmPropertyWithHeartBeat(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "cur"    # Landroid/content/Intent;
    .param p1, "heart"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "curAction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "heartAction":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 138
    :cond_1
    return v2
.end method

.method public static doAppPushHeartBeatAlignment(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "triggerlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v8, 0x1

    .line 225
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 226
    .local v3, "sTriggerListIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v1, 0x0

    .line 227
    .local v1, "isContainLeader":Z
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 228
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 229
    .local v0, "currentAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceInjector;->checkAlarmOperationIsHeartBeat(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceInjector;->checkAlarmOperationIsLeaderHeartBeat(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 234
    const/4 v1, 0x1

    .line 236
    :cond_1
    sget-boolean v5, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    if-nez v5, :cond_2

    .line 237
    const-string v5, "AlarmManagerServiceInjector"

    const-string v6, "isPushLeaderLive is false, continue"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :cond_2
    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceInjector;->checkAlarmIsAllowedAddToPushAlarmPendingList(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v5

    if-ne v8, v5, :cond_3

    .line 241
    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_3
    const-string v5, "AlarmManagerServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alarm remove: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_4

    .line 245
    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 247
    :cond_4
    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 252
    .end local v0    # "currentAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    if-ne v8, v1, :cond_7

    .line 253
    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 254
    .local v2, "sPendingListIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 255
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 256
    .local v4, "tmpAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    const-string v5, "AlarmManagerServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alarm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "is add to triggerlist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    .end local v4    # "tmpAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_6
    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 261
    .end local v2    # "sPendingListIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_7
    return-void
.end method

.method public static dumpAlarmAligStat(Ljava/io/PrintWriter;)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 264
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v3

    .line 265
    .local v3, "powerKeeperPolicy":Lcom/miui/whetstone/PowerKeeperPolicy;
    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmLeaderUid()I

    move-result v0

    .line 267
    .local v0, "LeaderUid":I
    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    const-string v4, "Current Alarm Push HeartBeat Align state: "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    const-string v4, " leader uid = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 270
    const-string v4, " leader intent = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmProperty(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 271
    const-string v4, " leader live is = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 273
    const-string v4, "apps has ever aligned: "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 275
    const/4 v4, 0x1

    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 276
    const-string v4, " uid = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 274
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    :cond_1
    const-string v4, "recent align alarms stat: "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    sget-object v4, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 282
    .local v1, "alarmIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    const-string v4, " alarm = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 286
    :cond_2
    const-string v4, "pending list = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 287
    const-string v4, "APP_PUSH_PERIOD_TIME = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-wide v4, Lcom/android/server/AlarmManagerServiceInjector;->APP_PUSH_PERIOD_TIME:J

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 288
    const-string v4, "APP_PUSH_PERIOD_TIME_DELTA = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x3e8

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 289
    return-void
.end method

.method static filterPersistPackages([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "pkgList"    # [Ljava/lang/String;

    .prologue
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v1, "filteredPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    array-length v5, p0

    if-lez v5, :cond_1

    .line 56
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 57
    .local v4, "pkg":Ljava/lang/String;
    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->PERSIST_PACKAGES:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private static inWakeUpAlarmWhiteList(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v2, Lcom/android/server/AlarmManagerServiceInjector;->WAKEUP_WHITE_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const/4 v2, 0x1

    .line 96
    .end local v1    # "pkg":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static nonWakeUpType(I)I
    .locals 0
    .param p0, "type"    # I

    .prologue
    .line 100
    packed-switch p0, :pswitch_data_0

    .line 106
    .end local p0    # "type":I
    :goto_0
    :pswitch_0
    return p0

    .line 102
    .restart local p0    # "type":I
    :pswitch_1
    const/4 p0, 0x3

    goto :goto_0

    .line 104
    :pswitch_2
    const/4 p0, 0x1

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
