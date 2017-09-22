.class public Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
.super Ljava/lang/Object;
.source "AppStateAppOpsBridge.java"


# instance fields
.field public Gn:Landroid/content/pm/PackageInfo;

.field public Go:Z

.field public Gp:Z

.field public Gq:I

.field public final packageName:Ljava/lang/String;

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    .line 308
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Gq:I

    .line 309
    iput-object p2, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    .line 310
    return-void
.end method


# virtual methods
.method public jQ()Z
    .locals 2

    .prologue
    .line 316
    iget v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Gq:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 317
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Go:Z

    .line 319
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->Gq:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
