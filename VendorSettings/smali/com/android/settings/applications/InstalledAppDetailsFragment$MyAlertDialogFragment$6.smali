.class Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$6;
.super Ljava/lang/Object;
.source "InstalledAppDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Jv:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V
    .locals 0

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$6;->Jv:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 955
    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;

    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$6;->Jv:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$6;->Jv:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/o;

    move-result-object v2

    iget-object v2, v2, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 958
    return-void
.end method
