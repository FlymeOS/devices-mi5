.class Lcom/android/settings/deviceinfo/SimStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "SimStatus.java"


# instance fields
.field final synthetic WJ:Lcom/android/settings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus$1;->WJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellBroadcastMessage;

    .line 126
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$1;->WJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->a(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/CellBroadcastMessage;->getSubId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$1;->WJ:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1, v0}, Lcom/android/settings/deviceinfo/SimStatus;->a(Lcom/android/settings/deviceinfo/SimStatus;Ljava/lang/String;)V

    goto :goto_0
.end method
