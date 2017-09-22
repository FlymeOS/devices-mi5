.class public Lcom/android/settings/applications/PermissionInfoActivity;
.super Lmiui/preference/PreferenceActivity;
.source "PermissionInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 27
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 29
    const-string v1, "extra_package_application"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 30
    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoActivity;->finish()V

    .line 48
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoActivity;->getActionBar()Lmiui/app/ActionBar;

    .line 36
    const-class v1, Lcom/android/settings/applications/PermissionInfoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 38
    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string v4, "extra_package_application"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    invoke-static {p0, v2, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 45
    :goto_1
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 46
    const v3, 0x1020002

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 47
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
