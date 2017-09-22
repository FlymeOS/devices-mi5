.class Lcom/android/vendorsettings/dx;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# instance fields
.field final synthetic om:Lcom/android/vendorsettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/vendorsettings/dx;->om:Lcom/android/vendorsettings/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/dx;->om:Lcom/android/vendorsettings/IccLockSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/IccLockSettings;->b(Lcom/android/vendorsettings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/dx;->om:Lcom/android/vendorsettings/IccLockSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/IccLockSettings;->b(Lcom/android/vendorsettings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    :cond_0
    return-void
.end method
