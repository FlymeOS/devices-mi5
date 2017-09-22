.class public Lcom/android/vendorsettings/HeadsetCalibrateActivity;
.super Lmiui/app/Activity;
.source "HeadsetCalibrateActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/vendorsettings/HeadsetCalibrateActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 39
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/vendorsettings/HeadsetCalibrateFragment;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lcom/android/vendorsettings/BaseFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/BaseFragment;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 17
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/HeadsetCalibrateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 19
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    const v0, 0x7f0c006b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    invoke-virtual {p0}, Lcom/android/vendorsettings/HeadsetCalibrateActivity;->finish()V

    .line 34
    :goto_0
    return-void

    .line 24
    :cond_0
    const-class v0, Lcom/android/vendorsettings/HeadsetCalibrateFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/android/vendorsettings/HeadsetCalibrateActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 26
    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v1, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 31
    :cond_1
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 32
    const v3, 0x1020002

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 33
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/vendorsettings/HeadsetCalibrateActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 52
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/vendorsettings/HeadsetCalibrateFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/vendorsettings/HeadsetCalibrateFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/vendorsettings/HeadsetCalibrateFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/vendorsettings/HeadsetCalibrateActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 63
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/vendorsettings/HeadsetCalibrateFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/vendorsettings/HeadsetCalibrateFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/vendorsettings/HeadsetCalibrateFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
