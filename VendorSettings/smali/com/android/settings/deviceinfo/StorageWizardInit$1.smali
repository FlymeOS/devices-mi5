.class Lcom/android/settings/deviceinfo/StorageWizardInit$1;
.super Ljava/lang/Object;
.source "StorageWizardInit.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic Xz:Lcom/android/settings/deviceinfo/StorageWizardInit;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardInit;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->Xz:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    if-eqz p2, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->Xz:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->a(Lcom/android/settings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->Xz:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->b(Lcom/android/settings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->Xz:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->aJ(Z)V

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->Xz:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    :cond_1
    return-void

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->Xz:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->b(Lcom/android/settings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->Xz:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->a(Lcom/android/settings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->Xz:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/StorageWizardInit;->aJ(Z)V

    goto :goto_0
.end method
