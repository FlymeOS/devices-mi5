.class public Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;
.super Lcom/android/vendorsettings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveConfirm.java"


# instance fields
.field private XI:Landroid/content/pm/ApplicationInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method public hY()V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->XI:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I

    move-result v1

    .line 73
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v3, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->finishAffinity()V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/android/vendorsettings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->Vq:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    .line 65
    :goto_0
    return-void

    .line 43
    :cond_0
    const v0, 0x7f040161

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->setContentView(I)V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->XI:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->XI:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->XI:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->Vi:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->aJ(Z)V

    .line 61
    const v2, 0x7f0c0497

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->a(I[Ljava/lang/String;)V

    .line 62
    const v2, 0x7f0c0498

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->b(I[Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c05c6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    goto :goto_0
.end method
