.class public Lcom/android/vendorsettings/vpn2/AppDialogFragment;
.super Landroid/app/DialogFragment;
.source "AppDialogFragment.java"

# interfaces
.implements Lcom/android/vendorsettings/vpn2/AppDialog$Listener;


# instance fields
.field private Fj:Landroid/content/pm/PackageInfo;

.field private final ave:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 50
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->ave:Landroid/net/IConnectivityManager;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/vpn2/AppDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->c(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static a(Lcom/android/vendorsettings/vpn2/VpnSettings;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v1, "package"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    const-string v1, "label"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "managing"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    const-string v1, "connected"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    new-instance v1, Lcom/android/vendorsettings/vpn2/AppDialogFragment;

    invoke-direct {v1}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;-><init>()V

    .line 64
    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "vpnappdialog"

    invoke-virtual {v1, v0, v2}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Landroid/content/DialogInterface;)V
    .locals 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->ave:Landroid/net/IConnectivityManager;

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->ave:Landroid/net/IConnectivityManager;

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "[Legacy VPN]"

    invoke-interface {v0, v2, v3, v1}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v2, "AppDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to disconnect package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public b(Landroid/content/DialogInterface;)V
    .locals 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->ave:Landroid/net/IConnectivityManager;

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 110
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->c(Landroid/content/DialogInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v2, "AppDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to forget authorization of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->dismiss()V

    .line 102
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 103
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v2, "managing"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 74
    const-string v3, "connected"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 75
    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->Fj:Landroid/content/pm/PackageInfo;

    .line 77
    if-eqz v2, :cond_0

    .line 78
    new-instance v0, Lcom/android/vendorsettings/vpn2/AppDialog;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->Fj:Landroid/content/pm/PackageInfo;

    invoke-direct {v0, v2, p0, v3, v1}, Lcom/android/vendorsettings/vpn2/AppDialog;-><init>(Landroid/content/Context;Lcom/android/vendorsettings/vpn2/AppDialog$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0928

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0921

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 86
    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0929

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/vpn2/AppDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/vpn2/AppDialogFragment$1;-><init>(Lcom/android/vendorsettings/vpn2/AppDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method
