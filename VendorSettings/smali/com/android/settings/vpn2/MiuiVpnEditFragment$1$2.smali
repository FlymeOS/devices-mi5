.class Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$2;
.super Ljava/lang/Object;
.source "MiuiVpnEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic avJ:Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$2;->avJ:Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$2;->avJ:Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;

    iget-object v0, v0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;->avI:Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->finish()V

    .line 210
    return-void
.end method
