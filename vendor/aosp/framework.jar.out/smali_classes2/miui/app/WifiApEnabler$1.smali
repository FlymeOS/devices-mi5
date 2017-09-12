.class Lmiui/app/WifiApEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/WifiApEnabler;


# direct methods
.method constructor <init>(Lmiui/app/WifiApEnabler;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    const-string/jumbo v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # invokes: Lmiui/app/WifiApEnabler;->handleWifiApStateChanged(I)V
    invoke-static {v1, v2}, Lmiui/app/WifiApEnabler;->access$000(Lmiui/app/WifiApEnabler;I)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    # invokes: Lmiui/app/WifiApEnabler;->updateAirplaneMode()V
    invoke-static {v1}, Lmiui/app/WifiApEnabler;->access$100(Lmiui/app/WifiApEnabler;)V

    goto :goto_0

    .line 52
    :cond_2
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    # getter for: Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z
    invoke-static {v1}, Lmiui/app/WifiApEnabler;->access$200(Lmiui/app/WifiApEnabler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # invokes: Lmiui/app/WifiApEnabler;->handleWifiStateChanged(I)V
    invoke-static {v1, v2}, Lmiui/app/WifiApEnabler;->access$300(Lmiui/app/WifiApEnabler;I)V

    goto :goto_0
.end method
