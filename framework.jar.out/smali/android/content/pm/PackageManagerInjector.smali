.class public Landroid/content/pm/PackageManagerInjector;
.super Ljava/lang/Object;
.source "PackageManagerInjector.java"


# static fields
.field private static sCtsPackage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageManagerInjector;->sCtsPackage:Ljava/util/Set;

    .line 20
    sget-object v0, Landroid/content/pm/PackageManagerInjector;->sCtsPackage:Ljava/util/Set;

    const-string v1, "com.android.cts.usepermission"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Landroid/content/pm/PackageManagerInjector;->sCtsPackage:Ljava/util/Set;

    const-string v1, "com.android.cts.permissionapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionControllerPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 32
    .local v0, "application":Landroid/app/Application;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "currentPackageName":Ljava/lang/String;
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_0

    sget-object v3, Landroid/content/pm/PackageManagerInjector;->sCtsPackage:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 39
    .end local v1    # "currentPackageName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "com.lbe.security.miui"

    goto :goto_0
.end method
