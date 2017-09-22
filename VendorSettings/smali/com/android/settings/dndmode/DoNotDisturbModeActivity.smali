.class public Lcom/android/vendorsettings/dndmode/DoNotDisturbModeActivity;
.super Lmiui/app/Activity;
.source "DoNotDisturbModeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 13
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f04006c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/dndmode/DoNotDisturbModeActivity;->setContentView(I)V

    .line 16
    if-nez p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/DoNotDisturbModeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1300df

    new-instance v2, Lcom/android/vendorsettings/dndmode/k;

    invoke-direct {v2}, Lcom/android/vendorsettings/dndmode/k;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 20
    :cond_0
    return-void
.end method
