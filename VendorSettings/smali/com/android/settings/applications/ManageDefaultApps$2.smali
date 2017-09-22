.class Lcom/android/vendorsettings/applications/ManageDefaultApps$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "ManageDefaultApps.java"


# instance fields
.field final synthetic Kw:Lcom/android/vendorsettings/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/ManageDefaultApps;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ManageDefaultApps$2;->Kw:Lcom/android/vendorsettings/applications/ManageDefaultApps;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private iL()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageDefaultApps$2;->Kw:Lcom/android/vendorsettings/applications/ManageDefaultApps;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageDefaultApps;->c(Lcom/android/vendorsettings/applications/ManageDefaultApps;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageDefaultApps$2;->Kw:Lcom/android/vendorsettings/applications/ManageDefaultApps;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ManageDefaultApps;->b(Lcom/android/vendorsettings/applications/ManageDefaultApps;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageDefaultApps$2;->iL()V

    .line 75
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageDefaultApps$2;->iL()V

    .line 80
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageDefaultApps$2;->iL()V

    .line 85
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageDefaultApps$2;->iL()V

    .line 90
    return-void
.end method
