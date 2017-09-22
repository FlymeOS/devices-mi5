.class public Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;
.super Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;
.source "AppStateUsageBridge.java"


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 60
    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gn:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;->Gn:Landroid/content/pm/PackageInfo;

    .line 61
    iget v0, p1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gq:I

    iput v0, p0, Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;->Gq:I

    .line 62
    iget-boolean v0, p1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gp:Z

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;->Gp:Z

    .line 63
    iget-boolean v0, p1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Go:Z

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;->Go:Z

    .line 64
    return-void
.end method
