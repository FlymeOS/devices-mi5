.class public Lcom/android/vendorsettings/applications/ResolverSettingsActivity;
.super Lmiui/app/Activity;
.source "ResolverSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 16
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ResolverSettingsActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    const v1, 0x7f0c0ff6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 21
    :cond_0
    const-class v0, Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ResolverSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 23
    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v1, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 28
    :cond_1
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 29
    const v3, 0x1020002

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 30
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 31
    return-void
.end method
