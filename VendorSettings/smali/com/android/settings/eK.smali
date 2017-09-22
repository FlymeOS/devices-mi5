.class Lcom/android/vendorsettings/eK;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/vendorsettings/eK;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/android/vendorsettings/eL;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/eL;-><init>(Lcom/android/vendorsettings/eK;)V

    .line 146
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/vendorsettings/eK;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v2}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c102a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 151
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 153
    return-void
.end method
