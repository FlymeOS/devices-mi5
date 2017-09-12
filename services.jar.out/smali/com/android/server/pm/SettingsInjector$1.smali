.class final Lcom/android/server/pm/SettingsInjector$1;
.super Ljava/lang/Object;
.source "SettingsInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/SettingsInjector;->noftifyFirstLaunch(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pkgSetting:Lcom/android/server/pm/PackageSetting;

.field final synthetic val$pms:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSetting;ILcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iput p2, p0, Lcom/android/server/pm/SettingsInjector$1;->val$userId:I

    iput-object p3, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pms:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 74
    :try_start_0
    # getter for: Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/SettingsInjector;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "noftify first launch"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    # getter for: Lcom/android/server/pm/SettingsInjector;->FIRST_LAUNCH_LISTENER_PACKAGES:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/SettingsInjector;->access$100()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v6, v0, v2

    .line 76
    .local v6, "targetPackage":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "package"

    iget-object v8, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v7, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 79
    const-string v7, "installer"

    iget-object v8, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    :cond_0
    const-string v7, "userId"

    iget v8, p0, Lcom/android/server/pm/SettingsInjector$1;->val$userId:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "callingPackage":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pms:Lcom/android/server/pm/PackageManagerService;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pms:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_1

    .line 90
    iget-object v7, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pms:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 92
    :cond_1
    invoke-static {v3, v1}, Lcom/android/server/pm/IActivityManagerCompat;->startService(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "callingPackage":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "len$":I
    .end local v6    # "targetPackage":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 95
    .local v5, "t":Ljava/lang/Throwable;
    # getter for: Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/SettingsInjector;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "noftify first launch exception"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method
