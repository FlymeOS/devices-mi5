.class public Lcom/android/vendorsettings/bluetooth/DockService$DockBluetoothCallback;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Lcom/android/b/b/g;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/DockService$DockBluetoothCallback;->mContext:Landroid/content/Context;

    .line 935
    return-void
.end method

.method private static at(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 969
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 970
    if-eqz v0, :cond_0

    .line 971
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 972
    if-eqz v2, :cond_0

    .line 973
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 974
    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 979
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/b/b/H;I)V
    .locals 3

    .prologue
    .line 951
    invoke-virtual {p1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 952
    const/16 v1, 0xa

    if-ne p2, v1, :cond_0

    .line 953
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService$DockBluetoothCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences;->q(Landroid/content/Context;Ljava/lang/String;)V

    .line 959
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService$DockBluetoothCallback;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/vendorsettings/bluetooth/DockService$DockBluetoothCallback;->at(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/b/b/H;->setVisible(Z)V

    .line 964
    :cond_0
    return-void
.end method

.method public aB(Z)V
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService$DockBluetoothCallback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences;->av(Landroid/content/Context;)V

    .line 947
    return-void
.end method

.method public b(Lcom/android/b/b/H;)V
    .locals 0

    .prologue
    .line 938
    return-void
.end method

.method public b(Lcom/android/b/b/H;I)V
    .locals 0

    .prologue
    .line 940
    return-void
.end method

.method public bj(I)V
    .locals 0

    .prologue
    .line 937
    return-void
.end method

.method public d(Lcom/android/b/b/H;)V
    .locals 0

    .prologue
    .line 939
    return-void
.end method
