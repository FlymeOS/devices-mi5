.class Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageWizardMigrateProgress.java"


# instance fields
.field final synthetic XH:Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress$1;->XH:Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(IIJ)V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress$1;->XH:Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-static {v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;->a(Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress$1;->XH:Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;

    .line 69
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    const-string v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/16 v1, -0x64

    if-ne p2, v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress$1;->XH:Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;

    iget-object v1, v1, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;->Vv:Landroid/os/storage/DiskInfo;

    if-eqz v1, :cond_1

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.FINISH_WIZARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress$1;->XH:Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v2, v1}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/vendorsettings/deviceinfo/StorageWizardReady;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v0, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress$1;->XH:Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;

    iget-object v2, v2, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress$1;->XH:Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;->startActivity(Landroid/content/Intent;)V

    .line 87
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress$1;->XH:Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;->finishAffinity()V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress$1;->XH:Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;

    const v2, 0x7f0c05ca

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress$1;->XH:Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v0, p2}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateProgress;->by(I)V

    goto :goto_0
.end method
