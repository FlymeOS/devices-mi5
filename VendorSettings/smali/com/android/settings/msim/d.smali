.class Lcom/android/vendorsettings/msim/d;
.super Landroid/content/BroadcastReceiver;
.source "SimFragment.java"


# instance fields
.field final synthetic ahM:Lcom/android/vendorsettings/msim/SimFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/msim/SimFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/vendorsettings/msim/d;->ahM:Lcom/android/vendorsettings/msim/SimFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellBroadcastMessage;

    .line 118
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/android/vendorsettings/msim/d;->ahM:Lcom/android/vendorsettings/msim/SimFragment;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/msim/SimFragment;->a(Lcom/android/vendorsettings/msim/SimFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
