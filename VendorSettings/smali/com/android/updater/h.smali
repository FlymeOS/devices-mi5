.class Lcom/android/updater/h;
.super Landroid/content/BroadcastReceiver;
.source "ApplyUpdateFragment.java"


# instance fields
.field final synthetic aMP:Lcom/android/updater/ApplyUpdateFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/updater/h;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 464
    const-string v0, "extra_update_success"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish updateSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 466
    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/updater/h;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->g(Lcom/android/updater/ApplyUpdateFragment;)V

    .line 475
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/updater/h;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->h(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/android/updater/h;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->i(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.action.DOWN_FULLPACKAGE_FROM_MIUISETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
