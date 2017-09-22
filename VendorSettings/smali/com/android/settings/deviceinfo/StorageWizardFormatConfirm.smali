.class public Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatConfirm.java"


# instance fields
.field private Xq:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method public hY()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "format_private"

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->Xq:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const-string v1, "forget_uuid"

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "forget_uuid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->finishAffinity()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->Vv:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->finish()V

    .line 55
    :goto_0
    return-void

    .line 38
    :cond_0
    const v0, 0x7f040161

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "format_private"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->Xq:Z

    .line 41
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->Xq:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->aJ(Z)V

    .line 43
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->Xq:Z

    if-eqz v0, :cond_1

    .line 44
    const v0, 0x7f0c0484

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->a(I[Ljava/lang/String;)V

    .line 45
    const v0, 0x7f0c0485

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->b(I[Ljava/lang/String;)V

    .line 53
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c0488

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0e009e

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 48
    :cond_1
    const v0, 0x7f0c0486

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->a(I[Ljava/lang/String;)V

    .line 49
    const v0, 0x7f0c0487

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->b(I[Ljava/lang/String;)V

    goto :goto_1
.end method
