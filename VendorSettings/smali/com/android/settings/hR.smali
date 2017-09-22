.class Lcom/android/vendorsettings/hR;
.super Ljava/lang/Object;
.source "TetherService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic AS:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic AT:Lcom/android/vendorsettings/TetherService;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/TetherService;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/vendorsettings/hR;->AT:Lcom/android/vendorsettings/TetherService;

    iput-object p2, p0, Lcom/android/vendorsettings/hR;->AS:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .prologue
    .line 194
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/vendorsettings/hR;->AS:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 196
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method
