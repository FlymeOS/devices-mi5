.class Lcom/android/settings/ho;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# instance fields
.field final synthetic zB:Lcom/android/settings/hn;


# direct methods
.method constructor <init>(Lcom/android/settings/hn;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/settings/ho;->zB:Lcom/android/settings/hn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-static {p2}, Lcom/android/settings/iC;->p(Landroid/content/Intent;)Z

    move-result v0

    .line 393
    iget-object v1, p0, Lcom/android/settings/ho;->zB:Lcom/android/settings/hn;

    invoke-static {v1}, Lcom/android/settings/hn;->a(Lcom/android/settings/hn;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/settings/ho;->zB:Lcom/android/settings/hn;

    invoke-static {v1, v0}, Lcom/android/settings/hn;->a(Lcom/android/settings/hn;Z)Z

    .line 395
    iget-object v0, p0, Lcom/android/settings/ho;->zB:Lcom/android/settings/hn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/hn;->b(Lcom/android/settings/hn;Z)V

    .line 398
    :cond_0
    return-void
.end method
