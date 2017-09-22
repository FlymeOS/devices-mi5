.class Lcom/android/vendorsettings/fA;
.super Ljava/lang/Object;
.source "MiuiWirelessSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic uD:Lcom/android/vendorsettings/MiuiWirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiWirelessSettings;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/vendorsettings/fA;->uD:Lcom/android/vendorsettings/MiuiWirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/vendorsettings/fA;->uD:Lcom/android/vendorsettings/MiuiWirelessSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiWirelessSettings;->a(Lcom/android/vendorsettings/MiuiWirelessSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/fA;->uD:Lcom/android/vendorsettings/MiuiWirelessSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiWirelessSettings;->a(Lcom/android/vendorsettings/MiuiWirelessSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 149
    return-void
.end method
