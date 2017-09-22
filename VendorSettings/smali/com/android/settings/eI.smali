.class Lcom/android/vendorsettings/eI;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;


# instance fields
.field final synthetic rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/vendorsettings/eI;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlocked(B)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    .line 48
    # getter for: Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnlocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/android/vendorsettings/eI;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 55
    :cond_0
    if-ne p1, v3, :cond_2

    .line 56
    iget-object v0, p0, Lcom/android/vendorsettings/eI;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->a(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/eI;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->a(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/eI;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->b(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    if-ne p1, v3, :cond_3

    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/eI;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->c(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c1030

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/eI;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->a(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/vendorsettings/eI;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->a(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 68
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/android/vendorsettings/eI;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->c(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c102f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/eI;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->c(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c102e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/eI;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->c(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c102d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
