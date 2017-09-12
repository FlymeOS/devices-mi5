.class public Lcom/miui/server/XSpaceManagerService;
.super Ljava/lang/Object;
.source "XSpaceManagerService.java"


# static fields
.field private static final EXTRA_XSPACE_CACHED_USERID:Ljava/lang/String; = "android.intent.extra.xspace_cached_uid"

.field private static final EXTRA_XSPACE_RESOLVE_INTENT_AGAIN:Ljava/lang/String; = "android.intent.extra.xspace_resolve_intent_again"

.field private static final EXTRA_XSPACE_USERID_SELECTED:Ljava/lang/String; = "android.intent.extra.xspace_userid_selected"

.field private static final PACKAGE_LINKER:Ljava/lang/String; = "@"

.field private static final SYSTEM_PROP_XSPACE_CREATED:Ljava/lang/String; = "persist.sys.xspace_created"

.field private static final TAG:Ljava/lang/String;

.field private static final XIAOMI_GAMECENTER_SDK_PKGNAME:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.service"

.field private static final XSPACE_APP_LIST_INIT_NUMBER:I

.field private static final sCachedCallingRelationSelfLocked:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsXSpaceActived:Z

.field public static sIsXSpaceCreated:Z

.field private static final sPackageCallback:Landroid/content/pm/LauncherApps$Callback;

.field private static final sPublicActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sResolver:Landroid/content/ContentResolver;

.field private static final sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    const-class v0, Lcom/miui/server/XSpaceManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    .line 59
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    .line 70
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    .line 78
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    sget-object v1, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    .line 86
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sput v0, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    .line 240
    sput-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    .line 242
    sput-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    .line 307
    new-instance v0, Lcom/miui/server/XSpaceManagerService$2;

    invoke-direct {v0}, Lcom/miui/server/XSpaceManagerService$2;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sPackageCallback:Landroid/content/pm/LauncherApps$Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/os/UserHandle;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/miui/server/XSpaceManagerService;->onPackageCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "fromActivity"    # Z
    .param p4, "requestCode"    # I
    .param p5, "userId"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p2}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "aimPkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 98
    .local v3, "callingUserId":I
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkXSpaceControl, from:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", with act:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", callingUserId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", toUserId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz v3, :cond_0

    const/16 v5, 0x3e7

    if-eq v3, v5, :cond_0

    move-object v4, p2

    .line 144
    .end local p2    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    :goto_0
    return-object v4

    .line 107
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_0
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v4, p2

    .line 110
    .end local p2    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 114
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v5, "android.intent.extra.xspace_userid_selected"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 116
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v6, "from XSpace ResolverActivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v5, "android.intent.extra.xspace_userid_selected"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 118
    const-string v5, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 120
    invoke-static {v1, p6}, Lcom/miui/server/XSpaceManagerService;->putCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v4, p2

    .line 144
    .end local p2    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 123
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static {v1, p6}, Lcom/miui/server/XSpaceManagerService;->getToUserIdFromCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 124
    .local v2, "cachedToUserId":I
    const/16 v5, -0x2710

    if-eq v2, v5, :cond_5

    .line 126
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v6, "using cached calling relation"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v5, "android.intent.extra.xspace_cached_uid"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 130
    :cond_5
    sget-object v6, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v6

    .line 131
    :try_start_0
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 133
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v7, "pop up ResolverActivity"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {p2, v1, p4}, Lcom/miui/server/XSpaceManagerService;->getResolverActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 140
    :cond_6
    :goto_2
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 135
    :cond_7
    :try_start_1
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v5, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 136
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v7, "XSpace installed App to normal App"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v5, "android.intent.extra.xspace_cached_uid"

    const/4 v7, 0x0

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    invoke-static {v1, p6}, Lcom/miui/server/XSpaceManagerService;->putCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private static getAimPkg(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "aimPkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 214
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 218
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getCachedUserId(Landroid/content/Intent;Ljava/lang/String;)I
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 158
    const/16 v1, -0x2710

    .line 159
    .local v1, "cachedUserId":I
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "aimPkg":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.extra.xspace_cached_uid"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const-string v2, "android.intent.extra.xspace_cached_uid"

    const/16 v3, -0x2710

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 163
    const-string v2, "android.intent.extra.xspace_cached_uid"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 165
    :cond_0
    return v1
.end method

.method private static getPackageActionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getResolverActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aimPkg"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ACTION_XSPACE_RESOLVER_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "resolverActivityIntent":Landroid/content/Intent;
    if-ltz p2, :cond_0

    .line 225
    const/high16 v1, 0x2000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    :cond_0
    const-string v1, "android.intent.extra.xspace_userid_selected"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    const-string v1, "android.intent.extra.xspace_resolver_activity_original_intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    const-string v1, "android.intent.extra.xspace_resolver_activity_aim_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "android"

    const-string v2, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    return-object v0
.end method

.method private static getToUserIdFromCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "aimPkg"    # Ljava/lang/String;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 196
    const/16 v0, -0x2710

    .line 197
    .local v0, "cachedToUserId":I
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    monitor-enter v4

    .line 198
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "callingRelationKey":Ljava/lang/String;
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 200
    .local v2, "toUserIdObj":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 203
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got callingRelationKey :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cachedToUserId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    monitor-exit v4

    .line 207
    return v0

    .line 206
    .end local v1    # "callingRelationKey":Ljava/lang/String;
    .end local v2    # "toUserIdObj":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static init(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 247
    invoke-static {}, Lcom/miui/server/XSpaceManagerService;->initXSpaceAppList()V

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sput-object v2, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    .line 250
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string v3, "xspace_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    .line 252
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string v3, "xspace_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/miui/server/XSpaceManagerService$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, v5}, Lcom/miui/server/XSpaceManagerService$1;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    const-string v2, "launcherapps"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 265
    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->sPackageCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v1, v2}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 267
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XSpace init, active:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :try_start_0
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->isXSpaceCreated(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    .line 271
    sget-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    if-eqz v2, :cond_0

    .line 272
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->startXSpaceService(Landroid/content/Context;)V

    .line 273
    const-string v2, "persist.sys.xspace_created"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/server/pm/ExtraPackageManagerService;->checkExtraRestoreconFlag(Landroid/content/Context;)V

    .line 281
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Can not start XSpaceService."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static initXSpaceAppList()V
    .locals 9

    .prologue
    .line 284
    const/4 v5, 0x0

    .line 286
    .local v5, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x3e7

    invoke-interface {v6, v7, v8}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 290
    :goto_0
    if-eqz v5, :cond_2

    .line 291
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 292
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-object v7, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v7

    .line 293
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 294
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 295
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-gtz v6, :cond_0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3e8

    if-le v6, v8, :cond_0

    .line 296
    sget-object v6, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 287
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public static isPublicIntent(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v2

    .line 173
    :cond_1
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "aimPkg":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    :try_start_0
    const-string v3, ""

    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    const/4 v2, 0x1

    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Private intent"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isXSpaceCreated(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 365
    const-string v5, "user"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 366
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 367
    .local v3, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 368
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    const/4 v4, 0x1

    .line 372
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    :cond_1
    return v4
.end method

.method private static onPackageCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 333
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update XSpace App: packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    sput-boolean v3, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    .line 336
    const-string v0, "persist.sys.xspace_created"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v1

    .line 339
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/miui/server/XSpaceManagerService;->updateXSpaceStatusLocked(Z)V

    .line 340
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    monitor-exit v1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 342
    :cond_1
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v1

    .line 344
    :try_start_1
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 345
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/server/XSpaceManagerService;->updateXSpaceStatusLocked(Z)V

    .line 346
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private static putCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "aimPkg"    # Ljava/lang/String;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 187
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    monitor-enter v3

    .line 188
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "callingRelationKey":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 190
    .local v0, "cachedUserId":I
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putCachedCallingRelationm, callingRelationKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cachedUserId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    monitor-exit v3

    .line 193
    return-void

    .line 192
    .end local v0    # "cachedUserId":I
    .end local v1    # "callingRelationKey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static shouldResolveAgain(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "aimPkg":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x1

    .line 154
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static startXSpaceService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.xspace.service.XSpaceService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 361
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 362
    return-void
.end method

.method private static updateXSpaceStatusLocked(Z)V
    .locals 2
    .param p0, "isXSpaceActive"    # Z

    .prologue
    .line 353
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    if-ne v0, v1, :cond_0

    .line 354
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string v1, "xspace_enabled"

    invoke-static {v0, v1, p0}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 356
    :cond_0
    return-void
.end method
