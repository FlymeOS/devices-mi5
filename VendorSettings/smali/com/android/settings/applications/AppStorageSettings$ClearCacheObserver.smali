.class Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "AppStorageSettings.java"


# instance fields
.field final synthetic Hh:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->Hh:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->Hh:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0}, Lcom/android/settings/applications/AppStorageSettings;->c(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 504
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 505
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->Hh:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0}, Lcom/android/settings/applications/AppStorageSettings;->c(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    return-void

    .line 504
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
