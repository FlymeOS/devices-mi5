.class public Lcom/android/server/am/MiuiMultiTaskManager;
.super Ljava/lang/Object;
.source "MiuiMultiTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;
    }
.end annotation


# static fields
.field private static final FEATURE_SUPPORT:Z

.field public static final FLAG_LAUNCH_APP_IN_ONE_TASK_GROUP:Ljava/lang/String; = "miui_launch_app_in_one_task_group"

.field public static final TASK_RETURN_TO_TARGET:Ljava/lang/String; = "miui_task_return_to_target"

.field private static sSupportUI:[Ljava/lang/String;

.field private static sTargetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    .line 17
    const-string v0, "miui.multitask.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MiuiMultiTaskManager;->FEATURE_SUPPORT:Z

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiMultiTaskManager;->sTargetMap:Ljava/util/HashMap;

    .line 20
    invoke-static {}, Lcom/android/server/am/MiuiMultiTaskManager;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static checkMultiTaskAffinity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 7
    .param p0, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "checkRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 93
    sget-boolean v5, Lcom/android/server/am/MiuiMultiTaskManager;->FEATURE_SUPPORT:Z

    if-nez v5, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v4

    .line 94
    :cond_1
    sget-object v0, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 95
    .local v1, "className":Ljava/lang/String;
    if-eqz p1, :cond_2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    if-eqz p0, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    const/4 v4, 0x1

    goto :goto_0

    .line 94
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static getLaunchAppInfoByName(Ljava/lang/String;)Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v2, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "supports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v2, "com.tencent.mm.ui.chatting.ChattingUI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v2, "com.tencent.mm.plugin.sns.ui.SnsTimeLineUI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v2, "com.tencent.mm.plugin.readerapp.ui.ReaderAppUI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v2, "com.tencent.mm.ui.conversation.BizConversationUI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v2, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, "returnTarget":Landroid/content/ComponentName;
    new-instance v2, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;

    invoke-direct {v2, v1, v0}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;-><init>(Ljava/util/ArrayList;Landroid/content/ComponentName;)V

    .line 53
    .end local v0    # "returnTarget":Landroid/content/ComponentName;
    .end local v1    # "supports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static init()V
    .locals 4

    .prologue
    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 35
    sget-object v1, Lcom/android/server/am/MiuiMultiTaskManager;->sTargetMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/server/am/MiuiMultiTaskManager;->getLaunchAppInfoByName(Ljava/lang/String;)Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method static isMultiTaskSupport(Lcom/android/server/am/ActivityRecord;)Z
    .locals 6
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 82
    sget-boolean v5, Lcom/android/server/am/MiuiMultiTaskManager;->FEATURE_SUPPORT:Z

    if-nez v5, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v4

    .line 83
    :cond_1
    sget-object v0, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 84
    .local v1, "className":Ljava/lang/String;
    if-eqz p0, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    const/4 v4, 0x1

    goto :goto_0

    .line 83
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static isVersionSupport()Z
    .locals 2

    .prologue
    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static updateMultiTaskInfoIfNeed(Lcom/android/server/am/ActivityStack;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .locals 4
    .param p0, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 58
    sget-boolean v2, Lcom/android/server/am/MiuiMultiTaskManager;->FEATURE_SUPPORT:Z

    if-nez v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcom/android/server/am/MiuiMultiTaskManager;->isVersionSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/server/am/MiuiMultiTaskManager;->sTargetMap:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 61
    sget-object v2, Lcom/android/server/am/MiuiMultiTaskManager;->sTargetMap:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;

    .line 62
    .local v0, "info":Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;
    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 65
    .local v1, "topr":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :try_start_0
    # getter for: Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->supports:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->access$000(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->returnTarget:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->access$100(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->supports:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->access$000(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x8000001

    and-int/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    const v2, 0x8000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    const/high16 v2, 0x80000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    const-string v2, "miui_launch_app_in_one_task_group"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string v2, "miui_task_return_to_target"

    # getter for: Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->returnTarget:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->access$100(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    goto :goto_0
.end method
