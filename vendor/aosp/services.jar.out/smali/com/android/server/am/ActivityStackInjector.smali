.class Lcom/android/server/am/ActivityStackInjector;
.super Ljava/lang/Object;
.source "ActivityStackInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityStackInjector"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static captureActivityScreenshot(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowType()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    .line 37
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 39
    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v0, v1, v2}, Lmiui/securityspace/CrossUserUtils;->getComponentStringWithUserIdAndTaskId(Landroid/content/ComponentName;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lmiui/util/ScreenshotUtils;->captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    :cond_1
    return-void

    .line 39
    :cond_2
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v0, v1, v2}, Lmiui/securityspace/CrossUserUtils;->getComponentStringWithUserIdAndTaskId(Landroid/content/ComponentName;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static findMatchTask(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;)Z
    .locals 7
    .param p0, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 236
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 238
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-static {p0, v1}, Lcom/android/server/am/MiuiMultiTaskManager;->checkMultiTaskAffinity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 252
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    return v3

    .line 239
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    .line 241
    .local v0, "needCheck":Z
    if-eqz v1, :cond_2

    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v5, "miui_launch_app_in_one_task_group"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 246
    :goto_1
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 249
    goto :goto_0

    :cond_2
    move v0, v3

    .line 241
    goto :goto_1

    .line 243
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method static getStartingWindowLabel(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x40

    .line 97
    const-string v4, "getStartingWindowLabel"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, "label":Ljava/lang/CharSequence;
    invoke-static {p0, p1}, Lcom/android/server/am/ActivityStackInjector;->isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 103
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, ":android:show_fragment_args"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 106
    const-string v4, ":miui:starting_window_label"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 107
    :cond_0
    if-nez v3, :cond_1

    .line 108
    const-string v4, ":miui:starting_window_label"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 115
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 116
    return-object v3

    .line 110
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0
.end method

.method static getStartingWindowLabelRes(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)I
    .locals 6
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x40

    .line 80
    const-string v2, "getStartingWindowLabelRes"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "res":I
    invoke-static {p0, p1}, Lcom/android/server/am/ActivityStackInjector;->isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, ":android:show_fragment_title"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 92
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 93
    return v1

    .line 88
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static isAllowCross(II)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "targetUserId"    # I

    .prologue
    const/16 v0, 0x3e7

    .line 267
    if-nez p0, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isAllowDontWaitForPause(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .locals 5
    .param p0, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 257
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const-string v3, "com.miui.home"

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v3, v4, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 261
    .local v0, "appProcess":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 263
    .end local v0    # "appProcess":Lcom/android/server/am/ProcessRecord;
    :cond_1
    return v1
.end method

.method static isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z
    .locals 10
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    const-string v3, "isStartingWindowSupported"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget v3, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->setTheme(I)V

    .line 65
    invoke-static {p1}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 71
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 72
    sget v3, Lmiui/R$attr;->windowDisablePreview:I

    invoke-static {p1, v3, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v3

    if-eq v3, v1, :cond_2

    move v0, v1

    .line 75
    :cond_1
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 76
    return v0

    :cond_2
    move v0, v2

    .line 72
    goto :goto_1

    .line 67
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static isTaskAlive(Lcom/android/server/am/TaskRecord;)Z
    .locals 4
    .param p0, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 194
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 195
    const/4 v2, 0x1

    .line 204
    :cond_0
    :goto_0
    return v2

    .line 197
    :cond_1
    const/4 v2, 0x0

    .line 198
    .local v2, "isAlive":Z
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 199
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_2

    .line 200
    const/4 v2, 0x1

    .line 201
    goto :goto_0
.end method

.method static killProcessesForRelMemory(Lcom/android/server/am/ActivityManagerService;J)Z
    .locals 13
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "needRelSize"    # J

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_0

    .line 143
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "killProcessesForRelMemory() only available to system"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 146
    :cond_0
    const/4 v2, 0x0

    .line 147
    .local v2, "killed":Z
    const-wide/16 v6, 0x0

    .line 148
    .local v6, "relSize":J
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    .line 149
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 150
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 151
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 152
    .local v3, "pid":I
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 153
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v4, :cond_2

    .line 150
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_2
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 156
    .local v0, "adj":I
    const/16 v8, 0x8

    if-le v0, v8, :cond_1

    iget-boolean v8, v4, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v8, :cond_1

    const-string v8, "com.android.camera"

    iget-object v10, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 157
    const-string v8, "Release memory"

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 158
    const/4 v2, 0x1

    .line 159
    iget-wide v10, v4, Lcom/android/server/am/ProcessRecord;->lastPss:J

    add-long/2addr v6, v10

    .line 160
    cmp-long v8, v6, p1

    if-lez v8, :cond_1

    .line 168
    .end local v0    # "adj":I
    .end local v3    # "pid":I
    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_3
    monitor-exit v9

    .line 169
    return v2

    .line 168
    .end local v1    # "i":I
    .end local v5    # "size":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method static moveTaskIfNeed(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;)Z
    .locals 9
    .param p0, "topTask"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 209
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-static {v0}, Lcom/android/server/am/MiuiMultiTaskManager;->isMultiTaskSupport(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v5

    .line 210
    :cond_1
    const/4 v1, 0x0

    .line 212
    .local v1, "returnTo":Ljava/lang/Object;
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v8, "miui_task_return_to_target"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 219
    .end local v1    # "returnTo":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 220
    .local v3, "topIndex":I
    if-eqz v1, :cond_0

    if-lez v3, :cond_0

    .line 221
    add-int/lit8 v2, v3, -0x1

    .local v2, "taskNdx":I
    :goto_2
    if-ltz v2, :cond_0

    .line 222
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 223
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v4, :cond_3

    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 224
    invoke-virtual {v4, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 225
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 227
    invoke-virtual {p0, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    move v5, v6

    .line 228
    goto :goto_0

    .line 212
    .end local v2    # "taskNdx":I
    .end local v3    # "topIndex":I
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "returnTo":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 221
    .end local v1    # "returnTo":Ljava/lang/Object;
    .restart local v2    # "taskNdx":I
    .restart local v3    # "topIndex":I
    .restart local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 215
    .end local v2    # "taskNdx":I
    .end local v3    # "topIndex":I
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "returnTo":Ljava/lang/Object;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method static releaseMemoryIfNeeded(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 128
    if-eqz p1, :cond_0

    const-string v7, "com.android.camera"

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 129
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 130
    .local v2, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 131
    iget-wide v8, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v10, 0x400

    div-long v0, v8, v10

    .line 132
    .local v0, "currentMem":J
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00da

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 133
    .local v6, "warningValue":I
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00db

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 134
    .local v3, "releaseMemoryLimit":I
    int-to-long v8, v6

    cmp-long v7, v0, v8

    if-gtz v7, :cond_0

    .line 135
    int-to-long v8, v6

    sub-long/2addr v8, v0

    int-to-long v10, v3

    add-long v4, v8, v10

    .line 136
    .local v4, "needRelSize":J
    invoke-static {p0, v4, v5}, Lcom/android/server/am/ActivityStackInjector;->killProcessesForRelMemory(Lcom/android/server/am/ActivityManagerService;J)Z

    .line 139
    .end local v0    # "currentMem":J
    .end local v2    # "info":Landroid/app/ActivityManager$MemoryInfo;
    .end local v3    # "releaseMemoryLimit":I
    .end local v4    # "needRelSize":J
    .end local v6    # "warningValue":I
    :cond_0
    return-void
.end method

.method static startProcBackgroud(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Z
    .locals 2
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "start":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.camera"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :cond_0
    return v0
.end method

.method private static taskAbove(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 2
    .param p0, "thiz"    # Lcom/android/server/am/ActivityStack;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 186
    .local v0, "trIndex":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 187
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 189
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static transferOnTopOfHomeForMoveTask(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p0, "thiz"    # Lcom/android/server/am/ActivityStack;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x1

    .line 173
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 177
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityStackInjector;->taskAbove(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 178
    .local v0, "trAbove":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/am/ActivityStackInjector;->isTaskAlive(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 182
    .end local v0    # "trAbove":Lcom/android/server/am/TaskRecord;
    :cond_0
    return-void
.end method

.method public static transferOnTopOfHomeForMoveTaskToFrontLocked(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V
    .locals 0
    .param p0, "thiz"    # Lcom/android/server/am/ActivityStack;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityStackInjector;->transferOnTopOfHomeForMoveTask(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V

    .line 54
    return-void
.end method
