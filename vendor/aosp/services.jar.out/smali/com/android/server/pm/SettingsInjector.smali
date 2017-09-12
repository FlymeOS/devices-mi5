.class public Lcom/android/server/pm/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# static fields
.field private static final FIRST_LAUNCH_LISTENER_PACKAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-class v0, Lcom/android/server/pm/SettingsInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.miui.analytics"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.market"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/SettingsInjector;->FIRST_LAUNCH_LISTENER_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/server/pm/SettingsInjector;->FIRST_LAUNCH_LISTENER_PACKAGES:[Ljava/lang/String;

    return-object v0
.end method

.method public static checkXSpaceApp(Lcom/android/server/pm/PackageSetting;I)Z
    .locals 8
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 25
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 26
    sget-object v6, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 27
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 31
    :goto_0
    sget-object v5, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 32
    sget-object v5, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 33
    .local v3, "requiredComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Component;>;"
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Component;

    .line 39
    .local v0, "component":Landroid/content/pm/PackageParser$Component;
    iget-object v5, v0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 42
    iget-object v5, v0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/pm/PackageSetting;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    .line 29
    .end local v0    # "component":Landroid/content/pm/PackageParser$Component;
    .end local v1    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Component;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "requiredComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0, v5, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {p1}, Lmiui/securityspace/CrossUserUtils;->isAirLockUser(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 48
    invoke-virtual {p0, v5, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 51
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method private static isSystem(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static noftifyFirstLaunch(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;I)V
    .locals 3
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .prologue
    .line 65
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/pm/SettingsInjector;->isSystem(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance v0, Lcom/android/server/pm/SettingsInjector$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/pm/SettingsInjector$1;-><init>(Lcom/android/server/pm/PackageSetting;ILcom/android/server/pm/PackageManagerService;)V

    .line 99
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 104
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
