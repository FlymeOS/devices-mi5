.class public Landroid/app/ExtraActivityManager;
.super Ljava/lang/Object;
.source "ExtraActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ExtraActivityManager$PriorityComponent;,
        Landroid/app/ExtraActivityManager$PackageNameList;
    }
.end annotation


# static fields
.field public static final START_INCOMPATIBLE:I = 0x5

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Landroid/app/ExtraActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/ExtraActivityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public static getMediaButtonReceiver(Landroid/content/Context;Ljava/util/List;I)Landroid/app/ExtraActivityManager$PriorityComponent;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "minPriority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/app/ExtraActivityManager$PriorityComponent;"
        }
    .end annotation

    .prologue
    .local p1, "orderPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 151
    if-nez p2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-object v7

    .line 155
    :cond_1
    const/4 v6, 0x0

    .line 157
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 162
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 163
    const/4 v4, 0x0

    .line 164
    .local v4, "p":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 165
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 166
    .local v5, "r":Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 169
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v7, Landroid/app/ExtraActivityManager$PriorityComponent;

    invoke-direct {v7, v0, v4}, Landroid/app/ExtraActivityManager$PriorityComponent;-><init>(Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 175
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v5    # "r":Landroid/content/pm/ResolveInfo;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    if-lt v4, p2, :cond_2

    goto :goto_0

    .line 159
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "p":I
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private static getPackageNameForTask(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "info"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 37
    .local v0, "baseIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 49
    :cond_1
    return-object v1
.end method

.method public static getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v5, 0x0

    .line 55
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 56
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 58
    .local v6, "token":J
    const/16 v8, 0x14

    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {v0, v8, v9}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 61
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    if-nez v5, :cond_1

    .line 65
    const/4 v3, 0x0

    .line 76
    :cond_0
    return-object v3

    .line 61
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 68
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 70
    .local v4, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-static {v4}, Landroid/app/ExtraActivityManager;->getPackageNameForTask(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 72
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getPackageNameListOrderByReceivePriority(Landroid/content/Context;)Landroid/app/ExtraActivityManager$PackageNameList;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 103
    .local v7, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 105
    .local v9, "playingCount":I
    const-string v12, "activity"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 106
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v10

    .line 107
    .local v10, "runningProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v12, 0x1

    invoke-static {v10, p0, v12}, Lmiui/util/AudioOutputHelper;->getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 110
    .local v0, "actives":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v0, :cond_2

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 112
    .local v5, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 113
    iget-object v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v8, v2, v4

    .line 114
    .local v8, "pkg":Ljava/lang/String;
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "len$":I
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 122
    :cond_2
    invoke-static {p0}, Landroid/app/ExtraActivityManager;->getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 123
    .local v11, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_3

    .line 124
    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_3
    new-instance v12, Landroid/app/ExtraActivityManager$PackageNameList;

    invoke-direct {v12, v7, v9}, Landroid/app/ExtraActivityManager$PackageNameList;-><init>(Ljava/util/List;I)V

    return-object v12
.end method
