.class Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$2;
.super Landroid/os/storage/StorageEventListener;
.source "PrivateVolumeSettings.java"


# instance fields
.field final synthetic Wm:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$2;->Wm:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 3

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$2;->Wm:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$2;->Wm:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$2;->Wm:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->c(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$2;->Wm:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->b(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 741
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$2;->Wm:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->update()V

    .line 743
    :cond_0
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 1

    .prologue
    .line 730
    invoke-static {p1}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->b(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$2;->Wm:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->update()V

    .line 735
    :cond_0
    return-void
.end method
