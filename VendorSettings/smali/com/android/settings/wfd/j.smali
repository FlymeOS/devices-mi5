.class Lcom/android/settings/wfd/j;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic awy:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/settings/wfd/j;->awy:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 634
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 635
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/settings/wfd/j;->awy:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->f(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 638
    :cond_0
    return-void
.end method
