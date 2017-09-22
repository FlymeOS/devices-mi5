.class public Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;
.super Landroid/app/DialogFragment;
.source "StorageWizardFormatProgress.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 171
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress;

    .line 175
    invoke-static {v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress;->c(Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress;->d(Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const v3, 0x7f0c049c

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    const v0, 0x104000a

    new-instance v2, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;-><init>(Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
