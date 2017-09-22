.class Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;
.super Lcom/android/settings/deviceinfo/MigrateEstimateTask;
.source "StorageWizardMigrateConfirm.java"


# instance fields
.field final synthetic XE:Ljava/lang/String;

.field final synthetic XF:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->XF:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->XE:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->XF:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    const v1, 0x7f0c0490

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->XE:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->b(I[Ljava/lang/String;)V

    .line 62
    return-void
.end method
