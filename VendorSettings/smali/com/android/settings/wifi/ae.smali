.class Lcom/android/vendorsettings/wifi/ae;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# instance fields
.field final synthetic aCh:Lcom/android/vendorsettings/wifi/ad;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/ad;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/ae;->aCh:Lcom/android/vendorsettings/wifi/ad;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 56
    if-ne v0, v3, :cond_1

    .line 57
    const-string v1, "wifi_ap_error_code"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 59
    iget-object v2, p0, Lcom/android/vendorsettings/wifi/ae;->aCh:Lcom/android/vendorsettings/wifi/ad;

    invoke-static {v2, v0, v1}, Lcom/android/vendorsettings/wifi/ad;->a(Lcom/android/vendorsettings/wifi/ad;II)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/ae;->aCh:Lcom/android/vendorsettings/wifi/ad;

    invoke-static {v1, v0, v2}, Lcom/android/vendorsettings/wifi/ad;->a(Lcom/android/vendorsettings/wifi/ad;II)V

    goto :goto_0

    .line 63
    :cond_2
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/ae;->aCh:Lcom/android/vendorsettings/wifi/ad;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/ad;->a(Lcom/android/vendorsettings/wifi/ad;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/ae;->aCh:Lcom/android/vendorsettings/wifi/ad;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/wifi/ad;->a(Lcom/android/vendorsettings/wifi/ad;I)V

    goto :goto_0

    .line 68
    :cond_3
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    const-string v0, "availableArray"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    const-string v1, "activeArray"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 73
    const-string v2, "erroredArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/android/vendorsettings/wifi/ae;->aCh:Lcom/android/vendorsettings/wifi/ad;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/android/vendorsettings/wifi/ad;->a(Lcom/android/vendorsettings/wifi/ad;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_4
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/ae;->aCh:Lcom/android/vendorsettings/wifi/ad;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/ad;->b(Lcom/android/vendorsettings/wifi/ad;)V

    goto :goto_0
.end method
