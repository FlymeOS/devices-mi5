.class Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;
.super Ljava/lang/Object;
.source "StorageWizardFormatProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Xv:Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;->Xv:Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;->Xv:Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress;

    .line 185
    invoke-static {v0}, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress;->b(Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatProgress;)V

    .line 186
    return-void
.end method
