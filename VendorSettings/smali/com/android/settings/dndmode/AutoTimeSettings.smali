.class public Lcom/android/settings/dndmode/AutoTimeSettings;
.super Lmiui/app/Activity;
.source "AutoTimeSettings.java"


# instance fields
.field private aam:Lcom/android/settings/dndmode/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    if-eqz p3, :cond_0

    .line 39
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/settings/dndmode/AutoTimeSettings;->aam:Lcom/android/settings/dndmode/h;

    invoke-virtual {v1, v0}, Lcom/android/settings/dndmode/h;->aX(Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f04006c

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/AutoTimeSettings;->setContentView(I)V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Lcom/android/settings/dndmode/h;

    invoke-direct {v0}, Lcom/android/settings/dndmode/h;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettings;->aam:Lcom/android/settings/dndmode/h;

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/dndmode/AutoTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1300df

    iget-object v2, p0, Lcom/android/settings/dndmode/AutoTimeSettings;->aam:Lcom/android/settings/dndmode/h;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dndmode/AutoTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "autoTimeSettingsFragment"

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/h;

    iput-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettings;->aam:Lcom/android/settings/dndmode/h;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/settings/dndmode/AutoTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "autoTimeSettingsFragment"

    iget-object v2, p0, Lcom/android/settings/dndmode/AutoTimeSettings;->aam:Lcom/android/settings/dndmode/h;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 22
    invoke-super {p0, p1}, Lmiui/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method
