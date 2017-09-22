.class Lcom/android/vendorsettings/accounts/AccountSyncSettings$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic El:Lcom/android/vendorsettings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/accounts/AccountSyncSettings;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings$1;->El:Lcom/android/vendorsettings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings$1;->El:Lcom/android/vendorsettings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 101
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings$1;->El:Lcom/android/vendorsettings/accounts/AccountSyncSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->a(Lcom/android/vendorsettings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v1

    new-instance v3, Lcom/android/vendorsettings/accounts/AccountSyncSettings$1$1;

    invoke-direct {v3, p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings$1$1;-><init>(Lcom/android/vendorsettings/accounts/AccountSyncSettings$1;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings$1;->El:Lcom/android/vendorsettings/accounts/AccountSyncSettings;

    iget-object v5, v5, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 131
    return-void
.end method
