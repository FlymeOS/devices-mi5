.class Lcom/android/updater/g;
.super Landroid/content/BroadcastReceiver;
.source "ApplyUpdateFragment.java"


# instance fields
.field final synthetic aMP:Lcom/android/updater/ApplyUpdateFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/updater/g;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 447
    const-string v0, "extra_total_progress"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 448
    const-string v1, "extra_current_progress"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applay update progress max = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 451
    invoke-static {v1}, Lcom/android/updater/ApplyUpdateFragment;->eh(I)I

    .line 452
    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->ei(I)I

    .line 453
    iget-object v2, p0, Lcom/android/updater/g;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v2, v0, v1}, Lcom/android/updater/ApplyUpdateFragment;->a(Lcom/android/updater/ApplyUpdateFragment;II)V

    .line 454
    return-void
.end method
