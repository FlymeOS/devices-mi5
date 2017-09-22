.class Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1$1;
.super Ljava/lang/Object;
.source "MiuiVpnEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic avJ:Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1$1;->avJ:Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1$1;->avJ:Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1;

    iget-object v0, v0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1;->avI:Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->g(Z)V

    .line 201
    return-void
.end method
