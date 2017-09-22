.class public Lmiui/util/AppConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;->get()Lcom/miui/internal/variable/Android_App_ActivityThread_class;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/variable/Android_App_ActivityThread_class;->currentApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    .line 25
    :cond_0
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getSdkLevel(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 35
    const-string v0, "com.miui.core"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget v0, Lcom/miui/internal/util/PackageConstants;->CURRENT_SDK_LEVEL:I

    .line 38
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/core/ManifestParser;->createFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/module/Module;->getLevel()I

    move-result v0

    goto :goto_0
.end method
