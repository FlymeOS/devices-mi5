.class public Lcom/android/settings/applications/ResetAppsHelper;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private Hu:Landroid/app/AlertDialog;

.field private final MA:Landroid/content/pm/IPackageManager;

.field private final MB:Landroid/app/INotificationManager;

.field private final MC:Landroid/net/NetworkPolicyManager;

.field private final MD:Landroid/app/AppOpsManager;

.field private final i:Landroid/content/pm/PackageManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings/applications/ResetAppsHelper;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->i:Landroid/content/pm/PackageManager;

    .line 58
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->MA:Landroid/content/pm/IPackageManager;

    .line 59
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->MB:Landroid/app/INotificationManager;

    .line 61
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->MC:Landroid/net/NetworkPolicyManager;

    .line 62
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->MD:Landroid/app/AppOpsManager;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->i:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->MB:Landroid/app/INotificationManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->MA:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/AppOpsManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->MD:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->MC:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method


# virtual methods
.method kg()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->Hu:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/applications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c059d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c059e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c059f

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->Hu:Landroid/app/AlertDialog;

    .line 94
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->Hu:Landroid/app/AlertDialog;

    if-eq v0, p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Lcom/android/settings/applications/ResetAppsHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ResetAppsHelper$1;-><init>(Lcom/android/settings/applications/ResetAppsHelper;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->Hu:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->Hu:Landroid/app/AlertDialog;

    .line 101
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 66
    if-eqz p1, :cond_0

    const-string v0, "resetDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/applications/ResetAppsHelper;->kg()V

    .line 69
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->Hu:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->Hu:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->Hu:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->Hu:Landroid/app/AlertDialog;

    .line 82
    :cond_0
    return-void
.end method
