.class Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$2;
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
    .line 888
    iput-object p1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$2;->Jv:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$2;->Jv:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$2;->Jv:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/o;

    move-result-object v1

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$2;->Jv:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v2

    iget v2, v2, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Ljava/lang/String;I)V

    .line 892
    return-void
.end method
