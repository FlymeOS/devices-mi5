.class Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;
.super Landroid/os/storage/StorageEventListener;
.source "PublicVolumeSettings.java"


# instance fields
.field final synthetic WC:Lcom/android/settings/deviceinfo/PublicVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->WC:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->WC:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->WC:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->WC:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->WC:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->b(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a(Lcom/android/settings/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 236
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->WC:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->update()V

    .line 238
    :cond_0
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->WC:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->WC:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a(Lcom/android/settings/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 228
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->WC:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->update()V

    .line 230
    :cond_0
    return-void
.end method
