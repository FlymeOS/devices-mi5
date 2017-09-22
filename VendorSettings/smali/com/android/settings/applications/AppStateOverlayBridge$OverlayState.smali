.class public Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;
.super Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;
.source "AppStateOverlayBridge.java"


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 69
    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gn:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;->Gn:Landroid/content/pm/PackageInfo;

    .line 70
    iget v0, p1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gq:I

    iput v0, p0, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;->Gq:I

    .line 71
    iget-boolean v0, p1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gp:Z

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;->Gp:Z

    .line 72
    iget-boolean v0, p1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Go:Z

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;->Go:Z

    .line 73
    return-void
.end method
