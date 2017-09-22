.class Lcom/android/vendorsettings/vpn2/LockdownConfigFragment$1;
.super Ljava/lang/Object;
.source "LockdownConfigFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Ac:Landroid/widget/ListView;

.field final synthetic avE:Landroid/security/KeyStore;

.field final synthetic avF:Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;Landroid/widget/ListView;Landroid/security/KeyStore;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment$1;->avF:Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;

    iput-object p2, p0, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment$1;->Ac:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment$1;->avE:Landroid/security/KeyStore;

    iput-object p4, p0, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 138
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment$1;->Ac:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment$1;->avF:Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;->a(Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 141
    :cond_0
    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment$1;->avE:Landroid/security/KeyStore;

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 155
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment$1;->avF:Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment$1;->avF:Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;->b(Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 145
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment$1;->val$context:Landroid/content/Context;

    const v1, 0x7f0c0932

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment$1;->avE:Landroid/security/KeyStore;

    const-string v2, "LOCKDOWN_VPN"

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    goto :goto_1
.end method
