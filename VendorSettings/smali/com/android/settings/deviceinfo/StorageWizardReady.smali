.class public Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;
.super Lcom/android/vendorsettings/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method public hY()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->finishAffinity()V

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/android/vendorsettings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->Vv:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->finish()V

    .line 51
    :goto_0
    return-void

    .line 32
    :cond_0
    const v0, 0x7f040161

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->setContentView(I)V

    .line 34
    const v0, 0x7f0c0494

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->a(I[Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->bz(I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->bz(I)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 40
    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->aJ(Z)V

    .line 42
    const v0, 0x7f0c0495

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->b(I[Ljava/lang/String;)V

    .line 50
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c01aa

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 44
    :cond_2
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->aJ(Z)V

    .line 46
    const v0, 0x7f0c0496

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;->b(I[Ljava/lang/String;)V

    goto :goto_1
.end method
