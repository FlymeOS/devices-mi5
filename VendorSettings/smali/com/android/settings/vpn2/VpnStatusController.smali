.class public Lcom/android/vendorsettings/vpn2/VpnStatusController;
.super Lcom/android/vendorsettings/ag;
.source "VpnStatusController.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private tj:Lcom/android/vendorsettings/vpn2/VpnManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/ag;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 11
    const-string v0, "VpnStatusController"

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnStatusController;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/vpn2/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnStatusController;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    .line 18
    return-void
.end method

.method private dj(I)V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVpnTitle, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnStatusController;->cw:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 31
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 36
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnStatusController;->cw:Landroid/widget/TextView;

    const v1, 0x7f0c1105

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnStatusController;->cw:Landroid/widget/TextView;

    const v1, 0x7f0c1104

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public af()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnStatusController;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/VpnManager;->vS()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/VpnStatusController;->dj(I)V

    .line 23
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnStatusController;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/VpnManager;->vS()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/VpnStatusController;->dj(I)V

    .line 43
    return-void
.end method
