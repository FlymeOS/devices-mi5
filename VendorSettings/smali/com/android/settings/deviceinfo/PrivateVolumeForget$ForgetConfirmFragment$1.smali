.class Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeForget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic VS:Landroid/os/storage/StorageManager;

.field final synthetic VT:Ljava/lang/String;

.field final synthetic VU:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->VU:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

    iput-object p2, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->VS:Landroid/os/storage/StorageManager;

    iput-object p3, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->VT:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->VS:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->VT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->VU:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 106
    return-void
.end method
