.class Lcom/android/vendorsettings/eL;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic rJ:Lcom/android/vendorsettings/eK;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/eK;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/vendorsettings/eL;->rJ:Lcom/android/vendorsettings/eK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 138
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 139
    new-instance v0, Lcom/android/vendorsettings/aH;

    iget-object v1, p0, Lcom/android/vendorsettings/eL;->rJ:Lcom/android/vendorsettings/eK;

    iget-object v1, v1, Lcom/android/vendorsettings/eK;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v1}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/eL;->rJ:Lcom/android/vendorsettings/eK;

    iget-object v2, v2, Lcom/android/vendorsettings/eK;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-direct {v0, v1, v2}, Lcom/android/vendorsettings/aH;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/aH;->b(ILjava/lang/CharSequence;)Z

    .line 142
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 143
    return-void
.end method
