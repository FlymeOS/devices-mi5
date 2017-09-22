.class public Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingsPreferenceFragment.java"


# instance fields
.field private Ae:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 537
    return-void
.end method

.method public constructor <init>(Lcom/android/vendorsettings/cs;I)V
    .locals 3

    .prologue
    .line 539
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 540
    iput p2, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->Ae:I

    .line 541
    instance-of v0, p1, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment argument must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    check-cast p1, Landroid/app/Fragment;

    iput-object p1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 546
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method


# virtual methods
.method public hW()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->Ae:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 594
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 595
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 598
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 568
    if-eqz p1, :cond_3

    .line 569
    const-string v0, "key_dialog_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->Ae:I

    .line 570
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 571
    const-string v0, "key_parent_fragment_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 572
    iget-object v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v1, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/vendorsettings/cs;

    if-nez v1, :cond_2

    .line 576
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must implement "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/android/vendorsettings/cs;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_3

    .line 586
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    invoke-static {v0, p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->a(Lcom/android/vendorsettings/SettingsPreferenceFragment;Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 589
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/vendorsettings/cs;

    iget v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->Ae:I

    invoke-interface {v0, v1}, Lcom/android/vendorsettings/cs;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 614
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 617
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->b(Lcom/android/vendorsettings/SettingsPreferenceFragment;)Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->a(Lcom/android/vendorsettings/SettingsPreferenceFragment;Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 623
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 602
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 603
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 606
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 550
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 551
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 552
    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->Ae:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 553
    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 559
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 561
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->hV()V

    .line 564
    :cond_0
    return-void
.end method
