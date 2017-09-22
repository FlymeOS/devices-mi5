.class public Lcom/android/settings/ChildrenModeActivity;
.super Landroid/app/Activity;
.source "ChildrenModeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeActivity;->finish()V

    .line 22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/android/settings/ChildrenModeSettings;

    invoke-direct {v1}, Lcom/android/settings/ChildrenModeSettings;-><init>()V

    .line 14
    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 15
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 16
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 17
    return-void
.end method
