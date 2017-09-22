.class public Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;
.super Lcom/android/vendorsettings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveProgress.java"


# instance fields
.field private XG:I

.field private final mCallback:Landroid/content/pm/PackageManager$MoveCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardBase;-><init>()V

    .line 66
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress$1;-><init>(Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->XG:I

    return v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->bA(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private bA(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const v0, 0x7f0c05ca

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_1
    const v0, 0x7f0c05cb

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_2
    const v0, 0x7f0c05cc

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_3
    const v0, 0x7f0c05cd

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_4
    const v0, 0x7f0c05ce

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/android/vendorsettings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->Vq:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->finish()V

    .line 58
    :goto_0
    return-void

    .line 43
    :cond_0
    const v0, 0x7f040165

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.MOVE_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->XG:I

    .line 46
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->Vi:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->aJ(Z)V

    .line 50
    const v2, 0x7f0c0499

    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->a(I[Ljava/lang/String;)V

    .line 51
    const v2, 0x7f0c049a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->b(I[Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->XG:I

    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->XG:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v2

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardBase;->onDestroy()V

    .line 63
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V

    .line 64
    return-void
.end method
