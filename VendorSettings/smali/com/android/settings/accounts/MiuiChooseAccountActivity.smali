.class public Lcom/android/settings/accounts/MiuiChooseAccountActivity;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiChooseAccountActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private jl()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    const-string v2, "account_setup_wizard"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method private jr()V
    .locals 3

    .prologue
    const v2, 0x1020002

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiChooseAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/ChooseAccountFragment;

    .line 32
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-direct {v0}, Lcom/android/settings/accounts/ChooseAccountFragment;-><init>()V

    .line 34
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiChooseAccountActivity;->jl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiChooseAccountActivity;->finish()V

    .line 52
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiChooseAccountActivity;->jl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const v0, 0x7f0d00ab

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiChooseAccountActivity;->setTheme(I)V

    .line 24
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiChooseAccountActivity;->jr()V

    .line 26
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiChooseAccountActivity;->onBackPressed()V

    .line 57
    const/4 v0, 0x1

    return v0
.end method
