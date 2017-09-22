.class public Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
.super Landroid/app/DialogFragment;
.source "StorageSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static b(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 374
    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v1, Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-direct {v1}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;-><init>()V

    .line 377
    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 378
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 379
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "volume_unmounted"

    invoke-virtual {v1, v0, v2}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 380
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 385
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 387
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 390
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    const v3, 0x7f0c046e

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 394
    const v3, 0x7f0c044f

    new-instance v4, Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;-><init>(Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    const v0, 0x7f0c01a6

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
