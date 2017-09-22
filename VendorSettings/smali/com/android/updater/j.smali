.class Lcom/android/updater/j;
.super Landroid/content/BroadcastReceiver;
.source "ApplyUpdateFragment.java"


# instance fields
.field final synthetic aMP:Lcom/android/updater/ApplyUpdateFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/updater/j;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 497
    const-string v0, "com.android.updater.action.CANCEL_DOWNLOAD_FULLPACKAGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiuiSettings ----mDownloadFullPackageReceiver action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/updater/j;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    const/4 v1, 0x0

    move-wide v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/updater/ApplyUpdateFragment;->a(Lcom/android/updater/ApplyUpdateFragment;ZJJ)V

    .line 503
    :cond_0
    return-void
.end method
