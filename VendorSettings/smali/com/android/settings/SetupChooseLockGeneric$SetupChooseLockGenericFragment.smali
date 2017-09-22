.class public Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
.super Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.source "SetupChooseLockGeneric.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;IIIZJ)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 137
    invoke-static/range {p1 .. p7}, Lcom/android/settings/SetupChooseLockPassword;->b(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/hH;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 140
    return-object v0
.end method

.method protected a(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 146
    invoke-static/range {p1 .. p6}, Lcom/android/settings/SetupChooseLockPassword;->b(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/hH;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 149
    return-object v0
.end method

.method protected a(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 182
    invoke-static {p1, p2, p3}, Lcom/android/settings/SetupEncryptionInterstitial;->b(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/hH;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 185
    return-object v0
.end method

.method protected a(Landroid/content/Context;ZJ)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 164
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/SetupChooseLockPattern;->b(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/hH;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 167
    return-object v0
.end method

.method protected a(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 173
    invoke-static {p1, p2, p3}, Lcom/android/settings/SetupChooseLockPattern;->b(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/hH;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 176
    return-object v0
.end method

.method protected c(IZ)V
    .locals 2

    .prologue
    .line 118
    const/high16 v0, 0x10000

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 120
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->d(IZ)V

    .line 121
    return-void
.end method

.method public hX()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 194
    :cond_0
    return-void
.end method

.method public hY()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 89
    if-eqz p2, :cond_1

    .line 90
    if-nez p3, :cond_0

    .line 91
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 95
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 96
    const-string v1, ":settings:password_quality"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    :cond_1
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    const v0, 0x7f040140

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardListLayout;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/SetupWizardListLayout;->m(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->qh()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->a(Lcom/android/setupwizardlib/view/c;)V

    .line 78
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hH;->a(Landroid/app/Activity;)V

    .line 85
    return-void
.end method
