.class Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1;
.super Ljava/lang/Object;
.source "MiuiVpnEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic avI:Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1;->avI:Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1;->avI:Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;

    invoke-virtual {v1}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c092e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1$1;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1$1;-><init>(Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1$2;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1$2;-><init>(Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 212
    return-void
.end method
