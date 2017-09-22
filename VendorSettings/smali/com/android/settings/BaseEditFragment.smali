.class public Lcom/android/vendorsettings/BaseEditFragment;
.super Lcom/android/vendorsettings/BaseFragment;
.source "BaseEditFragment.java"


# instance fields
.field private cm:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseFragment;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/BaseEditFragment;->cm:Z

    return-void
.end method


# virtual methods
.method public X()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/BaseEditFragment;->g(Z)V

    .line 78
    return-void
.end method

.method public Y()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    const v2, 0x7f0c0f34

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 116
    const v2, 0x104000a

    new-instance v3, Lcom/android/vendorsettings/ab;

    invoke-direct {v3, p0}, Lcom/android/vendorsettings/ab;-><init>(Lcom/android/vendorsettings/BaseEditFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 125
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/vendorsettings/MiuiSettings;

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/MiuiSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiSettings;->fX()V

    :cond_1
    move v0, v1

    .line 132
    goto :goto_0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 81
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/BaseEditFragment;->cm:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    .line 83
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->a(ILandroid/os/Bundle;)V

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->finish()V

    .line 92
    return-void

    .line 86
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public g(Z)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/BaseEditFragment;->b(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, ""

    return-object v0
.end method

.method public h(Z)V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    :cond_0
    iput-boolean p1, p0, Lcom/android/vendorsettings/BaseEditFragment;->cm:Z

    .line 109
    return-void
.end method

.method public isChanged()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->finish()V

    .line 96
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/16 v0, 0x10

    .line 29
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onStart()V

    .line 31
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    .line 32
    if-nez v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {v1, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 36
    sget v0, Lmiui/R$layout;->edit_mode_title:I

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 38
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 39
    const v0, 0x1020016

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v0, 0x1020019

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 42
    new-instance v3, Lcom/android/vendorsettings/Z;

    invoke-direct {v3, p0}, Lcom/android/vendorsettings/Z;-><init>(Lcom/android/vendorsettings/BaseEditFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x102001a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    const v2, 0x104000a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    new-instance v2, Lcom/android/vendorsettings/aa;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/aa;-><init>(Lcom/android/vendorsettings/BaseEditFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseEditFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {p0}, Lcom/android/vendorsettings/fy;->c(Landroid/app/Fragment;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/vendorsettings/fy;->d(Landroid/app/Fragment;)V

    .line 65
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onStop()V

    .line 66
    return-void
.end method
