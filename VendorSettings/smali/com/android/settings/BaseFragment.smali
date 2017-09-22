.class public Lcom/android/vendorsettings/BaseFragment;
.super Lmiui/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/android/vendorsettings/cs;
.implements Lcom/android/vendorsettings/fY;


# instance fields
.field private cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    return-void
.end method

.method private Z()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 57
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 59
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public Y()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Fragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lmiui/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 7

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v5, p1

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/vendorsettings/fy;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/vendorsettings/MiuiSettings;

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lmiui/R$style;->Theme_Light_Settings:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/BaseFragment;->setThemeRes(I)V

    .line 51
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/vendorsettings/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/vendorsettings/BaseFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/vendorsettings/BaseFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/BaseFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 175
    :cond_0
    invoke-super {p0}, Lmiui/app/Fragment;->onDetach()V

    .line 176
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/vendorsettings/fy;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/vendorsettings/BaseFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 101
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->finish()V

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lmiui/app/Fragment;->onStart()V

    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseFragment;->Z()V

    .line 89
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lmiui/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method protected setResult(I)V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 160
    return-void
.end method

.method protected showDialog(I)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/vendorsettings/BaseFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "BaseFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_1
    new-instance v0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/vendorsettings/cs;I)V

    iput-object v0, p0, Lcom/android/vendorsettings/BaseFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 188
    iget-object v0, p0, Lcom/android/vendorsettings/BaseFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/vendorsettings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
