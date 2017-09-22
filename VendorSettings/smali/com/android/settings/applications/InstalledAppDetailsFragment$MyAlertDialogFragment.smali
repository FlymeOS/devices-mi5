.class public Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "InstalledAppDetailsFragment.java"


# instance fields
.field private Ju:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 827
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)Z
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->Ju:Z

    return v0
.end method

.method public static h(II)Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;
    .locals 3

    .prologue
    .line 830
    new-instance v0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;-><init>()V

    .line 831
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 832
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 833
    const-string v2, "moveError"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 834
    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 835
    return-object v0
.end method


# virtual methods
.method kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;
    .locals 1

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 845
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 846
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 847
    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->e(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->e(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 851
    :cond_0
    return-void

    .line 848
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const v7, 0x7f0c05b2

    const v6, 0x1010355

    const v5, 0x7f0c05b1

    .line 865
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 866
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "moveError"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 867
    packed-switch v0, :pswitch_data_0

    .line 1025
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 869
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c05af

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c05b0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$1;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1013
    :goto_0
    return-object v0

    .line 883
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c05b6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c05b7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$2;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 897
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c05b3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c05b3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$3;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 910
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c05b8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c05b9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$4;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 924
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c05cf

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c05d0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$5;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 938
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0c05d2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 940
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c05d1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 947
    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c05d5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c05d7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$6;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$6;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 965
    :pswitch_8
    const-string v0, ""

    .line 967
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/o;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 968
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/o;

    move-result-object v0

    iget-object v0, v0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    .line 969
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->e(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->Ju:Z

    .line 976
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->Ju:Z

    if-eqz v1, :cond_2

    .line 977
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0f1e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 978
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0f20

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 984
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$8;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$8;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$7;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$7;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 970
    :cond_1
    if-eqz p1, :cond_0

    .line 971
    const-string v0, "float_window_label"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    const-string v1, "float_window_enable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->Ju:Z

    .line 973
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->e(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->Ju:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 974
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Z)Z

    goto :goto_1

    .line 980
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0f1f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 981
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0f21

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1005
    :pswitch_9
    const v1, 0x7f0c11a0

    .line 1006
    const v0, 0x7f0c11a1

    .line 1007
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v2

    iget v2, v2, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1008
    const v1, 0x7f0c119e

    .line 1009
    const v0, 0x7f0c119f

    .line 1013
    :cond_3
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$9;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$9;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1010
    :cond_4
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/o;

    move-result-object v3

    iget-object v3, v3, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->b(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1011
    const v0, 0x7f0c11a2

    goto :goto_3

    .line 867
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 858
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 859
    const-string v0, "float_window_label"

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->kI()Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/o;

    move-result-object v1

    iget-object v1, v1, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v0, "float_window_enable"

    iget-boolean v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->Ju:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 861
    return-void
.end method
