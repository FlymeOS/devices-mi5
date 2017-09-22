.class Lcom/android/settings/fD;
.super Landroid/content/BroadcastReceiver;
.source "MiuiWirelessSettings.java"


# instance fields
.field final synthetic uD:Lcom/android/settings/MiuiWirelessSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiWirelessSettings;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiWirelessSettings;Lcom/android/settings/fA;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/settings/fD;-><init>(Lcom/android/settings/MiuiWirelessSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    const-string v0, "availableArray"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    const-string v1, "activeArray"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 162
    const-string v2, "erroredArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 164
    iget-object v3, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/android/settings/MiuiWirelessSettings;->a(Lcom/android/settings/MiuiWirelessSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0, v3}, Lcom/android/settings/MiuiWirelessSettings;->a(Lcom/android/settings/MiuiWirelessSettings;Z)Z

    .line 169
    iget-object v0, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiWirelessSettings;->b(Lcom/android/settings/MiuiWirelessSettings;)V

    goto :goto_0

    .line 170
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    iget-object v0, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0, v2}, Lcom/android/settings/MiuiWirelessSettings;->a(Lcom/android/settings/MiuiWirelessSettings;Z)Z

    .line 172
    iget-object v0, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiWirelessSettings;->b(Lcom/android/settings/MiuiWirelessSettings;)V

    goto :goto_0

    .line 173
    :cond_3
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    iget-object v0, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    const-string v1, "connected"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiWirelessSettings;->b(Lcom/android/settings/MiuiWirelessSettings;Z)Z

    .line 175
    iget-object v0, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiWirelessSettings;->b(Lcom/android/settings/MiuiWirelessSettings;)V

    goto :goto_0

    .line 176
    :cond_4
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiWirelessSettings;->c(Lcom/android/settings/MiuiWirelessSettings;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 197
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiWirelessSettings;->b(Lcom/android/settings/MiuiWirelessSettings;)V

    goto :goto_0

    .line 181
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiWirelessSettings;->a(Lcom/android/settings/MiuiWirelessSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 182
    if-eqz v0, :cond_5

    .line 183
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0, v2}, Lcom/android/settings/MiuiWirelessSettings;->c(Lcom/android/settings/MiuiWirelessSettings;Z)Z

    goto :goto_1

    .line 190
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/fD;->uD:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0, v2}, Lcom/android/settings/MiuiWirelessSettings;->c(Lcom/android/settings/MiuiWirelessSettings;Z)Z

    goto :goto_1

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
