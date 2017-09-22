.class public Lcom/android/settings/deviceinfo/StorageWizardInit;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardInit.java"


# instance fields
.field private WB:Z

.field private Xw:Landroid/widget/RadioButton;

.field private Xx:Landroid/widget/RadioButton;

.field private final Xy:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    .line 83
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardInit$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardInit;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xy:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xw:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xx:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public hY()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 101
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xw:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Vq:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Vi:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/os/storage/StorageManager;->setVolumeInited(Ljava/lang/String;Z)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->startActivity(Landroid/content/Intent;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "format_private"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xx:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v1, "format_private"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Vv:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const v0, 0x7f040162

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setContentView(I)V

    .line 46
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->WB:Z

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->aJ(Z)V

    .line 50
    const v0, 0x7f0c047f

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/deviceinfo/StorageWizardInit;->a(I[Ljava/lang/String;)V

    .line 52
    const v0, 0x7f1302c7

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xw:Landroid/widget/RadioButton;

    .line 53
    const v0, 0x7f1302c9

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xx:Landroid/widget/RadioButton;

    .line 55
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xw:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xy:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xx:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xy:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    const v0, 0x7f1302c8

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xw:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xw:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getCompoundPaddingRight()I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    const v0, 0x7f1302ca

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xw:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xw:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getCompoundPaddingRight()I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xw:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->hY()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    .line 78
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->WB:Z

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->Xx:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 46
    goto/16 :goto_1
.end method
