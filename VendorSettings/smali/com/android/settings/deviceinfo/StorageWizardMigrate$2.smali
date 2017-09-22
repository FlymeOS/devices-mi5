.class Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;
.super Ljava/lang/Object;
.source "StorageWizardMigrate.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic XD:Lcom/android/settings/deviceinfo/StorageWizardMigrate;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;->XD:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    if-eqz p2, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;->XD:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->a(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;->XD:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->b(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 76
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;->XD:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 78
    :cond_1
    return-void

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;->XD:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->b(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;->XD:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->a(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
