.class Lcom/android/settings/wifi/aE;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusController.java"


# instance fields
.field final synthetic aEk:Lcom/android/settings/wifi/aD;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/aD;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/wifi/aE;->aEk:Lcom/android/settings/wifi/aD;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    iget-object v0, p0, Lcom/android/settings/wifi/aE;->aEk:Lcom/android/settings/wifi/aD;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/aD;->a(Lcom/android/settings/wifi/aD;I)V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/aE;->aEk:Lcom/android/settings/wifi/aD;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aD;->af()V

    goto :goto_0
.end method
