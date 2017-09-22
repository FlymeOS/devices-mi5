.class Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;
.super Ljava/lang/Object;
.source "PrivateVolumeFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic VV:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;->VV:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;->VV:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;->VV:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->a(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "format_private"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    const-string v1, "forget_uuid"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;->VV:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->b(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;->VV:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->startActivity(Landroid/content/Intent;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;->VV:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 73
    return-void
.end method
