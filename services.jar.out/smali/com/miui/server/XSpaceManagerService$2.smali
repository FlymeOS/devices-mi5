.class final Lcom/miui/server/XSpaceManagerService$2;
.super Landroid/content/pm/LauncherApps$Callback;
.source "XSpaceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/XSpaceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 316
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    # invokes: Lcom/miui/server/XSpaceManagerService;->onPackageCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    invoke-static {p1, p2, v0}, Lcom/miui/server/XSpaceManagerService;->access$200(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 321
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 311
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    # invokes: Lcom/miui/server/XSpaceManagerService;->onPackageCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    invoke-static {p1, p2, v0}, Lcom/miui/server/XSpaceManagerService;->access$200(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .prologue
    .line 325
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .prologue
    .line 329
    return-void
.end method
