.class final Lcom/android/b/b/p;
.super Lcom/android/b/b/m;
.source "BluetoothDeviceFilter.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/b/b/m;-><init>(Lcom/android/b/b/i;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/b/i;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/b/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method a([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 154
    if-eqz p1, :cond_1

    .line 155
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
