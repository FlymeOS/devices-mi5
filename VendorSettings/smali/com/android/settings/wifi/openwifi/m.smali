.class Lcom/android/settings/wifi/openwifi/m;
.super Ljava/lang/Object;
.source "OpenWifiController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic aFV:Lcom/android/settings/wifi/openwifi/l;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$condition:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/openwifi/l;Landroid/accounts/Account;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings/wifi/openwifi/m;->aFV:Lcom/android/settings/wifi/openwifi/l;

    iput-object p2, p0, Lcom/android/settings/wifi/openwifi/m;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/android/settings/wifi/openwifi/m;->val$condition:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 291
    invoke-static {p2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    move-result-object v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/m;->aFV:Lcom/android/settings/wifi/openwifi/l;

    iget-object v2, p0, Lcom/android/settings/wifi/openwifi/m;->val$account:Landroid/accounts/Account;

    invoke-interface {v0, v2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;->getPhone(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/wifi/openwifi/l;->a(Lcom/android/settings/wifi/openwifi/l;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/m;->val$condition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 298
    return-void

    .line 294
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 301
    return-void
.end method
