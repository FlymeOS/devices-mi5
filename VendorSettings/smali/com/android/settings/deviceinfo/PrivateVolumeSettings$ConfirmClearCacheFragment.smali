.class public Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;
.super Landroid/app/DialogFragment;
.source "PrivateVolumeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 865
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static e(Landroid/app/Fragment;)V
    .locals 3

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 869
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;

    invoke-direct {v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;-><init>()V

    .line 870
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 871
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmClearCache"

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 878
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 879
    const v2, 0x7f0c0442

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 880
    const v2, 0x7f0c0443

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 882
    const v2, 0x104000a

    new-instance v3, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;-><init>(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 895
    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 897
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
