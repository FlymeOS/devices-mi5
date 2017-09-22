.class public Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateProgress.java"


# instance fields
.field private XG:I

.field private final mCallback:Landroid/content/pm/PackageManager$MoveCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->XG:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->Vq:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->finish()V

    .line 61
    :goto_0
    return-void

    .line 47
    :cond_0
    const v0, 0x7f040165

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.MOVE_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->XG:I

    .line 51
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->Vi:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->aJ(Z)V

    .line 53
    const v1, 0x7f0c0492

    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->a(I[Ljava/lang/String;)V

    .line 54
    const v1, 0x7f0c0493

    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->b(I[Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->XG:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->XG:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v2

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    goto :goto_0
.end method
