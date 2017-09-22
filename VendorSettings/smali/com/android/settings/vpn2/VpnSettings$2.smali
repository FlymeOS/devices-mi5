.class Lcom/android/vendorsettings/vpn2/VpnSettings$2;
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
    .line 366
    iput-object p1, p0, Lcom/android/vendorsettings/vpn2/VpnSettings$2;->awi:Lcom/android/vendorsettings/vpn2/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 371
    instance-of v3, v0, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    if-eqz v3, :cond_1

    .line 372
    check-cast v0, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    .line 375
    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/VpnSettings$2;->awi:Lcom/android/vendorsettings/vpn2/VpnSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->vH()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-static {v3, v0, v1, v2}, Lcom/android/vendorsettings/vpn2/ConfigDialogFragment;->a(Lcom/android/vendorsettings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    instance-of v3, v0, Lcom/android/vendorsettings/vpn2/AppPreference;

    if-eqz v3, :cond_0

    .line 378
    check-cast v0, Lcom/android/vendorsettings/vpn2/AppPreference;

    .line 379
    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/AppPreference;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    move v1, v2

    .line 380
    :cond_2
    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/VpnSettings$2;->awi:Lcom/android/vendorsettings/vpn2/VpnSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/AppPreference;->vD()Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0, v2, v1}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->a(Lcom/android/vendorsettings/vpn2/VpnSettings;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
