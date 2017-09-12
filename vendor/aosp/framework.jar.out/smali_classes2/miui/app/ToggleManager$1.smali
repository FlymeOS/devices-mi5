.class Lmiui/app/ToggleManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 933
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 936
    :cond_0
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1, p2}, Lmiui/app/ToggleManager;->updateWifiToggle(Landroid/content/Intent;)V

    .line 948
    :cond_1
    :goto_0
    return-void

    .line 937
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 938
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateBluetoothToggle()V

    goto :goto_0

    .line 939
    :cond_3
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 940
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    .line 941
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    goto :goto_0

    .line 942
    :cond_4
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 943
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateFlightModeToggle()V
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$000(Lmiui/app/ToggleManager;)V

    goto :goto_0

    .line 944
    :cond_5
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 945
    iget-object v2, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    # setter for: Lmiui/app/ToggleManager;->mIsSimMissing:Z
    invoke-static {v2, v1}, Lmiui/app/ToggleManager;->access$102(Lmiui/app/ToggleManager;Z)Z

    .line 946
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateDataToggle()V
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$200(Lmiui/app/ToggleManager;)V

    goto :goto_0

    .line 945
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method
