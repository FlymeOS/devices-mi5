.class Lcom/android/settings/applications/InstalledAppDetailsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetailsFragment.java"


# instance fields
.field final synthetic Jt:Lcom/android/settings/applications/InstalledAppDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$2;->Jt:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1232
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$2;->Jt:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$2;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->c(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V

    .line 1233
    return-void

    .line 1232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
