.class Lcom/android/vendorsettings/vpn2/VpnSettings$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic awi:Lcom/android/vendorsettings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/vpn2/VpnSettings;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/vendorsettings/vpn2/VpnSettings$1;->awi:Lcom/android/vendorsettings/vpn2/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 257
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/VpnSettings$1;->awi:Lcom/android/vendorsettings/vpn2/VpnSettings;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->d(Lcom/android/internal/net/VpnProfile;)V

    .line 258
    return-void
.end method
