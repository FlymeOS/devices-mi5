.class public abstract Lcom/android/server/am/BaseMiuiBroadcastManager;
.super Ljava/lang/Object;
.source "BaseMiuiBroadcastManager.java"


# static fields
.field private static final DEBUG_BROADCAST:Z

.field private static final DEBUG_BROADCAST_BACKGROUND:Z

.field static final ENABLE_EXTRA_QUEUES:Z

.field static final EXTRA_QUEUE_SIZE:I

.field private static final FLAG_RECEIVER_LONGTIME:I = 0x2

.field private static final FLAG_RECEIVER_SYSTEM_APP:I = 0x1

.field private static final QUEUE_CONTROL_FLAGS:I = 0x3

.field private static final TAG_BROADCAST:Ljava/lang/String; = "BaseMiuiBroadcastManager"

.field private static final sLongTimeAction:[Ljava/lang/String;


# instance fields
.field private mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    const-string v0, "debug.broadcast.log"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    .line 19
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST_BACKGROUND:Z

    .line 24
    const-string v0, "enable.miui.broadcast"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    .line 27
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    sput v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->EXTRA_QUEUE_SIZE:I

    .line 33
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->sLongTimeAction:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 19
    goto :goto_0

    :cond_1
    move v0, v1

    .line 24
    goto :goto_1

    :cond_2
    move v0, v1

    .line 27
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addReceiverToListByFlag(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "nonSystemReceivers"    # Ljava/util/List;
    .param p2, "systemReceivers"    # Ljava/util/List;
    .param p3, "receiver"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    .line 174
    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_1

    .line 176
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to nonSystemReceivers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_2

    .line 183
    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to systemReceivers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isLongTimeAction(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 131
    sget-object v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->sLongTimeAction:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 132
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    const/4 v4, 0x1

    .line 137
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return v4

    .line 131
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private realSendBroadcastLocked(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V
    .locals 7
    .param p1, "parallel"    # Z
    .param p2, "replacePending"    # Z
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "receivers"    # Ljava/util/List;
    .param p5, "record"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-virtual {p0, p3}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueForIntent(Landroid/content/Intent;)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    .line 144
    .local v0, "queue":Lcom/android/server/am/BroadcastQueue;
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 148
    .local v1, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez p1, :cond_4

    .line 149
    sget-boolean v4, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_0

    .line 150
    const-string v4, "BaseMiuiBroadcastManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueueing ordered broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": prev had "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    sget-boolean v4, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_1

    .line 153
    const-string v4, "BaseMiuiBroadcastManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueueing broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    .local v2, "replaced":Z
    :goto_0
    if-nez v2, :cond_2

    .line 157
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 158
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 170
    :cond_2
    :goto_1
    return-void

    .end local v2    # "replaced":Z
    :cond_3
    move v2, v3

    .line 155
    goto :goto_0

    .line 161
    :cond_4
    sget-boolean v4, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_5

    .line 162
    const-string v4, "BaseMiuiBroadcastManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueueing parallel broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 165
    .restart local v2    # "replaced":Z
    :goto_2
    if-nez v2, :cond_2

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 167
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_1

    .end local v2    # "replaced":Z
    :cond_6
    move v2, v3

    .line 163
    goto :goto_2
.end method


# virtual methods
.method broadcastIntentLocked(ZZLcom/android/server/am/BroadcastRecord;)Z
    .locals 22
    .param p1, "parallel"    # Z
    .param p2, "replacePending"    # Z
    .param p3, "record"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 70
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 71
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v17, v0

    .line 72
    .local v17, "ordered":Z
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v19, v0

    .line 73
    .local v19, "receivers":Ljava/util/List;
    sget-boolean v2, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v2, :cond_8

    if-nez v17, :cond_8

    .line 74
    sget-boolean v2, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_0

    .line 75
    const-string v2, "BaseMiuiBroadcastManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ready to send broadcast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v15

    .line 77
    .local v15, "flags":I
    and-int/lit8 v2, v15, 0x3

    if-eqz v2, :cond_1

    .line 78
    and-int/lit8 v2, v15, -0x4

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->isLongTimeAction(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    const/4 v2, 0x2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    const/4 v2, 0x0

    .line 125
    .end local v15    # "flags":I
    :goto_0
    return v2

    .line 86
    .restart local v15    # "flags":I
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v6, "nonSystemReceivers":Ljava/util/List;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v11, "systemReceivers":Ljava/util/List;
    const/16 v16, 0x0

    .local v16, "i":I
    :try_start_0
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v21

    .local v21, "size":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 90
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 91
    .local v18, "receiver":Ljava/lang/Object;
    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_4

    .line 92
    move-object/from16 v0, v18

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    move-object v13, v0

    .line 93
    .local v13, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v2, :cond_3

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    .line 96
    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11, v13, v2}, Lcom/android/server/am/BaseMiuiBroadcastManager;->addReceiverToListByFlag(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;I)V

    .line 89
    .end local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_3
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 100
    :cond_4
    if-eqz v18, :cond_3

    .line 101
    move-object/from16 v0, v18

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    .line 102
    .local v20, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v11, v1, v2}, Lcom/android/server/am/BaseMiuiBroadcastManager;->addReceiverToListByFlag(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 107
    .end local v18    # "receiver":Ljava/lang/Object;
    .end local v20    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v21    # "size":I
    :catch_0
    move-exception v14

    .line 108
    .local v14, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 109
    const/4 v11, 0x0

    .line 110
    const/4 v2, 0x0

    goto :goto_0

    .line 112
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v21    # "size":I
    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p3

    .line 113
    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BaseMiuiBroadcastManager;->realSendBroadcastLocked(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    .line 117
    :cond_6
    if-eqz v11, :cond_7

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 118
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 119
    .local v10, "newIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v12, p3

    .line 120
    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/BaseMiuiBroadcastManager;->realSendBroadcastLocked(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    .line 123
    .end local v10    # "newIntent":Landroid/content/Intent;
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 125
    .end local v6    # "nonSystemReceivers":Ljava/util/List;
    .end local v11    # "systemReceivers":Ljava/util/List;
    .end local v15    # "flags":I
    .end local v16    # "i":I
    .end local v21    # "size":I
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method broadcastQueueByFlag(I)Lcom/android/server/am/BroadcastQueue;
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 194
    const/high16 v1, 0x10000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 195
    .local v0, "isFg":Z
    :goto_0
    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST_BACKGROUND:Z

    if-eqz v1, :cond_0

    .line 196
    const-string v2, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast  on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "foreground"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " queue,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " flags : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v1, :cond_7

    .line 200
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 210
    :goto_2
    return-object v1

    .line 194
    .end local v0    # "isFg":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    .restart local v0    # "isFg":Z
    :cond_2
    const-string v1, "background"

    goto :goto_1

    .line 202
    :cond_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_5

    .line 203
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_2

    .line 205
    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_2

    .line 210
    :cond_7
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_2
.end method

.method broadcastQueueForIntent(Landroid/content/Intent;)Lcom/android/server/am/BroadcastQueue;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueByFlag(I)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    return-object v0
.end method

.method abstract createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;
.end method

.method abstract createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
.end method

.method init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 12
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const-wide/32 v10, 0xea60

    const/4 v7, 0x1

    .line 38
    iput-object p1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 39
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 41
    .local v8, "startTime":J
    const-string v3, "fg_sys"

    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 43
    const-string v3, "bg_sys"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, v10

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 45
    const-string v3, "longtime"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, v10

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 47
    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init extra BroadcastQueues in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v8    # "startTime":J
    :cond_0
    return-void
.end method

.method initExtraQuqueIfNeed(I)Z
    .locals 3
    .param p1, "startIndex"    # I

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v1, v0, p1

    .line 60
    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v2, v0, v1

    .line 61
    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    add-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v2, v0, v1

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFgBroadcastQueue(Lcom/android/server/am/BroadcastQueue;)Z
    .locals 1
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
